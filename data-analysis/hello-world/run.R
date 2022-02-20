suppressPackageStartupMessages({
  library(tidyverse)
  library(googlesheets4)
  library(lubridate)
})

options(gargle_oauth_email = "linolicuanan@gmail.com")

gs4_auth(
  email = "linolicuanan@gmail.com",
  use_oob = TRUE,
  cache = TRUE,
  token = Sys.getenv("GOOGLESHEETS_TOKEN")
)


write_sheet(
  tibble(updated_at = as_datetime(now())), 
  "1w5ibFkoW5ORAGoexNKGV2NtHUJ7E5SrbMhALo3snScI", 
  sheet = "Sheet1"
)
