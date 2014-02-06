library(affy)

setwd("~/BackgroundExperimentYeast/")
Data <- ReadAffy(celfile.path = "extdata")
save(Data, file="BackgroundExperimentYeast/data/background.rda")
