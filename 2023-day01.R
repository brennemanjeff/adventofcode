library(tidyverse)
library(readr)

## Day 1 Part 1
input01 <- as.data.frame(read.table("input-01.txt", header=F))

results01 <- rep(NA, nrow(input01))

for(i in 1:nrow(input01)){
  x <- as.numeric(gsub("\\D", "", input01$V1[i]))
  results01[i] <- as.numeric(paste0(substr(x, 1, 1), substr(x, nchar(x), nchar(x))))
}

sum(results01)

## Day 1 Part 2
words <- c("oneight",
           "twone",
           "eightwo",
           "one",
           "two",
           "three",
           "four",
           "five",
           "six",
           "seven",
           "eight",
           "nine",
           "zero")

numbers <- c(18,21,82,1,2,3,4,5,6,7,8,9,0)

strings01 <- data.frame(words, numbers)

results01b <- rep(NA, nrow(input01))

for(i in 1:nrow(input01)){
  x <- input01$V1[i]
  for(j in 1:nrow(strings01)){
    x <- gsub(strings01$words[j], strings01$numbers[j], x)
  }
  y <- as.numeric(gsub("\\D", "", x))
  results01b[i] <- as.numeric(paste0(substr(y, 1, 1), substr(y, nchar(y), nchar(y))))
}

sum(results01b)
