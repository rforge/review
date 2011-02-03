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
	if(file.exists(as))stop(as,'already exists')
	if(zip & file.exists(zipname))stop(zipname,'already exists')
	tmpdir <- paste(sep='',as,'ea')
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
		!is.na(txt) & 
		txt 
	]
	file.rename(change,paste(sep='',change,'.txt'))
	if(zip)system(paste('zip -r',zipname,tmpdir))
	else file.copy(from=tmpdir,to=as,recursive=TRUE)
	unlink(tmpdir)
}
	
	
	