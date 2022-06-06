# Repository Structure

📦[CDS_spatial2022](https://github.com/agnesbn/CDS_spatial2022)\
 ┣ 📂[data](https://github.com/agnesbn/CDS_spatial2022/tree/main/data)\
 ┃  (these files will be uploaded on Digital Eksamen and should be added to the `data` folder)\
 ┃ ┗ 📜database_file.csv\
 ┃ ┗ 📂world_administrative-boundaries\
 ┃ ┃ ┗ 📜world_administrative-boundaries.dbf\
 ┃ ┃ ┗ 📜world_administrative-boundaries.prj\
 ┃ ┃ ┗ 📜world_administrative-boundaries.shp\
 ┃ ┃ ┗ 📜world_administrative-boundaries.shx\
 ┣ 📂[output](https://github.com/agnesbn/CDS_spatial2022/tree/main/output)\
 ┣ 📜[clean-up.R](https://github.com/agnesbn/CDS_spatial2022/blob/main/clean-up.R)\
 ┣ 📜[final_project.html](https://github.com/agnesbn/CDS_spatial2022/blob/main/final_project.html)\
 ┣ 📜[final_project.Rmd](https://github.com/agnesbn/CDS_spatial2022/blob/main/final_project.Rmd)\
 ┗ 📜[Spatial_proj_2022.Rproj](https://github.com/agnesbn/CDS_spatial2022/blob/main/Spatial_proj_2022.Rproj)\


# __Report: Hotspots of Endangered Languages__
__Agnes Boel Nielsen -- 201808193__

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__Abstract.__ ...

__Keywords__: language endangerment; language revitalisation; language hotspots.

# A. Free text
## 1. Introduction and Goal



## 2. Problems and Background

### 2.1 Language death and language hotspots

### 2.2 The Language Endangerment Index

## 3. Software Framework
I wrote the code for this project on my 1-year old MacBook Air (M1, 2020), 8 GB RAM, which runs macOS Monterey (12.4) operating system. I worked in the desktop version of R (4.1.1) and RStudio (2022.02.3).

## 4. Data Acquisition and Processing

..
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

  ## 5. Empirical Results
  ### 5.1 Interactive plot with `Leaflet`
  
  
 ![](output/Rplot.png)
 
 ## 6. Critical Evaluation
 
 ## 7. Conclusion
 
 
 ## References 
 
 
 # B. Required Metadata
 ## Table 1 - Software Metadata
 
 
 ## Table 2 - Data Metadata
 
 
 # Appendix I: Aggregated table of _LEI_ factors
The table below show the description associated with each rank (0–5) for the four factors used by the Language Endangerment Index to assess the endangerment status of a language. The table is an aggregated form of tables 5.1–5.4 provided by Lee & Van Way (2018: 68, 69, 70).

<img width="567" alt="Skærmbillede 2022-06-06 kl  17 01 19" src="https://user-images.githubusercontent.com/89093256/172187611-954b2148-54c4-4359-9633-f29c6fd12745.png">

 
 
 
 
