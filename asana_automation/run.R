suppressPackageStartupMessages({
  library(httr)
  library(glue)
  library(magrittr)
  library(tidyverse)
  library(lubridate)
  library(jsonlite)
  library(googleCloudStorageR)
})

source("func.R")
opportunity_board_gid = "1172885749003505"
opportunity_board_data = asana_get_tasks(project_gid = opportunity_board_gid) %>% as.data.frame()
write_csv(opportunity_board_data, path = glue("asana_test.csv"))
gcs_auth()
gcs_upload("asana_test.csv")
