suppressPackageStartupMessages({
  library(tidyverse)
  library(googlesheets4)
  library(glue)
})

options(gargle_oauth_email = "lmlicuanan14@gmail.com")

sheets_auth(
  use_oob = TRUE,
  token = Sys.getenv("DIR_GARGLE_GSHEETS")
)

googlesheets_test.dt <-
  read_sheet(
    ss = "19vfKvjKHH34iNroXzQ5x8C119cN80peGSYOertuikfo",
    sheet = "Sheet1"
  ) %>%
  as.data.frame()

write.csv(x = googlesheets_test.dt, file = glue("{Sys.getenv('DIR_DESKTOP')}/{Sys.time()}.csv"))
