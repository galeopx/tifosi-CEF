-- 1. Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT nom_focaccia 
FROM focaccia 
ORDER BY nom_focaccia ASC;

-- 2. Afficher le nombre total d'ingrédients
SELECT COUNT(*) as nombre_ingredients 
FROM ingredient;

-- 3. Afficher le prix moyen des focaccias
SELECT ROUND(AVG(prix_focaccia), 2) as prix_moyen 
FROM focaccia;

-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT b.nom_boisson, m.nom_marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom_boisson;

-- 5. Afficher la liste des ingrédients pour une Raclaccia
SELECT i.nom_ingredient
FROM ingredient i
JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
JOIN focaccia f ON fi.id_focaccia = f.id_focaccia
WHERE f.nom_focaccia = 'Raclaccia';

-- 6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) as nombre_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia;

-- 7. Afficher le nom de la focaccia qui a le plus d'ingrédients
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) as nombre_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia
ORDER BY nombre_ingredients DESC
LIMIT 1;

-- 8. Afficher la liste des focaccia qui contiennent de l'ail
SELECT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'Ail';

-- 9. Afficher la liste des ingrédients inutilisés
SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
WHERE fi.id_ingredient IS NULL;

-- 10. Afficher la liste des focaccia qui n'ont pas de champignons
SELECT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'Champignon'
);