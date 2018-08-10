CREATE TABLE products (
  product_id number(11) NOT NULL ,
  product_category_id number(11) NOT NULL,
  product_name varchar2(45) NOT NULL,
  product_description varchar2(255) NOT NULL,
  product_price float NOT NULL,
  product_image varchar2(255) NOT NULL,
  CONSTRAINT product_id_pk PRIMARY KEY (product_id));
  
CREATE TABLE categories (
  category_id number(11) NOT NULL ,
  category_department_id number(11) NOT NULL,
  category_name varchar2(45) NOT NULL,
  CONSTRAINT category_id_pk PRIMARY KEY (category_id));
  
CREATE TABLE customers (
  customer_id number(11) NOT NULL,
  customer_fname varchar2(45) NOT NULL,
  customer_lname varchar2(45) NOT NULL,
  customer_email varchar2(45) NOT NULL,
  customer_password varchar2(45) NOT NULL,
  customer_street varchar2(255) NOT NULL,
  customer_city varchar2(45) NOT NULL,
  customer_state varchar2(45) NOT NULL,
  customer_zipcode varchar2(45) NOT NULL,
   CONSTRAINT customer_id_pk PRIMARY KEY (customer_id));

CREATE TABLE departments (
  department_id number(11) NOT NULL ,
  department_name varchar2(45) NOT NULL,
  CONSTRAINT department_id_pk PRIMARY KEY (department_id));
  
CREATE TABLE order_items (
  order_item_id number(11) NOT NULL,
  order_item_order_id number(11) NOT NULL,
  order_item_product_id number(11) NOT NULL,
  order_item_quantity number(4) NOT NULL,
  order_item_subtotal decimal NOT NULL,
  order_item_product_price decimal NOT NULL,
   CONSTRAINT order_item_id_pk PRIMARY KEY (order_item_id));
  
CREATE TABLE orders (
  order_id number(11) NOT NULL ,
  order_date date NOT NULL,
  order_customer_id number(11) NOT NULL,
  order_status varchar2(45) NOT NULL,
  CONSTRAINT order_id_pk PRIMARY KEY (order_id));
  
  
