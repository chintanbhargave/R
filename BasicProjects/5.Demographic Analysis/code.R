
demo<- read.csv("DemographicData.csv", stringsAsFactors = T)
demo

# basic operations on data frame for practice.
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

# plotting practice
qplot(data = demo, x=Internet.users)

qplot(data = demo, x=Income.Group, y = Birth.rate)

qplot(data = demo, x = Internet.users, y = Birth.rate, color = I("red"), size = I(3))

# challenge 1
qplot(data = demo, x = Internet.users, y = Birth.rate, color = Income.Group, size = I(3))

# challenge 2

# creating data frames for vectors
df <- data.frame(Country=Countries_2012_Dataset,Codes=Codes_2012_Dataset,Regions=Regions_2012_Dataset)
#colnames(df) <- c("Country","Codes","Regions")

#  Merging data frames
mdf <- merge(demo,df,by.x = "Country.Code", by.y = "Codes")
mdf$Country <- NULL
head(mdf)
str(mdf)
summary(mdf)


# challenge 2 plot

qplot(data = mdf, x = Internet.users, y = Birth.rate,
      color = Regions, size = I(3),shape = I(19),alpha=I(0.6),
      main = "BirthRate vs InternetUsers")
















