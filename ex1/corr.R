
corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  allfiles <-list.files(path = directory, pattern = "*.csv")
  filelist <- allfiles
  data <- data.frame()
  filelistlength <- length(filelist)
  
  for( i in 1:filelistlength){
    data <- rbind(data, read.csv(paste(directory, "/" ,filelist[i], sep = "")))
  }
  completecases <- complete.cases(data)
  
  resultset <- as.data.frame(data[completecases,])
  
  vec <- c()
  
    
  for(i in unique(myData$ID)){
  stationset <- subset(resultset, ID==i)

  if (nrow(stationset)>threshold){
    
    xVector <- stationset$nitrate
    yVector <- stationset$sulfate
  
  corr <- cor(x = xVector, y = yVector)
  vec <- c(vec, corr)
  
  
  }
  #print(vec)
  
  }
  if(length(vec)==0)
    vec <- c(vec, 0)
  
  
  vec
  
}

