# A function to make sure the column names are cleaned up, removing lower case and spaces
clean_column_names <- function(penguins_raw) {
  penguins_raw %>%
    clean_names()
}

# A function to make sure the species names are shortened
shorten_species <- function(penguins_raw) {
  penguins_raw %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

# A function to remove any empty columns or rows
remove_empty_columns_rows <- function(penguins_raw) {
  penguins_raw %>%
    remove_empty(c("rows", "cols"))
}


# A function to subset the data based on the list of column names
subset_columns <- function(penguins_raw, column_names) {
  penguins_raw %>%
    select(all_of(column_names))
}

# A function to subset the penguins data set based on species
filter_by_species <- function(penguins_raw, selected_species) {
  penguins_raw %>%
    filter(species == selected_species)
}


# A function to remove rows which contain NA values
remove_NA <- function(penguins_raw) {
  penguins_raw %>%
    na.omit()
}

# A function to remove columns that start with 'Delta' or 'Comments'
clean_function <- function(penguins_raw) {
  penguins_raw %>%
    select(-starts_with("Delta")) %>%
    select(-"Comments") %>%
    clean_names()
}

