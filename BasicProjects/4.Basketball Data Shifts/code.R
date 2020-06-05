
myplot <- function(data,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type = "b", pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.01, legend = Players[rows], col = c(1:4,6), pch = 15:18, horiz = F, cex = 0.5)
}

# BasketballData operations
# Salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

# In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

# In-Game Metrics Normalised
myplot(FieldGoals / Games)
myplot(FieldGoals / FieldGoalAttempts)
myplot(FieldGoalAttempts / Games)
myplot(Points / Games)

# Interesting Observations
myplot(MinutesPlayed / Games)
myplot(Games)

# Time
myplot(FieldGoals / MinutesPlayed)

# Player Style
myplot(Points / FieldGoals)


# FreeThrowData Operations
# Free Throw Attempts Per Game
myplot(FreeThrowAttempts / Games)

# Accuracy of Free Throws
myplot(FreeThrow / FreeThrowAttempts)

# Player playing style (2 vs 3 points preference) excluding Free Throws
myplot((Points - FreeThrow)/ FieldGoals)
