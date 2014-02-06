library(affy)

setwd("~/BackgroundExperimentYeast")
backgroundData <- ReadAffy(celfile.path = "inst/extdata", phenoData = "inst/extdata/pdata.txt")
save(backgroundData, file="data/backgroundData.rda")
