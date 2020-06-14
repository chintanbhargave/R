content <-  read.csv("ChallengeData.csv",stringsAsFactors = T)
head(content)
summary(content)

content$Budget...mill.

library(ggplot2)

# filtering dataset
mfilt <- (content$Genre == "action") | (content$Genre == "adventure") | (content$Genre == "animation") | (content$Genre == "comedy") | (content$Genre == "drama") 

sfilt <- content$Studio %in% c("Buena Vista Studios","WB","Universal","Sony","Paramount Pictures","Fox")

mov <- content[mfilt & sfilt,]

k <- ggplot(data = mov,aes(x=Genre, y=Gross...US))
                            
p <- k + 
  geom_jitter(aes(size=Budget...mill.,colour=Studio)) + 
  geom_boxplot(alpha=0.5,outlier.colour=NA)

p <- p +
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre")

p <- p +
  theme(
    axis.title.x = element_text(color = "Blue",size = 20),
    axis.title.y = element_text(color = "Blue",size = 20),
    axis.text.x = element_text(size = 10),
    axis.text.y = element_text(size = 10),
    
    plot.title = element_text(size = 25),
    
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 10),
    
    text = element_text(family = "Comic Sans MS")
  )
p

p$labels$size <- "Budget $M"
p
