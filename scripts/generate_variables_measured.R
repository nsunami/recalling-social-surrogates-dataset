source("scripts/load_data.R")

recalling_surrogates_data <- load_data()

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

variables_measured_json <- jsonlite::toJSON(variables_measured_tbl, pretty = TRUE)

# Write to the clipboard
clipr::write_clip(variables_measured_json)
