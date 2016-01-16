

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
  
  
  
}