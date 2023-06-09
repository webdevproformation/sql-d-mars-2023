-- en js 
-- dans une variable on distingue 5 types de base 
-- string / number / boolean / array / objet 

-- en SQL 
-- 3 grandes familles de type 
-- 1 les textes
-- vous allez avoir des catégories => distinguent par le nombre de caractères quelles contiennent
CHAR(0 - 255) oui existe je n'utilise pas
VARCHAR(0 - 255) colonne dont stocker texte maximum de 255 caractères 
         seul type qui dispose de (0 - 255)= 2^8 = 256
TEXT  2^16 65 000 lettres
MEDIUMTEXT  2^24 16 000 000
LONGTEXT   2^32  4 000 000 000
BLOB       => très très très grosse chaine de caractères 
-- 2 les chiffres 
-- chiffres entiers 1 2 3 -2 -8
TINYINT 2^8 -128 127 => age 
SMALLINT 2^16 => 65 000 
MEDIUMINT 2^24 => 16 000 000
INT  2^32 => 4 000 000 000 
BIGINT => très grand nombre 
-- chiffres à virgule 1.4 -10.03
DECIMAL 100000000000000000000.1
DECIMAL 1.000000000000000000001
DECIMAL(60,2) spécial MySQL / sur SQlite DECIMAL
FLOAT  
-- chiffres spéciaux 
BOOLEAN  0 1 
-- 3 date 
DATE    AAAA-MM-JJ
DATETIME AAAA-MM-JJ HH:MM:SS
TIME  HH:MM:SS
TIMESTAMP (MySQL non disponible sql SQLITE)

01/12/2023 => date en français 
attention en sql =>  "2023-12-01"
attention en sql =>  "2023-12-01 12:30:01"
// 01/12/2023 à 12h30 et 1 seconde

-- MySQL MariaDB 
CREATE DATABASE demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
-- sqlite => ce concept n'existe pas 
-- fichier créer des variables ou tu crées csv 

// new Date() // 1er Janvier 1970

// bug de l'an "1999-12-01"
// bug de l'an "2000-12-01"

// limites des dates => "50100-12-01"


-- créer une table articles
-- 5 colonnes 
-- titre texte max de 255
-- contenu max de 65 000 lettres
-- auteur texte max de 20 lettres
-- like chiffre entier maximum 4 000 000 000
-- dt_publication année mois et jour 

CREATE TABLE IF NOT EXISTS articles (
    titre VARCHAR(255),
    contenu TEXT ,
    auteur VARCHAR(20) ,
    like INT ,
    dt_publication DATE 
) ; 

-- bon appétit !! 13h30 @ toute suite !!!!!!!!!!


-- créer une table exo2
-- contient 6 colonnes 
-- id chiffre entier qui peut aller jusqu'à 4 Milliards
-- dt_publication date et heure 
-- dt_mise_a_jour date
-- etat stocker 0 1
-- texte maximum de 65 000 lettres
-- prix chiffre à virgule 

-- afficher cette table dans SQlite Explorer

-- les types dépendent du SGBD utilisé  : 
-- https://mariadb.com/kb/en/data-types/
-- https://dev.mysql.com/doc/refman/5.7/en/data-types.html

CREATE TABLE IF NOT EXISTS exo2 (
id INT ,
dt_publication DATETIME ,
dt_mise_a_jour DATE ,
etat BOOLEAN ,
texte MEDIUMTEXT ,
prix DECIMAL
);

CREATE TABLE IF NOT EXISTS exo2 (
    id INT /*2^32*/ ,
    dt_publication DATETIME /*AAAA-MM- HH:MM:SS */,
    etat BOOLEAN /*0 1*/ ,
    texte MEDIUMTEXT /*TEXT 2^16*/ ,
    prix DECIMAL /*DECIMAL (60,2)*/
) ;

-- si je prends un type ordre de grandeur plus élevé que les données stockées 
-- stocker la même information => un peu plus de place que si vous prenez des types mieux calibré
-- si vous prenez trop petit TINYINT au lieu INT (pas SQLite) 
-- ça ne stocke pas stocker toute l'information (trancher)

-- si vous ne connaissez pas l'ordre de grandeur prenez plus grand dans un premier temps (théoriquement)
-- dans la réalité, une fois que la table est créée => touche plus à la structure (sauf augmenter le type)

-- MySQL => ALTER TABLE (mais existe pas en SQlite)
-- sur sqlite / mySQL 
-- supprimer la table 
DROP TABLE IF EXISTS exo2 ;
CREATE TABLE IF NOT EXISTS exo2 (
    id INT ,
    dt_publication DATETIME ,
    dt_mise_a_jour DATE ,
    etat BOOLEAN ,
    texte TEXT ,
    prix DECIMAL 
) ;


