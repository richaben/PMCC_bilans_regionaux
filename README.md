# PMCC bilans régionaux 🦡 🦊 🦝 🦨 🦦 🐾

## Description 📚

→ Sauvegarde des scripts permettant de créer des bilans régionaux pour la valorisation des données de [PMCC (OFB)](https://professionnels.ofb.fr/fr/reseau-petits-meso-carnivores).


→ Scripts créés au sein du *Service Régional Connaissance, OFB Direction Régionale Normandie* (*Janvier 2024*).

## Packages 💻

Plusieurs packages sont utilisés pour ce projet, et sont réinstallés à l'aide du R package `renv`. 

```r
# Au besoin, pour restaurer l'installation des packages
renv::restore()
```

## Séquence ⚙

1. Disposer des données PMCC & OISON (⚠ *au chemin d'accès !*).

2. Suivre les étapes dans `make_bilans.R` (→ *pour la mise en forme*)
  
  - la fonction `make_synthese_pmcc()` permet de faire un ou plusieurs bilans régionaux.

3. Les sorties `.html` sont dans le dossier `output`.


