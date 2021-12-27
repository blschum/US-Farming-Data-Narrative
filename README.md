# US-Farming-Data-Narrative
Data prep and visualizations for 'The State of US Farm Operator Livelihoods' under review at *Frontiers in Sustainable Food Systems*.

## Data Repository & Reproducibility Statement

We have made all raw data collected for this project from the US BEA, USDA ERS, USDA NASS, US BLS, and USDA historical archives available at our GitHub page, https://github.com/blschum/US-Farming-Data-Narrative/raw-data. In addition, all scripts used to construct and tidy these raw datasets, and to visualize these tidy/clean data, can be found at https://github.com/blschum/US-Farming-Data-Narrative/scripts-clean and https://github.com/blschum/US-Farming-Data-Narrative/visualizations, respectively. 

We believe in open data science and in making research more reproducible; if you run into issues in any of our code, please reach out to *blschum* on GitHub to fix them. 

We hope these clean datasets will be used in future research to further elucidate farmer and farm worker livelihoods.

#### Below, we describe the contents of each folder in our repo, including context for each raw and clean dataset:

| raw-data

| scripts-clean

| visualizations

    |- data
  
        - adjustment.xlsx
    
        - bea.RDS
    
        - coa-ownership.xlsx
    
        - coa-race.RDS
    
        - coa-VARS.RDS
        - commodities-per-farm.xlsx
        - contemp-coa.RDS
        - coterm-cty-sf.RDS: sf spatial data for coterminous US counties
        - ERS-farmop.csv
        - ERS-wealthstatdata.csv
        - FRR.RDS: sf Farm Resource Region (FRR) spatial data for coterminous US
        - hist_cws.RDS
        - historical-coa.csv
        - net-income-by-farm-size.csv
        - out-Figure7-companion.csv
        - race-ethnicity.csv
        - recent_cws.RDS
        - states_sf.RDS: sf spatial data for coterminous US states
        - table13_householdincome.xlsx
    | - PNG (all manuscript & SI visualizations produced in the data-viz .Rmd's, below, in PNG format)
    | - JPEG (all manuscript & SI visualizations produced in the data-viz .Rmd's, below, in JPEG format)
    data-viz-farming-in-the-US.html (knit .html of manuscript visualizations + code)
    data-viz-farming-in-the-US.Rmd (manuscript visualizations + code)
    data-viz-farming-in-the-US-SI.html (knit .html of SI visualizations + code)
    data-viz-farming-in-the-US-SI.Rmd (SI visualizations + code)
  
