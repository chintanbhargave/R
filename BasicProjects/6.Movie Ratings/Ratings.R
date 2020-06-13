movies <- read.csv("MovieRatings.csv", stringsAsFactors = T)

# Explorinng Data
movies$Year <- factor(movies$Year)
head(movies)
tail(movies)
str(movies)
summary(movies)
colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")


# Aesthetics
library(ggplot2)

# plotting
ggplot(data = movies,aes(x=CriticRating, y=AudienceRating))

# adding shapes
ggplot(data = movies,aes(x=CriticRating, y=AudienceRating)) +
geom_point()

# adding color and size
ggplot(data = movies,aes(x=CriticRating, y=AudienceRating,
                         colour=Genre,size=BudgetMillions)) +
  geom_point()
  
#creating object
x <- ggplot(data = movies,aes(x=CriticRating, y=AudienceRating,
                              colour=Genre,size=BudgetMillions))
#deliverable2
p <- ggplot(data = movies,aes(x=BudgetMillions, y=AudienceRating,
                              colour=Genre))
p + geom_point()

# Setting
x + geom_point(size=2)

# Mapping
p <- ggplot(data = movies,aes(x=CriticRating, y=AudienceRating,
                              colour=Genre))
p + geom_point(aes(size=BudgetMillions))

# histogram
h <- ggplot(data = movies,aes(x=BudgetMillions))
h + geom_histogram(binwidth = 10,aes(fill=Genre),color="black")

# Deliverable 5
i <- ggplot(data=movies)
i + geom_histogram(binwidth = 10, 
                   aes(x= AudienceRating),
                   fill="White", color="Blue")
# Deliverable 6
i + geom_histogram(binwidth = 10, 
                   aes(x= CriticRating),
                   fill="White", color="Blue")

j <- ggplot(data = movies,aes(x=CriticRating, y=AudienceRating,
                              colour=Genre))
j + geom_point() + geom_smooth(fill=NA)

# boxplot
j <- ggplot(data = movies,aes(x=CriticRating, y=AudienceRating,
                              colour=Genre))
j + geom_boxplot(size=1.2)

# delivarable 6
k <- ggplot(data = movies,aes(x=Genre, y=AudienceRating,
                              colour=Genre))
k + geom_jitter() + geom_boxplot(size =1.2, alpha=0.5)

# Facets

l <- ggplot(data=movies, aes(x=BudgetMillions))
l + geom_histogram(binwidth = 10,aes(fill=Genre),
                   color="Black")+
  facet_grid(Genre~., scales = "free")

# Scatterplot facets
m <- ggplot(data=movies,aes(x=CriticRating, y= AudienceRating,
                            color=Genre))
m + geom_point(size=3) +
  facet_grid(Genre~Year)

m + geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)

# limit axis
n <- ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,
                            size=BudgetMillions,
                            color=Genre))
n +geom_point() +
  xlim(50,100) +
  ylim(50,100)

# limit won't work always
o <- ggplot(data=movies,aes(x=BudgetMillions))
o + geom_histogram(binwidth=10,aes(fill=Genre),color="Black") + 
  ylim(0,50) # data cut out

# so to use zoom in option`
o + geom_histogram(binwidth=10,aes(fill=Genre),color="Black") +
  coord_cartesian(ylim=c(0,50))

# improving previous
#deliverable 1
m + geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year) +
  coord_cartesian(ylim = c(0,100))

# Theme

z <- ggplot(data=movies,aes(x=BudgetMillions))
y <- z + geom_histogram(binwidth=10,aes(fill=Genre),color="Black")

# label formatting
y + 
  xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x=element_text(color="DarkGreen",size=20),
        axis.title.y=element_text(color="Red",size=20))

# tick formatting(numbers on the axis)
y + 
  xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x=element_text(color="DarkGreen",size=20),
        axis.title.y=element_text(color="Red",size=20),
        axis.text.x=element_text(size=10),
        axis.text.y=element_text(size=10))

# legend formatting
y + 
  xlab("Money Axis") + ylab("Number of Movies") +
  theme(axis.title.x=element_text(color="DarkGreen",size=20),
        axis.title.y=element_text(color="Red",size=20),
        axis.text.x=element_text(size=10),
        axis.text.y=element_text(size=10),
        
        legend.title=element_text(size=20),
        legend.text=element_text(size=10),
        legend.position=c(1,1),
        legend.justification =c(1,1))

# title to the plot
# deliverable 1
y + 
  xlab("Money Axis") + ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x=element_text(color="DarkGreen",size=20),
        axis.title.y=element_text(color="Red",size=20),
        axis.text.x=element_text(size=10),
        axis.text.y=element_text(size=10),
        
        legend.title=element_text(size=20),
        legend.text=element_text(size=10),
        legend.position=c(1,1),
        legend.justification =c(1,1),
        
        plot.title=element_text(color="Dark Blue",
                                size=20,
                                family="Times New Roman"))