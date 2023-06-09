CREATE TABLE
    users (
        user_id int NOT NULL AUTO_INCREMENT,
        user_lastname varchar(100) NOT NULL,
        user_firstname varchar(100) NOT NULL,
        user_username varchar(50) NOT NULL,
        user_password varchar(50) NOT NULL,
        user_email varchar(100) NOT NULL,
        user_phonenumber varchar(30) NOT NULL,
        user_role varchar(22) NOT NULL,
        PRIMARY KEY(user_id)
    );

CREATE TABLE
    Suppliers (
        supplier_id int NOT NULL AUTO_INCREMENT,
        supplier_lastname varchar(50) NOT NULL,
        supplier_firstname varchar(50) NOT NULL,
        contact_number varchar(30) NOT NULL,
        email varchar(100) NOT NULL,
        address varchar(100) NOT NULL,
        country varchar(50) NOT NULL,
        postal_code varchar(50) NOT NULL,
        active varchar(10) NOT NULL,
        PRIMARY KEY(supplier_id)
    );

CREATE TABLE
    category_list (
        category_id int NOT NULL AUTO_INCREMENT,
        category_name varchar(100) NOT NULL,
        image_name varchar(100) NOT NULL,
        active varchar(10) NOT NULL,
        PRIMARY KEY(category_id)
    );

CREATE TABLE
    food_list (
        food_id int NOT NULL AUTO_INCREMENT,
        category_id INT NOT NULL,
        supplier_id int NOT NULL,
        food_name varchar(100) NOT NULL,
        description varchar(255) NOT NULL,
        food_price decimal(10, 2) NOT NULL,
        available_quantity int NOT NULL,
        image_name varchar(100) NOT NULL,
        active varchar(10) NOT NULL,
        PRIMARY KEY(food_id),
        FOREIGN KEY(category_id) REFERENCES category_list(category_id),
        FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id)
    );

CREATE TABLE
    delivery_rider (
        rider_id int NOT NULL AUTO_INCREMENT,
        rider_lastname varchar(50) NOT NULL,
        rider_firstname varchar(50) NOT NULL,
        contact_number varchar(30) NOT NULL,
        email varchar(100) NOT NULL,
        active varchar(45) NOT NULL,
        PRIMARY KEY(rider_id)
    );

CREATE TABLE
    order_details (
        order_id varchar(100) NOT NULL,
        customer_lastname varchar(100) NOT NULL,
        customer_firstname varchar(100) NOT NULL,
        contact_number varchar(30) NOT NULL,
        delivery_address varchar(255) NOT NULL,
        postalcode varchar(50) NOT NULL,
        rider_id int NOT NULL,
        food_id int NOT NULL,
        quantity int NOT NULL,
        total decimal(10, 2) NOT NULL,
        mode_of_payment varchar(50) NOT NULL,
        order_date datetime NOT NULL,
        expected_delivery datetime NOT NULL,
        status varchar(45) NOT NULL,
        PRIMARY KEY(order_id),
        FOREIGN KEY(rider_id) REFERENCES delivery_rider(rider_id),
        FOREIGN KEY(food_id) REFERENCES food_list(food_id)
    );

CREATE TABLE
    messages (
        message_id int NOT NULL AUTO_INCREMENT,
        user_id int NOT NULL,
        message varchar(255) NOT NULL,
        date_message datetime NOT NULL,
        PRIMARY KEY(message_id),
        FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

CREATE VIEW FAMILY_MEAL AS 
	SELECT food_name, food_price FROM food_list WHERE food_price >= 
5; 

CREATE VIEW BUDGET_MEAL AS 
	SELECT food_name, food_price FROM food_list WHERE food_price < 
5; 