CREATE DATABASE SHOP;


--جدول مشتریان
CREATE TABLE CUSTOMERS (
	CUSTOMER_ID INT PRIMARY KEY IDENTITY(1,1),
	CUSTOMER_NAME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	REGISTRATION_DATE DATE NOT NULL
);


--جدول محصولات
CREATE TABLE PRODUCTS (
	PRODUCT_ID INT PRIMARY KEY IDENTITY(1,1),
	PRODUCT_NAME VARCHAR(100) NOT NULL,
	description TEXT,
	PRICE DECIMAL(18,0) NOT NULL
);



--جدول سفارشات
CREATE TABLE ORDERS (
	ORDER_ID INT PRIMARY KEY IDENTITY(1,1),
	CUSTOMER_ID INT,
	ORDER_DATE DATE NOT NULL,
	ORDER_AMOUNT DECIMAL(18,0),
	PRODUCT_ID INT,
	FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
	FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)

);




--جدول امتیازات
CREATE TABLE RATINGS (
RATING_ID INT PRIMARY KEY IDENTITY(1,1),
PRODUCT_ID INT,
CUSTOMER_ID INT,
RATING TINYINT NOT NULL CHECK(RATING BETWEEN 1 AND 5),
RATING_DATE DATE NOT NULL, 
FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);
