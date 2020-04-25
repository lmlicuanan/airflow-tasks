suppressPackageStartupMessages({
  library(tidyverse)
  library(googlesheets4)
  library(glue)
})

options(gargle_oauth_cache = ".secrets")
options(gargle_oauth_email = "lmlicuanan14@gmail.com")

sheets_auth(use_oob = TRUE)

googlesheets_test.dt <-
  read_sheet(
    ss = "19vfKvjKHH34iNroXzQ5x8C119cN80peGSYOertuikfo",
    sheet = "Sheet1") %>%
  as.data.frame()

write.csv(x = googlesheets_test.dt, file = glue("/Users/linolicuanan/Desktop/{Sys.time()}.csv"))
