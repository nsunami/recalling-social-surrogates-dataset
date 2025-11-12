# Load the raw file and conver to a CSV file

raw_file_path <- here::here("data/raw/study-recallingsurrogates_data.rds")

output_file_path <- here::here("data/study-recallingsurrogates_data.csv")

recalling_surrogates_data <- readRDS(raw_file_path)

# Write out to the data folder
write.csv(
  recalling_surrogates_data,
  output_file_path
)
