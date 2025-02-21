-- Insertion des marques dans l'ordre exact du fichier
INSERT INTO marque (id_marque, nom_marque) VALUES
    (1, 'Coca-cola'),
    (2, 'Cristalline'),
    (3, 'Monster'),
    (4, 'Pepsico');

-- Insertion des boissons avec les bonnes références de marques
INSERT INTO boisson (nom_boisson, id_marque) VALUES
    ('Coca-cola zéro', 1),
    ('Coca-cola original', 1),
    ('Fanta citron', 1),
    ('Fanta orange', 1),
    ('Capri-sun', 1),
    ('Pepsi', 4),
    ('Pepsi Max Zéro', 4),
    ('Lipton zéro citron', 4),
    ('Lipton Peach', 4),
    ('Monster energy ultra gold', 3),
    ('Monster energy ultra blue', 3),
    ('Eau de source', 2);