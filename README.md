
# Crowdfunding Data Transformation Project

## Overview

This project involves extracting and transforming data from the `crowdfunding.xlsx` Excel file to create various DataFrames, which are then exported as CSV files. Additionally, a PostgreSQL database is created and populated with this data.


### 1. Create the Category and Subcategory DataFrames

#### Category DataFrame

Extract and transform the `crowdfunding.xlsx` Excel data to create a category DataFrame with the following columns:

- `category_id`: Entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- `category`: Category titles

Export the category DataFrame as `category.csv` and save it to the GitHub repository.

#### Subcategory DataFrame

Extract and transform the `crowdfunding.xlsx` Excel data to create a subcategory DataFrame with the following columns:

- `subcategory_id`: Entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- `subcategory`: Subcategory titles

Export the subcategory DataFrame as `subcategory.csv` and save it the GitHub repository.

### 2. Create the Campaign DataFrame

Extract and transform the `crowdfunding.xlsx` Excel data to create a campaign DataFrame with the following columns:

- `cf_id`
- `contact_id`
- `company_name`
- `blurb` (renamed to `description`)
- `goal` (converted to the float data type)
- `pledged` (converted to the float data type)
- `outcome`
- `backers_count`
- `country`
- `currency`
- `launched_at` (renamed to `launch_date` and with the UTC times converted to the datetime format)
- `deadline` (renamed to `end_date` and with the UTC times converted to the datetime format)
- `category_id` (with unique identification numbers matching those in the `category_id` column of the category DataFrame)
- `subcategory_id` (with unique identification numbers matching those in the `subcategory_id` column of the subcategory DataFrame)

Export the campaign DataFrame as `campaign.csv` and save it to the GitHub repository.

### 3. Create the Contacts DataFrame

Choose one of the following two options for extracting and transforming the data from the `contacts.xlsx` Excel data:

#### Option 1: Use Python Dictionary Methods

1. Import the `contacts.xlsx` file into a DataFrame.
2. Iterate through the DataFrame, converting each row to a dictionary.
3. Extract the dictionary values from the keys by using a Python list comprehension.
4. Add the values for each row to a new list.
5. Create a new DataFrame that contains the extracted data.
6. Split each `name` column value into a first and last name, and place each in a new column.
7. Clean and export the DataFrame as `contacts.csv` and save it to your GitHub repository.

#### Option 2: Use Regular Expressions

1. Import the `contacts.xlsx` file into a DataFrame.
2. Extract the `contact_id`, `name`, and `email` columns by using regular expressions.
3. Create a new DataFrame with the extracted data.
4. Convert the `contact_id` column to the integer type.
5. Split each `name` column value into a first and a last name, and place each in a new column.
6. Clean and then export the DataFrame as `contacts.csv` and save it to the GitHub repository.

### 4. Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD.
2. Use the information from the ERD to create a table schema for each CSV file.
3. Save the database schema as a Postgres file named `crowdfunding_db_schema.sql`, and save it to the GitHub repository.
4. Create a new Postgres database, named `crowdfunding_db`.
5. Using the database schema, create the tables in the correct order to handle the foreign keys.
6. Verify the table creation by running a SELECT statement for each table.
7. Import each CSV file into its corresponding SQL table.
8. Verify that each table has the correct data by running a SELECT statement for each.
```