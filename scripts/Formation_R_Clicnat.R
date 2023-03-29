# charger un geopackage
library(tidyverse)
donnees_clicnat <- sf::read_sf ("D:/DONNEES8IG/03032023/OFB_clicnat.gpkg")

# sauvegarder le fichier en format Rdata
save(donnees_clicnat,
     file="processed_data/donnees_clicnat.RData")
# charger le ficher en format Rdata
load(file="processed_data/donnees_clicnat.RData")

# travailler sur un extrait de la base 1000 lignes
extrait <- sample_n(donnees_clicnat, 1000)
*
  # créer un test dans lequel on crée une colonne test avec les 5 et 6 derniers arguments
test <- extrait %>% 
  mutate(dept = str_sub(communes, -6, -5))

head(donnees_clicnat) %>% 
  View

#didier pujo fait des conneries