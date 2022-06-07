# Cultural Data Science 21-22 | Spatial Analytics, Spring 2022
## Repository Structure
📦[`CDS_spatial2022`](https://github.com/agnesbn/CDS_spatial2022)\
 ┣ 📂[`data`](https://github.com/agnesbn/CDS_spatial2022/tree/main/data)\
 ┃ ┗ 📜`database_file.csv`\
 ┃ ┗ 📂`world_administrative-boundaries`\
 ┃ ┃ ┗ 📜`world_administrative-boundaries.dbf`\
 ┃ ┃ ┗ 📜`world_administrative-boundaries.prj`\
 ┃ ┃ ┗ 📜`world_administrative-boundaries.shp`\
 ┃ ┃ ┗ 📜`world_administrative-boundaries.shx`\
 ┣ 📂[`output`](https://github.com/agnesbn/CDS_spatial2022/tree/main/output)\
 ┣ 📜[`clean-up.R`](https://github.com/agnesbn/CDS_spatial2022/blob/main/clean-up.R) <-- __clean-up script__\
 ┣ 📜[`final_project.html`](https://github.com/agnesbn/CDS_spatial2022/blob/main/final_project.html)\
 ┗ 📜[`final_project.Rmd`](https://github.com/agnesbn/CDS_spatial2022/blob/main/final_project.Rmd) <-- __main script__

## The data
The primary data is the Endangered Languages Database, which is available to the public for free through this link: https://www.endangeredlanguages.com/userquery/. The dataset can be downloaded in CSV form by clicking the Download the database-button. The CSV file contains a row for each language with information about its degree of endangerment, its number of speakers, some alternative names and other relevant descriptions, and the location of the language. 
As the data points occur all over the world, an object for the boundaries of the countries and territories of the world is also needed. I found the World Administrative Boundaries - Countries and Territories at this link: https://public.opendatasoft.com/explore/dataset/world-administrative-boundaries/export/. The data contains a polygon for each country (or territory).

### Data references
_Catalogue of Endangered Languages_ (2022). University of Hawaii at Manoa. Available at: http://www.endangeredlanguages.com [Accessed 6 June 2022].


_World Administrative Boundaries – Countries and Territories_ (2019). World Food Programme (UN agency). Available at: https://public.opendatasoft.com/explore/dataset/world-administrative-boundaries/information/ [Accessed 6 June 2022].


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;License: [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Software Framework
I wrote the code for this project on my 1-year old MacBook Air (M1, 2020), 8 GB RAM, which runs macOS Monterey (12.4) operating system. I worked in the desktop version of R (4.1.1) and RStudio (2022.02.3). The following packages and versions were used:

| Package  | Version | Reference                      |
|----------|---------|--------------------------------|
| dplyr    | 1.0.9   | Wickham et al., 2022           |
| leaflet  | 2.1.1   | Cheng & Xie, 2022              |
| maptools | 1.1.4   | Bivand & Lewing-Koh, 2022      |
| mapview  | 2.11.0  | Appelhaus et al., 2022         |
| readr    | 2.1.2   | Wickham, Hester & Bryan, 2022  |
| sf       | 1.0.6   | Pebesma, 2018                  |
| spatstat | 2.3.4   | Baddeley, Rubai & Turner, 2015 |
| stringr  | 1.4.0   | Wickham, 2022                  |
| terra    | 1.5.21  | Hijmans, 2022                  |
| tidyr    | 1.2.0   | Wickham & Girlich, 2022        |


### References for R packages 
Appelhaus, Tim, Florian Detsch, Christoph Reudenbach & Stefan Woellauer (2022). _mapview: Interactive Viewing of Spatial Data in R_. [R package] Available at: https://github.com/r-spatial/mapview [Accessed 5 June 20222].


Baddeley, Adrian, Ege Rubak & Rolf Turner (2015). _Spatial Point Patterns: Methodology and Applications with R_. [R package] Chapman and Hall/CRC Press, London. Available at: https://www.routledge.com/Spatial-Point-Patterns-Methodology-and-Applications-with-R/Baddeley-Rubak-Turner/9781482210200/ [Accessed 5 June 2022].


Bivand, Roger & Nicholas Lewing-Koh (2022). _maptools: Tools for Handling Spatial Objects_. [R package] Available at: http://maptools.r-forge.r-project.org/, https://r-forge.r-project.org/projects/maptools/ [Accessed 5 June 2022].


Cheng, Joe, Bhaskar Karambelkar & Yihui Xie (2022). _leaflet: Create Interactive Web Maps with the JavaScript 'Leaflet' Library_. [R package] Available at: https://cran.r-project.org/web/packages/leaflet/index.html, https://rstudio.github.io/leaflet/ [Accessed 5 June 2022]. 
 
 
Hijmans, Robert J. (2022). _terra: Spatial Data Analysis_. [R package] Available at: https://rspatial.org/terra/ [Accessed 5 June 2022].


Pebesma, Edzer (2018). Simple Features for R: Standardized Support for Spatial Vector Data. _The R Journal_, 10(1), pp. 439-446 [R package]. Available at: https://doi.org/10.32614/RJ-2018-009 [Accessed 5 June 2022].

 
Wickham, Hardley (2022). _stringr: Simple, Consistent Wrappers for Common String Operations_. [R package] Available at: http://stringr.tidyverse.org, https://github.com/tidyverse/stringr [Accessed 5 June 2022].


Wickham, Hardley, Jim Hester & Jennifer Bryan (2022). _readr: Read Rectangular Text Data_. [R package] Available at: https://readr.tidyverse.org, https://github.com/tidyverse/readr [Accessed 5 June 2022].


Wickham, Hardley, Maximillian Girlich (2022). _tidyr: Tidy Messy Data_. [R package] Available at: https://tidyr.tidyverse.org, https://github.com/tidyverse/tidyr [Accessed 5 June 2022].


Wickham, Hardley, Romain François, Lionel Henry & Kirill Müller (2022). _dplyr: A Grammar of Data Manipulation_. [R package] Available at: https://dplyr.tidyverse.org, https://github.com/tidyverse/dplyr [Accessed 5 June 2022].
