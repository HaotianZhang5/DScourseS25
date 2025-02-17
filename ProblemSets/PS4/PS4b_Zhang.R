library(sparklyr)
library(tidyverse)

sc <- spark_connect(master = "local")

df1 <- as_tibble(iris)

df <-copy_to(sc,df1)

print(class(df1))
print(class(df))

print(colnames(df1))
print(colnames(df))

df %>% select(Sepal_Length, Species) %>% head() %>% print()

df %>% filter(Sepal_Length > 5.5) %>% head() %>% print()

df %>% filter(Sepal_Length > 5.5) %>% select(Sepal_Length, Species) %>% head() %>% print()

df2 <- df %>%
  group_by(Species) %>%
  Summarize(mean_length = mean(Sepal_Length), count = n()) %>%
  print

df2 %>% arrange(Species) %>% print()

spark_discounnect(sc)

