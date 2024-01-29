# tidyhydat retrieves flow data from WSC hydat database
 install.packages("tidyhydat")

library('tidyhydat')
library('leaflet')
library('ggplot2')
# download the hydat database, this is done once
# download_hydat()

#retrieve all ECCC station data

all_stn_info <- hy_stations()

# Plot the stations
leaflet() %>% # this operator is called pipe, which means then
  addTiles() %>% #load background image
  addCircleMarkers(data = all_stn_info,lng = ~LONGITUDE, lat = ~LATITUDE,
                   radius =0.5,
                   label = ~STATION_NUMBER)

# Now , we know that the station is 05BB001
# Plot the data
hy_plot(station_number = '05BB001', Parameter = 'Flow')

#extract the daily flow data for this station

banff_flow <- hy_daily_flows(station_number = '05BB001', 
                             start_date = '2010-01-01', 
                             end_date = '2010-12-31')
# To extract daily levels use hy_daily_levels()

#Plot Banff_flow
ggplot(data = banff_flow, aes(x=Date, y=Value))+geom_line()

# get annual flow statistics for Banff
banff_ann_stat <- hy_annual_stats(station_number = '05BB001', 
                start_year = '2000', 
                end_year = '2010')

# extract max values
banff_ann_max <- banff_ann_stat[banff_ann_stat$Sum_stat=='MAX',]

# Plot max values
ggplot(data = banff_ann_max, aes(x=Year, y=Value))+geom_bar(stat = 'identity')

