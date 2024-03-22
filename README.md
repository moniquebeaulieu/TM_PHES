# README for TM-PHES Data Analysis Repository

## Overview
This GitHub repository contains the data analysis work for the Tent Mountain Pumped Hydro Energy Storage (TM-PHES) project. Located near the Crowsnest Pass in Alberta, this project aims to optimize the design of the Tent Mountain Upper and Lower Reservoirs and the North and South dams, ensuring 16-hour continuous operation while considering environmental, hydrological, and climate change impacts.

## Executive Summary
The report details the final design choices and findings from the TM-PHES project. Key activities included optimizing the Upper Reservoir design, sizing the Lower Reservoir, designing the dams, and conducting water balance, hydrological, and climate change impact analyses. The project leveraged a Hydrologic Engineering Center – Hydrological Modelling System (HEC-HMS) model, the Linacre equation for evaporation rate calculation, and a GeoStudio seepage model. The analyses also covered future meteorological conditions under various climate change scenarios, providing insights into potential effects on the project, such as extreme outflow events and storage fluctuations. Additionally, an Operations Plan and a Mitigation and Adaptation Plan were developed to address regulatory, operational, and climate-related challenges.

## Repository Contents

### EMDNA Data and Climate Change Scenario Notebooks
- **delta_analysis.ipynb**: Main notebook for analyzing historical and future climate change scenarios concerning temperature, precipitation, evaporation, and flow.
- **ET_penman.ipynb**: Updates historical and future scenario data with calculated daily evaporation rates and uploads new files for each realization.
- **gridded_data.ipynb**: Transforms and uploads the historical and future scenario temperature and precipitation data into the correct format.
- **gridded_data_trange.ipynb**: Transforms and uploads historical and future scenario trange data into the correct format.
- **storage_analysis.ipynb**: Analysis the storage output and flow from HEC-HMS for the historical and future scenario data.

### WEATHERCAN and GAUGE Data Notebooks
- **EDA.ipynb**: Contains exploratory data analysis of WEATHERCAN and hydrological (gauge) data, replicates Hatch's prefeasibility graphs, and shows correlations between stations.

### Other Useful Files
- **gauges.html**: An interactive map showing the locations of hydrological gauges relative to the site.
- **weatherstn.html**: An interactive map displaying the locations of weather stations relative to the site.

## Getting Started
1. **Clone the repository**: Use `git clone [https://github.com/moniquebeaulieu/TM_PHES.git]` to get a local copy of the repository.
2. **Download Data**: Download the necessary historical and future scenario gridded data, contact simon.papalexiou@ucalgary.ca.
3. **Install dependencies**: Ensure that Python and the necessary libraries (e.g., Pandas, NumPy, Matplotlib) are installed.
4. **Navigate to notebooks**: Open the Jupyter notebooks to view the analysis and findings.

## Contributing
Contributions to this repository are welcome. Please submit pull requests with proposed changes for review.

## Contact
For questions or comments about this repository or the TM-PHES project, please open an issue in this GitHub repository or contact moniqueb@shaw.ca.

---

This README provides a comprehensive introduction to the repository, guiding users through the project's purpose, the contents of the repository, and how to get started with the analysis.
