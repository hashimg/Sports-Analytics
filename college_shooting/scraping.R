# Change working directory
setwd("C:/Users/hashi/basketball_ref")


# Install the package to do our analysis
devtools::install_github("mbjoseph/bbr")

# Activate the package
library(bbr)

# Create an empty data frame
seasons<- data.frame(Data=as.Date(character()),
                     File = character(),
                     User = character(),
                     stringsAsFactors = FALSE)

# Arbitary starting point
season_num<- 1990

# A for loop to get three seasons and concatenate them into our empty data frame
for(i in 1:26){
  seasons<-rbind(seasons, get_season(season_num))
  season_num<- season_num + 1
}

# Get the name of our variables
names(seasons)


# We can subset our data to select a player
LebronJames<-subset(seasons, seasons$player == 'LeBron James')
BenSimmons<-subset(seasons, seasons$player == 'Ben Simmons')

