# PMCC bilans régionaux 

Sauvegarde des scripts permettant de créer des bilans régionaux pour la valorisation des données de [PMCC (OFB)](https://professionnels.ofb.fr/fr/reseau-petits-meso-carnivores).


[]: # To this rendered README.md

[]: # PMCC_bilans_regionaux


## Packages

Plusieurs packages sont utilisés pour ce projet, et sont réinstallés à l'aide du package `renv`. 

```r
# Au besoin, pour restaurer l'installation des packages :
renv::restore()
```

## Séquence

1. Disposer des données PMCC & OISON

2. Exécuter les scripts dans l'ordre suivant