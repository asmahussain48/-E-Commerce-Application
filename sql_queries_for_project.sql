create database HackSquadEcommerce_db;
use HackSquadEcommerce_db;
create table users(
    user_id int auto_increment primary key,
    username varchar(50) not null unique,
    email varchar(100) not null unique,
    password varchar(255) not null,
    full_name varchar(100),
    phone_number varchar(20),
    address text
);
select * from users;


drop table products;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand VARCHAR(100),
    model VARCHAR(100),
    product_description TEXT,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0), -- price shouldn't be negative
    quantity INT NOT NULL DEFAULT 1 CHECK (quantity >= 0),
    is_available BOOLEAN DEFAULT TRUE
);

INSERT INTO products ( name, brand, model, product_description, price, quantity, is_available) VALUES
( 'iPhone 14', 'Apple', '14', 'Latest Apple iPhone with A15 Bionic chip', 999.99, 50, 1),
( 'Samsung Galaxy S21', 'Samsung', 'S21', 'Flagship Samsung Galaxy S21 with 5G support', 799.99, 60, 1),
( 'OnePlus 9', 'OnePlus', '9', 'OnePlus 9 with Snapdragon 888 chipset', 729.99, 55, 1),
( 'Xiaomi Mi 11', 'Xiaomi', 'Mi 11', 'Mi 11 with 108MP camera and Snapdragon 888', 749.99, 40, 1),
( 'Google Pixel 6', 'Google', 'Pixel 6', 'Google Pixel 6 with Google Tensor chip', 599.99, 70, 1),
( 'Sony Xperia 1 III', 'Sony', '1 III', 'Sony Xperia 1 III with 4K OLED display', 1299.99, 30, 1),
( 'Samsung Galaxy A52', 'Samsung', 'A52', 'Samsung Galaxy A52 with AMOLED display', 349.99, 100, 1),
( 'iPhone 13 Pro', 'Apple', '13 Pro', 'iPhone 13 Pro with 120Hz ProMotion display', 1099.99, 45, 1),
( 'Oppo Find X3 Pro', 'Oppo', 'Find X3 Pro', 'Oppo flagship with Snapdragon 888 and 120Hz AMOLED', 1149.99, 25, 1),
( 'Realme GT', 'Realme', 'GT', 'Realme GT with Snapdragon 870 and AMOLED display', 499.99, 80, 1),
( 'Motorola Edge 20', 'Motorola', 'Edge 20', 'Motorola Edge 20 with 108MP camera and 5G support', 649.99, 60, 1),
( 'Xiaomi Redmi Note 10 Pro', 'Xiaomi', 'Redmi Note 10 Pro', 'Redmi Note 10 Pro with 108MP camera', 249.99, 120, 1),
( 'Vivo V21', 'Vivo', 'V21', 'Vivo V21 with 44MP selfie camera', 329.99, 90, 1),
( 'Huawei P40 Pro', 'Huawei', 'P40 Pro', 'Huawei P40 Pro with Leica camera and 5G support', 999.99, 35, 1),
( 'Nokia 8.3 5G', 'Nokia', '8.3 5G', 'Nokia 8.3 5G with Snapdragon 765G and ZEISS camera', 699.99, 50, 1),
( 'Asus Zenfone 8', 'Asus', 'Zenfone 8', 'Asus Zenfone 8 with Snapdragon 888', 649.99, 45, 1),
( 'Motorola Moto G Power', 'Motorola', 'Moto G Power', 'Motorola Moto G Power with large battery', 249.99, 150, 1),
( 'Samsung Galaxy Z Fold 3', 'Samsung', 'Z Fold 3', 'Samsung Galaxy Z Fold 3 with foldable display', 1799.99, 15, 1),
( 'iPhone SE 2020', 'Apple', 'SE 2020', 'iPhone SE with A13 Bionic chip', 399.99, 200, 1),
( 'Xiaomi Poco X3 Pro', 'Xiaomi', 'Poco X3 Pro', 'Poco X3 Pro with Snapdragon 860 and 120Hz display', 249.99, 130, 1),
( 'Google Pixel 5', 'Google', 'Pixel 5', 'Google Pixel 5 with 5G and OLED display', 699.99, 50, 1),
( 'Honor 50', 'Honor', '50', 'Honor 50 with Snapdragon 778G and 108MP camera', 499.99, 60, 1),
( 'iPhone 12', 'Apple', '12', 'iPhone 12 with A14 Bionic chip and 5G support', 699.99, 85, 1),
( 'Samsung Galaxy A32', 'Samsung', 'A32', 'Samsung Galaxy A32 with 90Hz Super AMOLED', 249.99, 160, 1),
( 'Xiaomi Mi 10', 'Xiaomi', 'Mi 10', 'Xiaomi Mi 10 with 108MP camera and Snapdragon 865', 799.99, 45, 1),
( 'Realme 8 Pro', 'Realme', '8 Pro', 'Realme 8 Pro with 108MP quad camera', 299.99, 100, 1),
( 'Oppo Reno 6', 'Oppo', 'Reno 6', 'Oppo Reno 6 with MediaTek Dimensity 900', 499.99, 70, 1),
( 'Vivo Y20', 'Vivo', 'Y20', 'Vivo Y20 with Snapdragon 460 and 5000mAh battery', 149.99, 180, 1);


select * from products;
CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1
);
select * from cart;
create table categories (
    id int auto_increment primary key,
    name varchar(100) n
    ot null,
    type enum('new', 'old') not null,
    description text
);
INSERT INTO categories (id, name) VALUES
(1, 'Electronics'),
(2, 'Mobile Phones'),
(3, 'Laptops'),
(4, 'Accessories');

select * from categories;