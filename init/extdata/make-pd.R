y <- read.table("info.txt",header=FALSE,check.names=FALSE,as.is=TRUE,sep="\t")
rownames(y) <- y[,1]
filenames <- paste(y[,1],"CEL",sep=".")
y <- y[,-1]

biological.replicate <- 1:nrow(y)
technical.replicate <- rep(1,nrow(y))

##disease 2 is a more detailed annotation of 1
names(y) <- c("label","sample_type")
y$filename <- filenames
y$biorep<-biological.replicate
y$tecrep<-technical.replicate

write.table(y,file="pdata.txt",quote=FALSE,sep="\t")



##time is in hours
