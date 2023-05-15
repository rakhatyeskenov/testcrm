-- Клиенты
CREATE TABLE clients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  surname VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(255),
  address VARCHAR(255)
);

-- Заказы
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  time TIME NOT NULL,
  customer_id INTEGER REFERENCES clients(id),
  employee_id INTEGER REFERENCES employees(id),
  total_amount DECIMAL(10, 2),
  discount DECIMAL(10, 2),
  status VARCHAR(20) NOT NULL
);

-- Товары
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2),
  quantity INTEGER,
  category_id INTEGER REFERENCES product_categories(id),
  image VARCHAR(255)
);

-- Категории товаров
CREATE TABLE product_categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Сотрудники
CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  surname VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(255),
  address VARCHAR(255),
  date_of_birth DATE,
  hire_date DATE,
  role_id INTEGER REFERENCES employee_roles(id)
);

-- Роли сотрудников
CREATE TABLE employee_roles (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Склады
CREATE TABLE warehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255)
);

-- Поставщики
CREATE TABLE suppliers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  contact_person VARCHAR(255),
  phone VARCHAR(20),
  address VARCHAR(255),
  email VARCHAR(255)
);

-- Закупки
CREATE TABLE purchases (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  supplier_id INTEGER REFERENCES suppliers(id),
  product_id INTEGER REFERENCES products(id),
  quantity INTEGER,
  price DECIMAL(10, 2)
);

-- Скидки
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  discount_type VARCHAR(20) NOT NULL,
  discount_value DECIMAL(10, 2) NOT NULL
);

-- Акции
CREATE TABLE promotions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  start_date DATE,
  end_date DATE
);