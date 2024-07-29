--Drop the table if exists
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
	
--Create tables
CREATE TABLE category(
	category_id VARCHAR (5) NOT NULL PRIMARY KEY,
	category VARCHAR (15) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR (8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR (20) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (20),
	last_name VARCHAR (20),
	email VARCHAR (50) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT  NOT NULL UNIQUE,
	company_name VARCHAR (50),
	description VARCHAR (100),
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR (20),
	backers_count DECIMAL NOT NULL,
	country CHAR (3),
	currency CHAR (3),
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (5) NOT NULL,
	subcategory_id VARCHAR (20) NOT NULL,
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	PRIMARY KEY (cf_id,contact_id)
);


--View table columns and datatypes
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
SELECT * FROM contacts;
