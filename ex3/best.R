best <- function(state, outcome){
    
    ##Read outcome data
    outcomeset <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    statelist <- unique(outcomeset$State)
    outcomelist <- c("heart attack", "pneumonia", "heart failure")
    
    ##Validate input
    if(!is.element(state, statelist))
        stop("invalid state")
    
    if(!is.element(outcome, outcomelist))
        stop("invalid outcome")

    ##Do work
    stateset <-  subset(outcomeset, State==state)
    
    if (outcome == "heart attack"){
        min <- min(stateset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
        minrow <-  subset(stateset, Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack==min)
        
    }
    if (outcome == "pneumonia"){
        min <- min(stateset$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
        minrow <-  subset(stateset, Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia==min)
        
    }
    if (outcome == "heart failure"){
        min <- min(stateset$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
        minrow <-  subset(stateset, Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure==min)
        
    }
    minrow$Hospital.Name
    #Need to return the name of element here
    
    }