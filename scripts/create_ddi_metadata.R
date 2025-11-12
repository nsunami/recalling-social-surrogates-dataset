# Creating a DDI metadata xml file

# Had to install `styler` package manually
# via install.packages("styler")

DDIwR::convert(
  from = here::here("data/raw/study-recallingsurrogates_data.rds"),
  to = here::here("data/study-recallingsurrogates_data.xml")
)
