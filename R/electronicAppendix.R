electronicAppendix <- function(
	x,
	as,
	pattern=NULL,
	recursive=TRUE,
	ignore.case=TRUE,
	zip=FALSE,
	...
){
	zipname <- paste(sep='',as,'.zip')
	if(!file.exists(x))stop('cannot find',file)
	if(!zip & file.exists(as))stop(as,'already exists')#only tolerated if zip is true
	if(zip & file.exists(zipname))stop(zipname,'already exists')
	identity <- absDir(x)==absDir(as) #only a problem if zip is true
	tmpdir <- paste(sep='',as,'_tmp')
	if(file.exists(tmpdir))unlink(tmpdir,recursive=TRUE)
	files <- dir(
		path=x,
		pattern=pattern,
		recursive=recursive,
		ignore.case=ignore.case
	)
	system(paste('svn export',x,tmpdir))
	local <- file.path(x,files)
	foreign <- file.path(tmpdir,files)
	txt <- svnIsText(local)
	change <- foreign[ 
		file.exists(foreign) & 
		!is.na(txt) & #maybe redundant, as files not subversioned (will have na txt but) will not be exported.
		txt 
	]
	append.txt <- function(x)file.rename(x,paste(sep='',x,'.txt'))
	sapply(change,append.txt)
	setaside <- paste(sep='',x,'_EA_bak')
	if(identity)file.rename(from=x,to=setaside)
	file.rename(from=tmpdir,to=as)
	tryCatch(
		if(zip){
			system(paste('zip -r',zipname,as))
			unlink(as,recursive=TRUE)
		},
		error=function(e)stop('cannot zip or unlink',as,call.=FALSE),
		finally=if(identity)file.rename(from=setaside,to=x)
	)
}
	
	
	