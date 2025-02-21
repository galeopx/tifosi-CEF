-- Insertion des ingrédients
INSERT INTO ingredient (nom_ingredient) VALUES
    ('Ail'),
    ('Ananas'),
    ('Artichaut'),
    ('Bacon'),
    ('Base Tomate'),
    ('Base crème'),
    ('Champignon'),
    ('Chèvre'),
    ('Cresson'),
    ('Emmental'),
    ('Gorgonzola'),
    ('Jambon cuit'),
    ('Jambon fumé'),
    ('Œuf'),
    ('Oignon'),
    ('Olive noire'),
    ('Olive verte'),
    ('Parmesan'),
    ('Piment'),
    ('Poivre'),
    ('Pomme de terre'),
    ('Raclette'),
    ('Salami'),
    ('Tomate cerise'),
    ('Mozzarella');
    
-- Insertion des focaccias
INSERT INTO focaccia (nom_focaccia, prix_focaccia) VALUES
    ('Mozaccia', 9.80),
    ('Gorgonzolaccia', 10.80),
    ('Raclaccia', 8.50),
    ('Emmentalaccia', 9.80),
    ('Traditionale', 8.90),
    ('Hawaienne', 11.20),
    ('Americaine', 10.80),
    ('Paysanne', 12.80);

-- Insertion des liaisons focaccia-ingrédients pour Mozaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Mozaccia'
AND i.nom_ingredient IN ('Base Tomate', 'Mozzarella', 'Cresson', 'Jambon fumé', 'Ail', 'Artichaut', 'Champignon', 'Parmesan', 'Poivre', 'Olive noire');

-- Gorgonzolaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Gorgonzolaccia'
AND i.nom_ingredient IN ('Base Tomate', 'Gorgonzola', 'Cresson', 'Ail', 'Champignon', 'Parmesan', 'Poivre', 'Olive noire');

-- Raclaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Raclaccia'
AND i.nom_ingredient IN ('Base Tomate', 'Raclette', 'Cresson', 'Ail', 'Champignon', 'Parmesan', 'Poivre');

-- Emmentalaccia
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Emmentalaccia'
AND i.nom_ingredient IN ('Base crème', 'Emmental', 'Cresson', 'Champignon', 'Parmesan', 'Poivre', 'Oignon');

-- Traditionale
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Traditionale'
AND i.nom_ingredient IN ('Base Tomate', 'Mozzarella', 'Cresson', 'Jambon cuit', 'Champignon', 'Parmesan', 'Poivre', 'Olive noire');

-- Hawaienne
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Hawaienne'
AND i.nom_ingredient IN ('Base Tomate', 'Mozzarella', 'Cresson', 'Bacon', 'Ananas', 'Piment', 'Parmesan', 'Poivre', 'Olive noire');

-- Americaine
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Americaine'
AND i.nom_ingredient IN ('Base Tomate', 'Mozzarella', 'Cresson', 'Bacon', 'Pomme de terre', 'Parmesan', 'Poivre', 'Olive noire');

-- Paysanne
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient)
SELECT f.id_focaccia, i.id_ingredient
FROM focaccia f, ingredient i
WHERE f.nom_focaccia = 'Paysanne'
AND i.nom_ingredient IN ('Base crème', 'Chèvre', 'Cresson', 'Pomme de terre', 'Jambon fumé', 'Ail', 'Artichaut', 'Champignon', 'Parmesan', 'Poivre', 'Olive noire', 'Œuf');