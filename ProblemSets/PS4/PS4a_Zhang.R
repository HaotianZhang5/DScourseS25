# Load required libraries
library(jsonlite)
library(tidyverse)
# Download JSON file using system command
system("wget -O dates.json 
'https://www.vizgr.org/historical-events/search.php?format=json&begin_date=00000101&end_date=20240209&lang=en'")
# Print file contents to console
system("cat dates.json")
# Convert JSON to a list
mylist <- fromJSON('dates.json')
# Convert list to dataframe (excluding first element if not useful)
mydf <- bind_rows(mylist$result[-1])

# Check object types
print(class(mydf))        # Print the class of mydf 
print(class(mydf$date))   # Print the class of the date column

# Print first 10 rows of the dataframe
print(head(mydf, 10))
