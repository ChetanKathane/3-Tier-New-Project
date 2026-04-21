CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE IF NOT EXISTS categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  stock INT DEFAULT 0,
  image_url VARCHAR(500),
  category_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Seed categories
INSERT INTO categories (name, description) VALUES
('Electronics', 'Gadgets, devices and tech accessories'),
('Clothing', 'Fashion and apparel for all styles'),
('Home & Kitchen', 'Everything for your living space'),
('Books', 'Literature, learning and entertainment'),
('Sports', 'Fitness gear and outdoor equipment');

-- Seed products
INSERT INTO products (name, description, price, stock, image_url, category_id) VALUES
('Wireless Headphones Pro', 'Premium noise-cancelling over-ear headphones with 30hr battery', 129.99, 45, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400', 1),
('Smart Watch Series X', 'Track fitness, notifications and more with AMOLED display', 249.99, 30, 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400', 1),
('USB-C Hub 7-in-1', 'Expand your ports: HDMI, USB3.0, SD card and more', 49.99, 100, 'https://images.unsplash.com/photo-1625948515301-5a1c5b71ca62?w=400', 1),
('Classic Denim Jacket', 'Timeless indigo wash denim jacket, relaxed fit', 89.99, 60, 'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=400', 2),
('Running Sneakers Ultra', 'Lightweight and responsive sole for daily running', 119.99, 75, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400', 2),
('Minimalist Tee Pack', 'Set of 3 premium cotton crewneck t-shirts', 39.99, 120, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400', 2),
('Cast Iron Skillet', 'Pre-seasoned 12-inch skillet for stovetop and oven use', 44.99, 55, 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400', 3),
('Bamboo Cutting Board Set', 'Set of 3 eco-friendly bamboo cutting boards', 34.99, 80, 'https://images.unsplash.com/photo-1588168333986-5078d3ae3976?w=400', 3),
('Pour-Over Coffee Kit', 'Complete coffee brewing kit with dripper and kettle', 69.99, 40, 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=400', 3),
('Atomic Habits', 'Build good habits and break bad ones by James Clear', 18.99, 200, 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400', 4),
('The Design of Everyday Things', 'Don Norman classic on UX and product design', 22.99, 90, 'https://images.unsplash.com/photo-1589998059171-988d887df646?w=400', 4),
('Yoga Mat Premium', '6mm thick non-slip eco-rubber yoga mat with carry strap', 59.99, 65, 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=400', 5),
('Resistance Bands Set', 'Set of 5 latex bands with handles for strength training', 29.99, 150, 'https://images.unsplash.com/photo-1598971457999-ca4ef48a9a71?w=400', 5),
('Hiking Backpack 45L', 'Waterproof trail-ready pack with hip belt and hydration sleeve', 149.99, 35, 'https://images.unsplash.com/photo-1622260614153-03223fb72052?w=400', 5);
