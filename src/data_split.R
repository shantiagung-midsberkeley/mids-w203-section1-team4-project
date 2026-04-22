# **********************************
# ******** Data split ***************
# **********************************

library(here)
library(rsample)
library(tidyverse)

# load preprocessed data
source_file <- here("data", "processed", "childcare_processed.csv")
childcare_processed <- read_csv(source_file)

# split data into explore (train) and test set
set.seed(203) # set random number stream so that results can be reproduced
childcare_split <- initial_split(childcare_processed, prop = 0.3)
childcare_explore <- training(childcare_split)
childcare_test <- testing(childcare_split)

# export explore set
target_file <- here("data", "processed", "childcare_explore.csv")
write_csv(childcare_explore, target_file)

# export test set
target_file <- here("data", "processed", "childcare_test.csv")
write_csv(childcare_test, target_file)