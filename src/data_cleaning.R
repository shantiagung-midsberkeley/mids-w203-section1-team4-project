# **********************************
# ******** Data cleaning ***********
# **********************************

library(tidyverse)
library(here)
library(withr)
library(janitor)

# load data
url <- "https://www.dol.gov/sites/dolgov/files/WB/NDCP2022.xlsx"
temp_xlsx <- withr::local_tempfile(fileext = ".xlsx")
download.file(url, temp_xlsx, mode = "wb")

# clean data
childcare_prices_raw <- readxl::read_xlsx(temp_xlsx) |>
  janitor::clean_names()

childcare_prices_2022 <- childcare_prices_raw |> 
  filter(studyyear == 2022) |> 
  select(
    county_fips_code, county_name,         # county identifier vars
    state_name, state_abbreviation,        # state identifier vars
    mcinfant, mctoddler, mcpreschool,      # childcare prices vars
    mhi, mhi_2022,                         # economic vars
    totalpop, households,                  # other county vars
    h_under6_bothwork, h_under6_singlem    # market size vars
  )


# export
target_file <- here("data", "interim", "childcare_interim.csv")

write_csv(childcare_prices_2022, target_file)