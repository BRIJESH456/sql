CREATE TABLE products (
  product_id Integer ,
  product_category_id Integer,
  product_name varchar2(100),
  product_description varchar2(255) ,
  product_price float ,
  product_image varchar2(255) ,
  CONSTRAINT product_id_pk PRIMARY KEY (product_id));
  
CREATE TABLE categories (
  category_id Integer  ,
  category_department_id Integer ,
  category_name  varchar2(100),
  CONSTRAINT category_id_pk PRIMARY KEY (category_id));
  
CREATE TABLE customers (
  customer_id Integer ,
  customer_fname varchar2(100) ,
  customer_lname varchar2(100) ,
  customer_email varchar2(100) ,
  customer_password varchar2(100) ,
  customer_street varchar2(255) ,
  customer_city varchar2(100) ,
  customer_state varchar2(100) ,
  customer_zipcode varchar2(100) ,
   CONSTRAINT customer_id_pk PRIMARY KEY (customer_id));

CREATE TABLE departments (
  department_id Integer ,
  department_name varchar2(100),
  CONSTRAINT department_id_pk PRIMARY KEY (department_id));
  
CREATE TABLE order_items (
  order_item_id Integer,
  order_item_order_id Integer,
  order_item_product_id Integer,
  order_item_quantity Integer,
  order_item_subtotal decimal NOT NULL,
  order_item_product_price decimal NOT NULL,
   CONSTRAINT order_item_id_pk PRIMARY KEY (order_item_id));
  
CREATE TABLE orders (
  order_id Integer ,
  order_date varchar2(25),
  order_customer_id Integer,
  order_status varchar2(45),
  CONSTRAINT order_id_pk PRIMARY KEY (order_id));

  
  
