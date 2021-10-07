-- Problem 1
ALTER TABLE animals
ADD COLUMN location VARCHAR(255) NOT NULL

-- Problem 2
INSERT INTO animals (age, location, name, type)
VALUES (5, 'NYC', 'Pinky', 'Cat'),
(15, 'Miami', 'Pika', 'Elephant'),
(20, 'California', 'Bob', 'Rhino');

-- Problem 3
ALTER TABLE animals
RENAME COLUMN type TO species

-- Problem 4
ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(100);

