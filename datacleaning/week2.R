library(httr)
library(jsonlite)
con = GET("https://api.github.com/repos/jtleek/datasharing", authenticate("brookep1@aol.com","3404be5ad99cfdc58f955961d18c5e998a6148b5"))
data = jsonlite::fromJSON(toJSON(content(con)))

library(RCurl)
temp <- getURL("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")
acs <- read.csv(textConnection(temp))

library(sqldf)
head(sqldf("select pwgtp1 from acs where AGEP < 50"))
head(sqldf("select distinct AGEP from acs"))

library(XML)
con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con)
close(con)
nchar(htmlCode[c(10, 20, 30,100)])


library(RCurl)
temp <- getURL("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for")
data <- read.delim(textConnection(temp),header=T,sep="\n")
data <- data <- read.delim(textConnection(data),header=T,sep="\t")
 