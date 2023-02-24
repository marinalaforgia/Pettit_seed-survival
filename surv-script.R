library(ggplot2)
library(tidyverse)

getwd("")

traits <- read.csv("/users/Marina/Documents/Dropbox/Mega_Competition/Data/Traits/20230202_Seed-Traits_cleaning.csv")

surv <- read.csv("Seed-bag-survival.csv")[-c(111:150),]


ggplot(surv, aes(x = Species, y = n.viable)) +
  geom_boxplot() +
  theme_bw()

surv <- merge(surv, traits, by = "Species", all.y = F, all.x = T)
  
