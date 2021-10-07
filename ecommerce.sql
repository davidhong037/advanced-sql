CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC
);

CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  user_id INTEGER NOT NULL REFERENCES users(user_id),
  product_id INTEGER NOT NULL REFERENCES products(product_id)
 );

INSERT INTO users (name, email)
VALUES ('David', 'davidhong037@gmail.com'),
('Lisa', 'Lisa@gmail.com'),
('Dennis','dennis@gmail.com')

INSERT INTO products (name, price)
VALUES ('watch', 399.99),
('headphones', 299.95),
('phone', 599.99),
('toy', 39.99),
('coffee mug', 15.99);
