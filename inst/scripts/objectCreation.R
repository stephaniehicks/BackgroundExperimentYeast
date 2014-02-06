library(affy)

setwd("~/BackgroundExperimentYeast/")
Data <- ReadAffy(celfile.path = "inst/extdata")
save(Data, file="data/background.rda")
