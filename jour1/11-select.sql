-- SELECT 

SELECT * 
FROM exo5 ;

-- préciser quelle colonne récupérer 
-- et leur ordre
SELECT prix , description 
FROM exo5 ;

-- effectuer une calcul 
SELECT prix , prix * 1.2 , id 
FROM exo5 ;

-- build in function 
SELECT description , UPPER(description)
FROM exo5 ;

SELECT description , UPPER(description)
FROM exo5 ;

-- https://www.w3schools.com/sql/func_mysql_ascii.asp


SELECT  description AS `présentation`, 
        prix AS `prix HT` , 
        prix * 1.2 AS `prix TTC`
FROM exo5 ;

-- AS permet de renommer les colonnes UNIQUEMENT 
-- dans le SELECT 
-- ça n'affecte pas le nom des colonnes dans la table 


SELECT * 
FROM exo5 
WHERE id = 1

SELECT * 
FROM exo5 
WHERE id IN (1, 2);

SELECT * 
FROM exo5 
WHERE id <= 2 ;

SELECT description , prix
FROM exo5 
WHERE id <= 2 ;

SELECT prix AS `prix HT` 
FROM exo5 
WHERE id = 1 ;