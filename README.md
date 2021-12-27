# US-Farming-Data-Narrative
Data prep and visualizations for 'The State of US Farm Operator Livelihoods' under review at *Frontiers in Sustainable Food Systems*.

## Data Repository & Reproducibility Statement

We have made all raw data collected for this project from the US BEA, USDA ERS, USDA NASS, US BLS, and USDA historical archives available at our GitHub page, https://github.com/blschum/US-Farming-Data-Narrative/raw-data. In addition, all scripts used to construct and tidy these raw datasets, and to visualize these tidy/clean data, can be found at https://github.com/blschum/US-Farming-Data-Narrative/scripts-clean and https://github.com/blschum/US-Farming-Data-Narrative/visualizations, respectively. 

We believe in open data science and in making research more reproducible; if you run into issues in any of our code, please reach out to *blschum* on GitHub to fix them. 

We hope these clean datasets will be used in future research to further elucidate farmer and farm worker livelihoods.

#### Below, we describe the contents of each folder in our repo, including context for each raw and clean dataset:

| raw-data: all raw data as downloaded from data source, before any processing

    - acres-op-by-sex.csv:
    - CAEMP25N__ALL_AREAS_2001_2019.csv:
    - CAEMP25S__ALL_AREAS_1969_2000.csv:
    - CAGDP1__ALL_AREAS_2001_2019.csv:
    - CAGDP2__ALL_AREAS_2001_2019.csv:
    - CAGDP8__ALL_AREAS_2001_2019.csv:
    - CAGDP9__ALL_AREAS_2001_2019.csv:
    - CAGDP11__ALL_AREAS_2002_2019.csv:
    - CAINC1__ALL_AREAS_1969_2019.csv:
    - cornh.csv:
    - cornr.csv:
    - ers-wealthstatdata.csv:
    - Historic tables--terminate in 2012.xlsx:
    - historical-coa.csv:
    - NASS_census.RDS:
    - operators-by-sex.csv:
    - soyh.csv:
    - soyr.csv:
    - wh1.csv:
    - wh.csv:
    
| scripts-clean

    |- bea
    
    |- coa
    
    |- ers

| visualizations

    |- data
  
        - adjustment.xlsx: price as paid index (PPITW) inflation adjustment, provided by the USDA NASS. Used in SI Figures 8 and 10.
        - bea.RDS:
        - coa-ownership.xlsx:
        - coa-race.RDS:
        - coa-VARS.RDS:
        - commodities-per-farm.xlsx:
        - contemp-coa.RDS:
        - coterm-cty-sf.RDS: sf spatial data for coterminous US counties
        - ERS-farmop.csv:
        - ERS-wealthstatdata.csv:
        - FRR.RDS: sf Farm Resource Region (FRR) spatial data for coterminous US
        - hist_cws.RDS: historical expenditure on inputs to agricultural production (1975-1995). Used in SI Figures 8 and 10
        - historical-coa.csv:
        - net-income-by-farm-size.csv:
        - out-Figure7-companion.csv:
        - race-ethnicity.csv:
        - recent_cws.RDS: modern expenditure on inputs to agricultural production (1996-2020). Used in SI Figures 8 and 10
        - states_sf.RDS: sf spatial data for coterminous US states
        - table13_householdincome.xlsx:
        
    | - PNG (all manuscript & SI visualizations produced in the data-viz .Rmd's, below, in PNG format)
    | - JPEG (all manuscript & SI visualizations produced in the data-viz .Rmd's, below, in JPEG format)
    
    - data-viz-farming-in-the-US.html: knit .html of manuscript visualizations + code
    - data-viz-farming-in-the-US.Rmd: manuscript visualizations + code
    - data-viz-farming-in-the-US-SI.html: knit .html of SI visualizations + code
    - data-viz-farming-in-the-US-SI.Rmd: SI visualizations + code
  
