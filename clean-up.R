# Load the data
# read language data
elcat <- read.csv("data/database_file.csv", 
                  col.names = c("ID", "isocodes", "name", "alternate_names", 
                                "degree_of_endangeredness", 
                                "number_of_speakers", "family", "description1", 
                                "description2", "description3", "country", 
                                "continent", "coordinates"), 
                  na.strings=c(""," ","NA"))

# Get clean coordinates from language data
elcat_coord <- elcat %>% 
  # separate coordinates into longitude and latitude
  separate(col = coordinates, into = c("latitude","longitude"), sep = ",") %>% 
  # make sure, there is only one set of coordinates
  separate(col = longitude, into="longitude", sep=";") %>% 
  separate(col = latitude,into = "latitude", sep=";") %>% 
  # make the coordinate columns numeric
  transform(longitude=as.numeric(longitude)) %>% 
  transform(latitude=as.numeric(latitude))
# correct wrong coordinates for the language Pingelapese
elcat_coord[elcat_coord$name=="Pingelapese", "longitude"] <- 144.793732
elcat_coord[elcat_coord$name=="Pingelapese", "latitude"] <- 13.444304

# simple cleaning of the language information
elcat_clean <- elcat_coord %>% 
  subset(degree_of_endangeredness != "") %>% # remove rows without information about endangerment status
  mutate(endangeredness_title = gsub(" \\(.*", "", degree_of_endangeredness)) %>%   # create a column with endangerment information without comments
  mutate(endangeredness_title = trimws(which = c("both"), endangeredness_title)) %>% # remove white space at beginning and end of title
  mutate(endangeredness=gsub(" ", "_", endangeredness_title)) %>% # replace white spaces with underscore
  mutate(temp=gsub(".*\\(", "", degree_of_endangeredness)) %>% # get certainty scores
  mutate(certainty=gsub("[^0-9]+", "", temp)) # remove non-numericals

# fill empty cells with NA
elcat_clean$certainty[elcat_clean$certainty==""] <- NA
# create smaller represenation of certainty to use for plot radii
elcat_clean$certainty_radius <- log(as.numeric(as.character(elcat_clean$certainty)))
# make certainty column numeric as well
elcat_clean$certainty <- as.numeric(elcat_clean$certainty)

# in endangeredness column...
elcat_clean[["endangeredness"]] <- elcat_clean[["endangeredness"]] %>% 
  # make characters lower
  tolower() %>% 
  # trim white space
  trimws(which = c("both"))

# concatenate the alternate names and description columns into one
elcat_clean$alt_names_and_descriptions <- str_c(elcat_clean$alternate_names,elcat_clean$description1, elcat_clean$description2, elcat_clean$description3)

# subset the data
subs <- c("isocodes", "name", "number_of_speakers", "family", 
          "country", "continent", "alt_names_and_descriptions", 
          "endangeredness", "certainty", "endangeredness_title", 
          "certainty_radius","longitude", "latitude")
df <- subset(elcat_clean, select = subs)
df <- df %>%
  drop_na(latitude, longitude)

# Create columns for Leaflet plot
# will be shown, when the point is clicked in the map
df$popup <- (paste(sep = "",
                   "LANGUAGE INFORMATION<br/><br/>",
                   "Language: ", df$name, "<br/>",
                   "Glottocode: ", df$glottocode, "<br/>",
                   "Isocode: ", df$isocodes, "<br/><br/>",
                   "Level: ", df$level, "<br/>",
                   "Family: ", df$family, "<br/>",
                   "Country: ", df$country, "<br/>",
                   "Continent: ", df$continent, "<br/>",
                   "Number of speakers: ", df$number_of_speakers, "<br/>",
                   "Alternate names and other descriptions: ", df$alt_names_and_descriptions, "<br/><br/>",
                   "Endangerment status: ", df$endangeredness_title,"<br/>",
                   "Certainty: ", df$certainty, "%"))
# will be shown, when hovering the cursor over the point in the map
df$label <- paste(sep = ", ", df$name)
# make certainty scores numeric
df$certainty <- lapply(df$certainty,as.numeric)

# save the dataframe as CSV
write_csv(df, "./data/cleaned_df.csv")
