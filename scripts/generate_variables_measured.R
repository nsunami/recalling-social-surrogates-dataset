source("scripts/load_data.R")

# Define the path to the metadata file
DATASET_DESCRIPTION_PATH <- here::here("dataset_description.json")

# Load the RDS data 
recalling_surrogates_data <- load_data()

# Extract the data dictionary
data_dictionary <- labelled::generate_dictionary(recalling_surrogates_data)
codebook_table <- codebook::codebook_table(recalling_surrogates_data)
variables_measured_tbl <- codebook_table |>
  dplyr::select(
    name,
    description = label,
    maxValue = max,
    minValue = min,
    # TODO: Extract the value labels and use them in the variableMeasured
  ) |>
  dplyr::mutate("@type" = "PropertyValue", .before = dplyr::everything())
## Convert the existing data dictionary to JSON
variables_measured_json <- jsonlite::toJSON(variables_measured_tbl, pretty = TRUE)

# Add the data dictionary data to the metadata
## Read the existing metadata
existing_metadata <- jsonlite::fromJSON(DATASET_DESCRIPTION_PATH)
## Remove the old element for variables measured
existing_metadata[["variableMeasured"]] <- NULL
## Add the updated element for the variables measured
updated_metadata <- existing_metadata
updated_metadata[["variableMeasured"]] <- jsonlite::fromJSON(variables_measured_json)
## Save the `dataset_description.json`
jsonlite::write_json(
  updated_metadata,
  DATASET_DESCRIPTION_PATH,
  pretty = TRUE,
  auto_unbox = TRUE
)
