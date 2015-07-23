complete <- function(directory, id = 1:332){
  
  allfiles <-list.files(path = directory, pattern = "*.csv")
  filelist <- allfiles[id]
  data <- data.frame()
  filelistlength <- length(filelist)
  
  print(filelistlength )
  
  for( i in 1:filelistlength){
    data <- rbind(data, read.csv(paste(directory, "/" ,filelist[i], sep = "")))
  }

  
}
