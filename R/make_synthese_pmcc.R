### fonction pour créér les syntheses
make_synthese_pmcc <- function(nom_region, 
                                      annee,
                                      df_region,
                                      df_pmcc,
                                      df_oison){
  
  purrr::walk(nom_region,
              ~ {
                rmarkdown::render(input="./assets/template_PMCC_synthese.Rmd", 
                                  output_file = glue::glue("synthese_reseau_pmcc_{annee}_{.x}.html"),
                                  output_dir = glue::glue("./output"),
                                  quiet = T,
                                  params = list(nom_region = .x, 
                                                id_annee = annee,
                                                df_region = df_region,
                                                df_pmcc = df_pmcc,
                                                df_oison = df_oison))
              }
  )
  
}