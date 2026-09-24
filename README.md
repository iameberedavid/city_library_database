# City Library Database

![Data Analysis](https://img.shields.io/badge/Data%20Analysis-blue)
![City Library](https://img.shields.io/badge/City%20Library-brightgreen)
![Database Design](https://img.shields.io/badge/Database%20Design-blue)
![Books](https://img.shields.io/badge/Books-brightgreen)
![SQL](https://img.shields.io/badge/SQL-blue)
![MIT](https://img.shields.io/badge/MIT%20License-brightgreen)

---

## 📌 Project Overview

The **City Library Database** contains information about books held by a fictional public library, including:

* Book title
* Author
* Genre
* Year published
* Availability status
* Total copies
* Copies currently on loan

The project demonstrates how SQL can be used to create a database, structure data, populate tables, and answer business-style questions through queries.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Create and manage a MySQL database
* Design a relational table structure
* Insert structured data into a database
* Retrieve specific columns using `SELECT`
* Rename columns using aliases
* Identify unique values using `DISTINCT`
* Filter records using `WHERE`
* Compare values between columns
* Combine multiple conditions using `AND` and `OR`
* Search text using `LIKE`
* Extract surnames using MySQL string functions
* Translate practical information requirements into SQL queries

---

## 🗂️ Database Structure

### `books`

| Column           | Data Type    | Description                                      |
| ---------------- | ------------ | ------------------------------------------------ |
| `book_id`        | INT          | Unique identifier for each book                  |
| `title`          | VARCHAR(200) | Title of the book                                |
| `author`         | VARCHAR(100) | Author's full name                               |
| `genre`          | VARCHAR(50)  | Genre/category of the book                       |
| `year_published` | INT          | Year the book was published                      |
| `available`      | TINYINT(1)   | Indicates whether at least one copy is available |
| `copies_total`   | INT          | Total number of copies owned by the library      |
| `copies_on_loan` | INT          | Number of copies currently on loan               |

---

## 🛠️ Technologies Used

* **MySQL**
* **MySQL Workbench**
* **SQL**

---

## 📁 Project Files

```text
city-library/
│
├── city_library_seed.sql
├── city_library_queries.sql
└── README.md
```

### `city_library_seed.sql`

Contains the SQL statements required to:

1. Create the `city_library` database
2. Select the database
3. Create the `books` table
4. Insert the sample library data

### `city_library_queries.sql`

Contains SQL queries designed to retrieve information and answer specific questions about the library's book collection.

---

## 🔎 SQL Questions Explored

The query script answers questions such as:

1. What are the titles and authors of all books?
2. What distinct genres are available in the library?
3. Which books were published after 2000?
4. Which books have all their copies currently on loan?
5. Which books are currently unavailable?
6. Which available Fiction books were published before 1990?
7. Which books are either in the Science genre or have more than three copies?
8. Which book titles contain the word **"war"**?
9. Which authors have a surname beginning with the letter **M**?

---

## 🧠 Key SQL Concepts Demonstrated

### Column Aliases

```sql
SELECT
    title AS `Book Title`,
    author AS Author
FROM city_library.books;
```

### DISTINCT

Used to identify the unique genres represented in the library:

```sql
SELECT DISTINCT genre
FROM city_library.books;
```

### Filtering with WHERE

```sql
SELECT *
FROM city_library.books
WHERE year_published > 2000;
```

### Comparing Two Columns

The project demonstrates comparing values within the same record:

```sql
SELECT *
FROM city_library.books
WHERE copies_on_loan >= copies_total;
```

This identifies books for which all copies are currently on loan.

### Combining Conditions

```sql
SELECT *
FROM city_library.books
WHERE genre = 'Fiction'
  AND year_published < 1990
  AND available = 1;
```

### OR Conditions

```sql
SELECT *
FROM city_library.books
WHERE genre = 'Science'
   OR copies_total > 3;
```

### Pattern Matching with LIKE

```sql
SELECT *
FROM city_library.books
WHERE title LIKE '%war%';
```

### Extracting a Surname

Because the `author` field contains the author's full name, `SUBSTRING_INDEX()` can be used to extract the final name component:

```sql
SELECT *
FROM city_library.books
WHERE SUBSTRING_INDEX(author, ' ', -1) LIKE 'M%';
```

This approach works with names containing a first name, middle name, and surname, provided the surname is the final space-separated component.

---

## ▶️ How to Run the Project

### 1. Open MySQL Workbench

Open MySQL Workbench and connect to your MySQL server.

### 2. Run the Seed Script

Open:

```text
city_library_seed.sql
```

Execute the script.

This will create the database, create the `books` table, and populate it with sample data.

### 3. Verify the Database

Run:

```sql
USE city_library;

SELECT *
FROM books;
```

### 4. Run the Query Script

Open:

```text
city_library_queries.sql
```

Run each query individually to explore the dataset and review the results.

---

## 📊 Sample Data

The database contains 20 sample books across several genres, including:

* Fiction
* Science
* History
* Non-Fiction

The dataset includes well-known works such as:

* *The Great Gatsby*
* *1984*
* *Sapiens*
* *War and Peace*
* *The Selfish Gene*
* *Things Fall Apart*
* *Americanah*
* *Atomic Habits*

---

## 💡 Key Learning Outcomes

Through this project, I strengthened my understanding of:

* Relational database fundamentals
* SQL syntax and query structure
* Data filtering and conditional logic
* Column aliases
* Distinct values
* Comparison operators
* Logical operators
* Pattern matching
* String manipulation
* Translating natural-language questions into SQL queries

The project also reinforced an important principle in data analysis: **the accuracy of an SQL query depends not only on valid syntax, but also on whether its logic correctly represents the question being asked.**

---

## 🚀 Future Improvements

Potential extensions to the project include:

* Adding `members` and `loans` tables
* Creating relationships using foreign keys
* Recording individual borrowing transactions
* Tracking due dates and overdue books
* Adding library members and membership information
* Creating views for frequently requested information
* Adding stored procedures
* Introducing data validation constraints
* Performing more advanced analytical queries using `GROUP BY`, aggregate functions, subqueries, CTEs, and window functions

---

## 👤 Author

**Chidiebere David Ogbonna**

Data Analyst | SQL | Power BI | Tableau | Python | Excel

## Contact

Feel free to send your reviews, suggestions, questions and collaboration requests to chidieberedavid326@gmail.com

| Detail | Link |
| ------ | ---- |
| Email | chidieberedavid326@gmail.com |
| LinkedIn | [chidieberedavidogbonna](https://www.linkedin.com/in/chidieberedavidogbonna/) |
| GitHub | [iameberedavid](https://github.com/iameberedavid) |
| Medium | [eberedavid](https://eberedavid.medium.com) |
| Twitter | [iameberedavid](https://twitter.com/iameberedavid) |

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## ⚠️ Disclaimer

This project is intended for educational and portfolio purposes.
