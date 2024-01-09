# Install libraries and packages
install.packages("weathercan", repos = c("https://ropensci.r-universe.dev", "https://cloud.r-project.org"))
#install.packages(c('lutz', 'sf'))
## sf package works with vector data
# install.packages('sf')
## leaflet package produces interactive spatial maps
# install.packages('leaflet')
## reshape2 is a package used to preprocess data frames
# install.packages('reshape2')
## ggplot2 makes nice figures
# install.packages('ggplot2')
## load the required packages

library('weathercan')
library('sf')
library('leaflet')
library('reshape2')
library('ggplot2')
library('dplyr')

# Set the working directory (location where lab_4_incomplete.R and associated data are available)
# Pay attention to forward slash /
setwd('C:/Users/14037/OneDrive - University of Calgary/Documents/ENCI_570/TM_PHES_code')
# 49.568231, -114.702450

# Define the GPS coordinates for the location of interest
latitude <- 49.57
longitude <- -114.70

# Filter stations by proximity
nearby_stations <- stations_search(coords = c(latitude, longitude), dist = 25, interval = "day")

# PRINTING STATIONS NEARBY
# View the nearby stations
print(nearby_stations)

# Extract station names from the nearby_stations data
station_id <- nearby_stations$station_id      # or list the specific stations: station_id <- c(000,111,222)

# View the list of station ids 
print(station_id)

stations_dl()
# CREATE WEATHER DATA FRAMES BASED ON STATION IDS WE FOUND NEARBY
weather <- weather_dl(station_ids = c(station_id), start = '1999-01-01', end = '2023-12-01')
print(weather)
