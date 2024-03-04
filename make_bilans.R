##%######################################################%##
#                                                          #
####          Bilans annuels régionalisés pour          ####
####                le réseau PMCC (OFB)                ####
#                                                          #
##%------------------------------------------------------%##
##%------------------------------------------------------%##  
####                      B.Richard                     ####
####                  OFB DR. Normandie                 ####
#                                                          #
##%######################################################%##


##--------------------------------------------------------------------##
## 1. Chargement des packages principaux

if (!require("devtools")) install.packages("devtools")
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("purrr")) install.packages("purrr")
if (!require("sf")) install.packages("sf")
if (!require("rmarkdown")) install.packages("rmarkdown")
if (!require("leaflet")) install.packages("leaflet")
if (!require("DT")) install.packages("DT")
if (!require("COGiter")) devtools::install_github("MaelTheuliere/COGiter")
if (!require("templatesOFB")) devtools::install_github("CedricMondy/templatesOFB")

##--------------------------------------------------------------------##
## 2. Chargement des données
# -> un df region, un df pmcc, un df oison

df_region <- 
  COGiter::regions %>% 
  dplyr::select(REG, NOM_REG) %>% 
  # remove DOM + Corse
  dplyr::filter(!REG %in% c('01', '02', '03', '04', '06', '94')) %>% 
  dplyr::left_join(COGiter::regions_geo)

df_pmcc <- 
  readr::read_delim("D:/1_database/PMCC/PMCC_export_20240108_1609.csv", 
                    delim = ";", escape_double = FALSE, trim_ws = TRUE) %>% 
  mutate(`Années` = format(as.Date(date_obs), '%Y'))

df_oison <-
    sf::read_sf("D:/1_database/OISON/table_taxon_oison_2024-01-17.gpkg") %>%
    sf::st_as_sf()

##--------------------------------------------------------------------##
## 3. Création des synthèses

source("R/make_synthese_pmcc.R")

dir.create("output")

make_synthese_pmcc(nom_region = df_region$NOM_REG[2], 
                          annee = 2023,
                          df_region = df_region,
                          df_pmcc = df_pmcc,
                          df_oison = df_oison)
