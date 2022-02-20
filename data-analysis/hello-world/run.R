suppressPackageStartupMessages({
  library(tidyverse)
  library(googlesheets4)
  library(lubridate)
})

sheets_auth(
  email = "linolicuanan@gmail.com",
  use_oob = TRUE,
  cache = TRUE,
  path = "home/linolicuanan/airflow-medium/secure/key-file.json",
  token = Sys.getenv("GOOGLESHEETS_TOKEN")
)

write_sheet(
  tibble(updated_at = as_datetime(now())), 
  "1w5ibFkoW5ORAGoexNKGV2NtHUJ7E5SrbMhALo3snScI", 
  sheet = "Sheet1"
)
