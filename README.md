# PMCC bilans régionaux 🦡 🦊 🦝 🦨 🦦 🐾

→ Sauvegarde des scripts permettant de créer des bilans régionaux pour la valorisation des données de [PMCC (OFB)](https://professionnels.ofb.fr/fr/reseau-petits-meso-carnivores) et l'animation en régions.


## Packages 💻

Plusieurs packages sont utilisés pour ce projet, et sont réinstallés à l'aide du R package `renv`. 

```r
# Au besoin, pour restaurer l'installation des packages
renv::restore()
```

## Séquence ⚙

1. Disposer des données PMCC & OISON (⚠ *au chemin d'accès !*).

2. Suivre les étapes dans `make_bilans.R` (→ mise en forme)
  
  - la fonction `make_synthese_pmcc()` permet de faire un ou plusieurs bilans régionaux.

3. Les sorties `.html` sont dans le dossier `output`.


## Réutilisation 🔄

→ Scripts créés au sein du *Service Régional Connaissance, OFB Direction Régionale Normandie* en Janvier 2024.