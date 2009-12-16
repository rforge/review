#Test and tutorial for review package.

#Welcome to the 'review' package!
#Try this on a 'Nix system that has svn installed.
#First, we navigate to root, blow away "drug" dir if exists,
# and then recreate it.
setwd("/")
system("rm -rf /drug")
system("svnadmin create drug")

#Now we go to your project directory, and check out 'drug'.
setwd("~/project")
system("rm -rf drug")
system("svn co file:///drug")
#Checked out revision 0.
setwd("drug")

#Next we populate the directory with experimental files, etc.
dir.create("data")
dir.create("script")
writeLines("0","data/drug.csv")
writeLines("#master","script/master.R")
writeLines("#assemble","script/assemble.R")
system("svn add *")
#A         data
#A         data/drug.csv
#A         script
#A         script/assemble.R
#A         script/master.R

system("svn ci -m 'draft project'")
#Adding         data
#Adding         data/drug.csv
#Adding         script
#Adding         script/assemble.R
#Adding         script/master.R
#Transmitting file data ...
#Committed revision 1.

#Then we'll load the review package.
library(review)

#Let's create a review log.  This must happen first, and 
# if you're not in the top level directory, you should pass
# its path as an argument.
log.create()

#Where is this log rooted, and what is its name?
log.root()#"/Users/timb/project/drug"
log.name()#"/Users/timb/project/drug/QClog.csv"

#We check in the log....
system("svn add QClog.csv")
#A         QClog.csv

system("svn ci -m 'new' QClog.csv")
#Adding         QClog.csv
#Transmitting file data .
#Committed revision 2.

#from the perspective of the root directory, we can see 
# all the files that could be reviewed.
dir(recursive=TRUE)
#[1] "QClog.csv"         "data/drug.csv"     "script/assemble.R"
#[4] "script/master.R" 

#Navigate to the script directory.  The assign() function will find
# just those files, by default.
setwd("script")
dir()
log.assign()
log.read()
#               file revision            origin reviewer                    time
#1 script/assemble.R        0 script/assemble.R   anyone 2008-10-08 21:18:44 GMT
#2   script/master.R        0   script/master.R   anyone 2008-10-08 21:18:44 GMT

#If we revert the assignments, then read from disk, we see our 
# action was undone.  Note that review::revert is very different from
# svn::revert.
log.revert()
log.read()
# [1] file     revision origin   reviewer time    
# <0 rows> (or 0-length row.names)

#Now we assign a file; essentially we are claiming that the reviewer (default:anyone)
# accepts revision zero.
log.assign()
log.assignments()#character(0)
log.assignments(reviewer=NULL)
#[1] "script/assemble.R" "script/master.R"  

#Every file has an "origin": itself by default.  But since
# our data file was created by our assembly script, that is its origin.
#Origin no longer supported with version 2.0.
setwd("..")
log.assign(file="data/drug.csv",origin="script/assemble.R")
log.accept(file="script/master.R")
log.read()
#                file revision            origin reviewer                    time
# 1 script/assemble.R        0 script/assemble.R   anyone 2008-10-08 21:20:10 GMT
# 2   script/master.R        0   script/master.R   anyone 2008-10-08 21:20:10 GMT
# 3     data/drug.csv        0 script/assemble.R   anyone 2008-10-08 21:20:56 GMT
# 4   script/master.R        1   script/master.R     timb 2008-10-08 21:20:59 GMT

#Any version of a file can be accepted an arbitrary number of times.
#You can even change the origin using arguments to log.accept() (the most recent wins).
#We can summarize the log, to see just the latest record per file.
log.summary()
#               file revision            origin reviewer                    time                 changed
#3     data/drug.csv        0 script/assemble.R   anyone 2008-10-08 21:20:56 GMT 2008-10-08 21:18:42 GMT
#1 script/assemble.R        0 script/assemble.R   anyone 2008-10-08 21:20:10 GMT 2008-10-08 21:18:42 GMT
#4   script/master.R        1   script/master.R     timb 2008-10-08 21:20:59 GMT 2008-10-08 21:18:42 GMT

#Pending files have been assigned, but not accepted.  Or if accepted, their origins have changed since
#last acceptance of the most recent version.
#'time' is time of acceptance; 'changed' is time of last change to *origin* (usually but not always 'self').
log.pending()
#                file revision            origin reviewer                    time                 changed
# 3     data/drug.csv        0 script/assemble.R   anyone 2008-10-08 21:20:56 GMT 2008-10-08 21:18:42 GMT
# 1 script/assemble.R        0 script/assemble.R   anyone 2008-10-08 21:20:10 GMT 2008-10-08 21:18:42 GMT

#If we accept these files, they are no longer pending.
log.accept(file="script/assemble.R")
log.accept(file="data/drug.csv")
log.pending()
# [1] file     revision origin   reviewer time    
# <0 rows> (or 0-length row.names)

#Check them in.
system("svn ci -m 'qc complete'")
#Sending        QClog.csv
#Transmitting file data .
#Committed revision 3.

#Oh, my.  There's an error in the assembly script.  Let's fix it, and check it in.
writeLines("#reassemble","script/assemble.R")
system("svn ci -m 'change assembly'")
#Sending        script/assemble.R
#Transmitting file data .
#Committed revision 4.

system("svn up")
#At revision 4.

#Not only is assemble.R now pending, but so is the file it creates (by virtue of its origin).
log.pending()
#               file revision            origin reviewer                    time                 changed
#6     data/drug.csv        1 script/assemble.R     timb 2008-10-08 21:24:01 GMT 2008-10-08 21:24:55 GMT
#5 script/assemble.R        1 script/assemble.R     timb 2008-10-08 21:23:55 GMT 2008-10-08 21:24:55 GMT

#Even if we accept the new version of assemble.R, the dataset is still pending, since it was last 
# accepted before assemble.R changed (even though the change did not affect it).
log.accept(file="script/assemble.R")
log.pending()
#            file revision            origin reviewer                    time                 changed
# 6 data/drug.csv        1 script/assemble.R     timb 2008-10-08 21:24:01 GMT 2008-10-08 21:24:55 GMT

#Finally, we accept the new version of drug.
log.accept(file="data/drug.csv")
log.pending()
# [1] file     revision origin   reviewer time     changed 
# <0 rows> (or 0-length row.names)
system("svn ci -m 'Done.'")
#Sending        QClog.csv
#Transmitting file data .
#Committed revision 5.

#Some tools exist to let you create logs manually.
gmt() #[1] "2008-10-08 21:46:59 GMT"
log.queue(directory="script", file=dir("script"))
#               file revision            origin reviewer                    time
#1 script/assemble.R        0 script/assemble.R   anyone 2008-10-08 22:54:36 GMT
#2   script/master.R        0   script/master.R   anyone 2008-10-08 22:54:36 GMT

#see also
?review