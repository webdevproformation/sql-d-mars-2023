-- 07-pk.sql 

-- quand on crée une table dans les modèles
-- relationnels

-- créer une colonne qui va permettre de chaque ligne d'enregistrement dans la table 
-- clé primaire => permettre de chercher facilement et sans ambiguité une ligne d'enregistrement dans la table 

-- colonne spéciale (utile pour manipuler les lignes dans la table)
-- nom classique => id / uid / uuid / cle_primaire pas de nom obligatoire
-- en général => id  et on la met en 1ère colonne

-- PK => Primary Key

-- id clé primaire contient PRIMARY KEY
-- chiffre entier 0 => 4 milliards INTEGER
-- AUTOINCREMENT c'est la base de données qui va déterminer sa valeur 
-- augmenter automatiquement de + 1 à chaque ajout de nouvelle ligne dans la table

-- dans une table il ne peut y avoir que 0 ou 1 clé primaire 

CREATE TABLE IF NOT EXISTS categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT , 
    nom VARCHAR(20),
    date DATE 
);

-- créer une table exo3
-- contient 4 colonnes 
-- id clé primaire
-- distance chiffre entier maximum de 65 000
-- temperature chiffre entier maximum de 127
-- status 0 ou 1

-- API => json 
-- base de données cachée derrière => 
-- Java
-- Javascript 
-- PHP 


CREATE TABLE IF NOT EXISTS exo3(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  distance SMALLINT,
  temperature  TINYINT,
  status  BOOLEAN
);