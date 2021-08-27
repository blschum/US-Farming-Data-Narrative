# Build clean from USDA NASS quickstats

build <- function(csv){
  
  file <- read.csv(csv)
  
  clean <- file %>% select(c(Year, State.ANSI, County.ANSI, County, Data.Item, Value)) %>%
    mutate(STATE_ANSI = as.factor(str_pad(State.ANSI, width = 2, side = "left", pad = "0")),
           COUNTY_ANSI = as.factor(str_pad(County.ANSI, width = 3, side = "left", pad = "0")),
           GEOID = as.factor(paste0(STATE_ANSI, COUNTY_ANSI))) 
  
  # sum across GEOID on the Value column (necesary for: labor_expense, prod_n, and corn_harv; just easier to do within function)
  out <- clean %>% 
    select(County, Year, GEOID, Data.Item, Value) 
  
  return(out)
}
