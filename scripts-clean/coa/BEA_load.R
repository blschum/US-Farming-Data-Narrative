library(tidyverse)
library(sf)

counties <- readRDS("C:/Users/bls54/OneDrive/Grad/Emory/Horst&Marion-Expansion/coa/data/coterm_cty_sf.RDS") 
states <- st_read("C:/Users/bls54/OneDrive/Grad/Emory/Horst&Marion-Expansion/data/states.shp", stringsAsFactors = F, quiet=T) %>% 
  filter(!STATE_NAME %in% c("Alaska", "Hawaii"))
states <- st_transform(states, st_crs(counties))

project_theme <- theme_bw() +
  theme(text = element_text(size = 12))

map_theme <- project_theme +
  theme(axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        rect = element_blank(),
        legend.position = "bottom")
