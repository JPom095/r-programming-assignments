#Assignment 3

#Create Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

#Combine into dataframe
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

#Inspect dataframe
str(df_polls)
head(df_polls)

#Run statistics functions
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)
median(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[,c("ABC_poll", "CBS_poll")]) #???
range(df_polls$ABC_poll)
range(df_polls$CBS_poll)

#Add a column that shows the difference between pollers
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

#Visualization of Polling Data
#Fill was used because I cannot remember the correct way to add bars next to each other.
library(ggplot2)
poll_vis <- ggplot(df_polls, aes(x = Name, y = ABC_poll, fill = CBS_poll)) +
  geom_col() +
  labs(
    title = "ABC and CBS Poll Results",
    x = "Candidate",
    y = "Votes"
  )
poll_vis

