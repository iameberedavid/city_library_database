-- ============================================================
-- City Library Query Script
-- Querying the City Library data for insights
-- ============================================================

-- 1. Select all book titles and authors. Alias the columns as 'Book Title' and 'Author'
SELECT
	title AS `Book Title`,
    author AS Author
FROM city_library.books;

-- 2. Return only the distinct genres available in the library. Alias the result as 'Genre'
SELECT DISTINCT genre AS Genre
FROM city_library.books;

-- 3. Return all books published after 2000
SELECT *
FROM city_library.books
WHERE year_published > 2000;

-- 4. Return all books where copies_on_loan is greater than or equal to copies_total.
SELECT *
FROM city_library.books
WHERE copies_on_loan >= copies_total;

-- 5. Return all books that are not currently available (available = 1)
SELECT *
FROM city_library.books
WHERE available = 0;

-- 6. Return all Fiction books published before 1990 that are currently available (available = 1)
SELECT *
FROM city_library.books
WHERE genre = 'Fiction'
AND	year_published < 1990
AND	available = 1;

-- 7. Return all books that are either in the Science genre OR have more than 3 copies total
SELECT *
FROM city_library.books
WHERE genre = 'Science'
OR	copies_total > 3;

-- 8. Return all books whose title contains the word 'war' anywhere in the title
SELECT *
FROM city_library.books
WHERE title LIKE "%war%";

-- 9. Return all books whose author's surname starts with the letter 'M'
SELECT *
FROM city_library.books
WHERE SUBSTRING_INDEX(author, ' ', -1) LIKE 'M%';