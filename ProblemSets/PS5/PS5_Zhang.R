library("tidyverse")
library(rvest)

# Obtain data from the website without API
url <- "https://en.wikipedia.org/wiki/Electric_car_use_by_country" 
webpage <- read_html(url) 

data <-webpage %>%
  html_element("#mw-content-text > div.mw-content-ltr.mw-parser-output > 
table:nth-child(33)") %>% 
  html_table() 
data

# Obtain data from the website with API

library(httr) 
library(jsonlite) 
endpoint = "https://data.nasdaq.com/api/v3/datatables/QDL/SVIP.json?api_key=13hN3F1w2QYAS5_6ixeU" 
car = fromJSON(endpoint)
str(car)

str(car$datatable$data) 
df <- as.data.frame(car$datatable$data)
print(df)
