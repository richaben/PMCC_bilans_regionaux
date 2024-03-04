#' Fonction pour créer les synthèses régionales du réseau PMCC
#'
#' @param nom_region le nom de la région. Doit correspondre à une entrée de df_region$NOM_REG.
#' @param annee l'année de la synthèse souhaitée.
#' @param df_region le data.frame pour les contours géographiques des régions.
#' @param df_pmcc le data.frame pour les données PMCC.
#' @param df_oison le data.frame pour les données OISON.
#'
#' @return un fichier html dans le dossier ./output
#' @export
#'
#' @examples
make_synthese_pmcc <- function(nom_region, 
                               annee,
                               df_region,
                               df_pmcc,
                               df_oison){
  
  purrr::map(.x = nom_region,
             .f = 
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