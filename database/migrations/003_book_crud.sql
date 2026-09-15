-- Book SQL #1 : select all books
 SELECT * FROM books;

  -- books SQL #2: select books in asc order;
 SELECT * FROM books
    ORDER BY book_id ASC;

-- book SQL #3 : select books in desc order by id;
SELECT * FROM books
    ORDER BY book_id DESC;

-- book SQL #4 : select books in asc order by book_title;
SELECT * FROM books
    ORDER BY book_title ASC;

-- book SQL #5 : select books in desc order by book_title;
SELECT * FROM books
    ORDER BY book_title DESC;

-- book SQL #6 : select students in asc order by book_author;
SELECT * FROM books
    ORDER BY book_author ASC;

-- book SQL #7 : select students in desc order by book_author;
SELECT * FROM books
    ORDER BY book_author DESC;

-- book SQL #8 : select students in asc order by book_category;
SELECT * FROM books
    ORDER BY book_category ASC;

-- book SQL #9 : select students in desc order by book_category;
SELECT * FROM books
    ORDER BY book_category DESC;

-- You can modify displayed columns by selecting
-- specific columns after SELECT command

-- book SQL #8 display all students book_author and book_title;
SELECT book_title,
       book_author,
       book_category
FROM books
ORDER BY book_title ASC;

-- book SQL #9 limit 1 you can change the limit to any number
SELECT book_title,
       book_author,
       book_category
FROM books
ORDER BY book_title ASC
LIMIT 1;

-- book SQL #10 - Select a book based on id
SELECT book_title,
       book_author,
       book_category
FROM books
ORDER BY book_id = 1
LIMIT 1;

-- book SQL #10 - update book author a book base on id
UPDATE books
SET book_title='Pride and Prejudice',
    book_author= 'Jane Austen',
    book_category='Classic Romance'
WHERE book_id = 1;