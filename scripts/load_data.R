load_data <- function() {
  # Load the raw file and conver to a CSV file
  raw_file_path <- here::here("data/raw/study-recallingsurrogates_data.rds")
  output_file_path <- here::here("data/study-recallingsurrogates_data.csv")

  readr::read_rds(raw_file_path)
}
