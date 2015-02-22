library(dplyr)
idaho<-read.csv(file="RawData/getdata_data_ss06hid_2.csv")

#Looking for 
# greater than 10 acres who 
# sold more than $10,000 worth of agriculture products
# ACR = 3
# 3 .House on ten or more acres
# AGS = 6
# 6 .$10000+ 

agricultureLogical<-with(idaho,ACR==3 & AGS==6)
which(agricultureLogical)

library(jpeg)
jeff <- readJPEG(source = "RawData/jeff.jpg", native=T)
quantile(jeff,probs=c(0.3,0.8),na.rm=T)

GDP<-read.csv(file="RawData/GDP.csv",header=F,skip=6)
edu <- read.csv("RawData//edu.csv")
GDP<-GDP[,c(1,2,4,5)]
names(GDP) <- c("CountryCode","Ranking","Country","GDP_Dollars")

GDP["r.int"] <- as.character(GDP$r.int)
GDP["r.int"] <- as.character(GDP$r.int)
GDP.r <- with(GDP,GDP[!is.na(r.int),])
tapply(merged$r.int,merged$"Income.Group",mean)

library(Hmisc)
merged$quants<-cut2(merged$r.int,g=5)
with(merged,table(Income.Group,quants))