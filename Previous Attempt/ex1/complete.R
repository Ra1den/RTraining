complete <- function(directory, id = 1:332){
  
  
  producesummary <- function(df){
    
    indata <- df
    summarytable <- data.frame()
    
    #logical vector telling us what is complete or not.
    completecases <- complete.cases(df)
    
    resultset <- as.data.frame(table(indata[completecases,]$ID))
    colnames(resultset) <- c("id", "nobs")
    resultset
  }
  
  
  #Load data
  allfiles <-list.files(path = directory, pattern = "*.csv")
  filelist <- allfiles[id]
  data <- data.frame()
  filelistlength <- length(filelist)
  
  print(filelistlength )
  
  for( i in 1:filelistlength){
    data <- rbind(data, read.csv(paste(directory, "/" ,filelist[i], sep = "")))
  }

  producesummary(data)
}