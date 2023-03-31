-- créer TABLE 
-- nom table 
-- colonnne nom TYPE 
-- colonnne nom TYPE PRIMARY KEY
-- colonnne TEXT TYPE DEFAULT ""
-- colonnne INT TYPE DEFAULT 0
-- colonnne DATE TYPE DEFAULT CURRENT_DATE          -- le jour actuel
-- colonnne DATETIME TYPE DEFAULT CURRENT_TIMESTAMP -- maintenant 

CREATE TABLE IF NOT EXISTS ville_2(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255) DEFAULT NULL ,
    distance SMALLINT DEFAULT 0 ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- si vous avez une requête INSERT => si colonne la valeur n'est pas précisée 
-- la valeur par défaut sera mise à la place de NULL 

CREATE TABLE IF NOT EXISTS ville_1(
    id INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(255) NOT NULL ,
    distance SMALLINT NOT NULL   ,
    dt_creation DATETIME NOT NULL  
);

-- cas pratique 
-- créer la table exo4
-- contient 5 colonnes 
-- id clé primaire
-- tva chiffre à virgule avec par défaut la valeur 1.2
-- prix chiffre à virgule 
-- description texte de 65 000 lettres max
-- dt_creation date et heure par défaut c'est maintenant