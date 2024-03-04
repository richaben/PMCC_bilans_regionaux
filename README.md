# PMCC bilans régionaux 🦡 🦊 🦝 🦨 🦦 🐾

Sauvegarde des scripts permettant de créer des bilans régionaux pour la valorisation des données de [PMCC (OFB)](https://professionnels.ofb.fr/fr/reseau-petits-meso-carnivores).


## Packages 💻

Plusieurs packages sont utilisés pour ce projet, et sont réinstallés à l'aide du package `renv`. 

```r
# Au besoin, pour restaurer l'installation des packages :
renv::restore()
```

## Séquence 🛠

1. Disposer des données PMCC & OISON (⚠ au chemin d'accès !).

2. Exécuter `make_bilans.R` (→ mise en forme)

3. Les sorties `.html` sont dans le dossier `output`.