library(ggplot2)
library(tidyverse)
mh <- read.csv(file = "Cleaned_dataset.csv", as.is=TRUE, sep = ",", header = TRUE)
view(mh)
mh$Age_Group

mh$adult_child <- factor(mh$Age_Group, labels =c("Adult","Child"))



## Summarizing the number of patients in each age group in each county
ggplot(data=mh, aes(x=County_Label , fill = Age_Group))+geom_bar()+coord_flip()+theme(axis.text.y = element_text( size = 7))


