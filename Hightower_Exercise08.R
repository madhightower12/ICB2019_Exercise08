# Exercise 08 Script

# Part One:
# Create graph of cumulative score vs. time played for both teams

# Generate score dataframe
UWvMSU=read.table("~/Desktop/ICB2019_Exercise08/UWvMSU_1-22-13.txt",sep='\t',header=T,stringsAsFactors = F)

# Isolate data for each team
MSU<-UWvMSU[UWvMSU$team=="MSU",]
uw<-UWvMSU[UWvMSU$team=="UW",]

# Get cumulative score sum for each team
uw[,3]<-cumsum(uw[,3])
MSU[,3]<-cumsum(MSU[,3])

# Plot data
# Time vs score
# Add axis labels
plot(x=MSU[,1],y=MSU[,3],type='l',xlab="Time",ylab="Score")+lines(x=uw[,1],y=uw[,3])

#color code lines
plot(x=MSU[,1],y=MSU[,3],type='l',xlab="Time",ylab="Score",col="green")
+lines(x=uw[,1],y=uw[,3],col="red")
# Part Two:

#set up prompt
readinteger <- function()
{ 
  n <- readline(prompt="Enter an integer: ")
  if(!grepl("^[0-9]+$",n))
  {
    return(readinteger())
  }
  return(as.integer(n))
}

# Generate random number and initialize guess

number<-sample(1:100,1)
guess <- -1

#use while loop and if/else statements to generate output

while(guess != number)
{ 
  guess <- readinteger()
  if (guess == number){
    cat("Correct")
  }else if (guess < number){
    cat("Higher")
  }else if(guess > number){
    cat("Lower")
  }
}
