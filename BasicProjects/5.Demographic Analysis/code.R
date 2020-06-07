demo<- read.csv("DemographicData.csv", stringsAsFactors = T)
demo

# basic operations 
nrow(demo)
ncol(demo)
head(demo,n = 20)
tail(demo, n= 50)
str(demo)
demo$Country.Name
demo[,1,drop = F]
levels(demo$Income.Group)
demo[3,"Income.Group"]
demo[5,]

# Adding new column
demo$abcd <- demo$Birth.rate * demo$Internet.users

# remvoing column
demo$abcd <- NULL

demo[demo$Country.Name == "Malta",]

# plotting
qplot(data = demo, x=Internet.users)

qplot(data = demo, x=Income.Group, y = Birth.rate)

qplot(data = demo, x = Internet.users, y = Birth.rate, color = I("red"), size = I(3))


qplot(data = demo, x = Internet.users, y = Birth.rate, color = Income.Group, size = I(3))
