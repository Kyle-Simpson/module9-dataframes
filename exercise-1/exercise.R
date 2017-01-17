# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points.scored <- c(17, 18, 27, 23, 12, 9, 37, 27, 26, 6, 25, 31, 31, 26, 14, 40, 38, 24, 34, 25, 26, 36)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.lost <- c(16, 11, 17, 21, 10, 3, 18, 17, 24, 6, 20, 25, 24, 15, 5, 7, 10, 3, 31, 23, 6, 20)

# Combine your two vectors into a dataframe
Seahawks.scores <- data.frame(points.scored, points.lost)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
Seahawks.scores$diff <- c(points.scored - points.lost)

# Create a new column "won" which is TRUE if the Seahawks won
Seahawks.scores$won <- Seahawks.scores$diff >= 0

# Create a vector of the opponent names corresponding to the games played
opponents <- c("Chiefs", "Vikings", "Cowboys", "Raiders", "Dolphins", "Rams", "49ers", "Jets", "Falcons", "Cardinals", "Saints", "Buffalos", "Patriots", "Eagles", "Buccaneers", "Panthers", "Packers", "Rams", "Cardinals", "49ers", "Lions", "Falcons")

# Assign your dataframe rownames of their opponents
Seahawks.scores$opponents <- c(opponents)

# View your data frame to see how it has changed!
View(Seahawks.scores)
