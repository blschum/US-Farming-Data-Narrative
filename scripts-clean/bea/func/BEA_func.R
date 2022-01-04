clean_BEA <- function(file_name) {
  
  df <- read.table(file_name, header=T, sep = ",", fill = T, stringsAsFactors = F)
  df$GEOID <- as.factor(trimws(df$GeoFIPS))
  
  years <- df[,grep("^X", colnames(df))] 
  names <- colnames(years)
  
  for(i in 1:length(names)) {
    df[,names[[i]]] <- as.numeric(df[,names[[i]]])
  }
  
  df <- df %>% select(-c(GeoFIPS))
  df <- pivot_longer(df, cols = names, names_to = "YEAR")
  df$YEAR <- as.numeric(substr(df$YEAR, 2, nchar(df$YEAR)))
  df$Description <- trimws(df$Description)
  
  df$Region[df$Region == 1] <- "New England"
  df$Region[df$Region == 2] <- "Mideast"
  df$Region[df$Region == 3] <- "Great Lakes"
  df$Region[df$Region == 4] <- "Plains"
  df$Region[df$Region == 5] <- "Southeast"
  df$Region[df$Region == 6] <- "Southwest"
  df$Region[df$Region == 7] <- "Rocky Mountain"
  df$Region[df$Region == 8] <- "Far West"
  
  return(df)
  
}
