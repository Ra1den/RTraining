

pollutantmean <- function(directory="./specdata/", pollutant="aa", id = 1:332){

#Get file listing
files <- dir(directory)

for(file in files){
  print(paste(directory, file, sep=""))
}

my_file <- read.csv("./specdata/312.csv")

all_data <- data.frame()
my_file <- read.csv("./specdata/312.csv")
 all_data <- rbind(all_data, my_file)
 print(head(all_data))
}