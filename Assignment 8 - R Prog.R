
# choose file interactively
student6 <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)

#mean by gender
library(plyr)
gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

#grouped mean in new text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

#Filter for oly names contaiing "i"
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

#extract the "i" names
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

#export file with "i" names
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
