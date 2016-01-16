

pollutantmean <- function(directory="specdata", pollutant="sulfate", id = 1:332){

#Get file listing
files <- paste(file.path(directory, paste(formatC(id, width=3, flag="0"), ".csv",sep="")),sep="")
all_data <- data.frame()

#Load files
for(file in files){
  my_file <- read.csv(file)
  all_data <- rbind(all_data, my_file)
}

mean(all_data[,pollutant], na.rm = TRUE)

}

complete <- function(directory="specdata", id = 1:332){
  
  #Get file listing
  files <- paste(file.path(directory, paste(formatC(id, width=3, flag="0"), ".csv",sep="")),sep="")
  all_data <- data.frame()
  
  #Load files
  for(file in files){
    my_file <- read.csv(file)
    all_data <- rbind(all_data, my_file)
  }
  
  completecases <- complete.cases(all_data)
  resultset <- as.data.frame(table(all_data[completecases,]$ID))
  print(resultset)
  
  
}

corr <- function(directory="specdata", threshold = 0){
  id<-1:30
  #Get file listing
  files <- paste(file.path(directory, paste(formatC(id, width=3, flag="0"), ".csv",sep="")),sep="")
  all_data <- data.frame()
  
  #Load files
  for(file in files){
    my_file <- read.csv(file)
    all_data <- rbind(all_data, my_file)
  } 
  
  result <- cor(all_data$sulfate, all_data$nitrate)
  print(result)
}
  


gettestset <- function(directory="specdata", id = 1:332){
  
  #Get file listing
  files <- paste(file.path(directory, paste(formatC(id, width=3, flag="0"), ".csv",sep="")),sep="")
  all_data <- data.frame()
  
  #Load files
  for(file in files){
    my_file <- read.csv(file)
    all_data <- rbind(all_data, my_file)
  }
  
  all_data

}
