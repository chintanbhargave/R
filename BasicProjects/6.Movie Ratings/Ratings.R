
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
  
