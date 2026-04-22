# ************************************
# ******** Data preprocess ***********
# ************************************

library(tidyverse)
library(here)

# load interim dataset
source_file <- here("data", "interim", "childcare_interim.csv")

childcare_interim <- read_csv(source_file)


childcare_interim <- childcare_interim |> 
  mutate(
    county_fips_code = as.character(county_fips_code)
  )

# create measure of childcare prices (alt) and remove obs with na
childcare_processed_raw <- childcare_interim |> 
  mutate(
    childcare_price = rowMeans(pick(c(mcinfant, mctoddler, mcpreschool)), na.rm = TRUE),
    market_size = h_under6_bothwork + h_under6_singlem
  ) |> 
  select(-starts_with("h_"))

# export
target_file <- here("data", "processed", "childcare_processed_raw.csv")
write_csv(childcare_processed_raw, target_file) 

# remove missing values
childcare_processed <- childcare_processed_raw |> 
  na.omit() |> 
  filter(market_size != 0) 

# export
target_file <- here("data", "processed", "childcare_processed.csv")
write_csv(childcare_processed, target_file) 

