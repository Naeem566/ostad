-- Active: 1736363918992@@127.0.0.1@3306@blogs

--authors Table
CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--Categories Table
CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--blogs table
CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- CRUD Operations for authors Table

--create: Add a new author
INSERT INTO authors (author_name) VALUES ("John Doe");

INSERT INTO  authors (author_name) VALUES 
('HR'),
('Finance'),
('Alice'),
('Bob'),
('Chalier'),
('Diana'),
('Eve'),
('John'),
('Sophia'),
('Michael');


--Read: Retrieve all authors
SELECT * FROM authors;

--Read:Reatrieve a specific author by ID
SELECT * FROM authors WHERE id = 3;

--Update: Update an author's name
UPDATE authors SET author_name = 'josim doe' WHERE id = 2;

-- Delete: Delete an author by ID
DELETE FROM authors WHERE id = 1;

--CRUD Operations for categories table

--create: add a new category
INSERT INTO categories(category_name) VALUES ("My Category");

INSERT INTO categories(category_name) VALUES
('Technology'),
('Health & Wellness'),
('Lifestyle'),
('Travel'),
('Education'),
('Food & Drink'),
('Finance'),
('Entertainment'),
('Sports'),
('Fashion');

--Read: Retrieve all categories
SELECT * FROM categories;

--Read: Retrieve a specific category by ID 
SELECT * FROM categories WHERE id = 5;

--Update: update a category name
UPDATE categories SET category_name = "our category" WHERE id = 1;

--Delete: delete a category by ID
DELETE FROM categories WHERE id = 1;

--CRUD Operations for blogs Table

--Create:Add a new table
INSERT INTO blogs(title, body, category_id, author_id)
VALUES 
  ("My Blog", "My Blogs Content", 2, 2),
  ("The Future of AI", "Content about AI advancements", 3, 3),
  ("Travel Diaries", "Exploring new places around the world", 1, 2),
  ("Healthy Living", "Tips on maintaining a balanced lifestyle", 4, 1),
  ("Tech Trends 2025", "Predictions for the next decade in technology", 3, 4),
  ("Life Lessons", "What I've learned through experiences", 5, 2),
  ("Cooking 101", "Simple recipes for beginners", 6, 3),
  ("Fitness Goals", "How to stay fit and healthy in 2025", 4, 5),
  ("Gadget Reviews", "An in-depth review of the latest tech gadgets", 3, 1),
  ("Art and Creativity", "Exploring the world of modern art", 7, 4);

 --Read: Retrieve all blogs
SELECT * FROM blogs

 --Read: Retrieve a specific blog by ID
SELECT * FROM blogs WHERE id = 1;

 --Read: Retrieve blogs with their category and author
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

 --Update: update a blog's title
UPDATE blogs SET title = "My updated blog title" WHERE id = 1;

--Update: update a blogs category or author
UPDATE blogs SET category_id = 4, author_id = 2 WHERE id = 4;

--Delete: delete a blog by ID
DELETE FROM blogs WHERE id = 1;



--to get all blogs written by a specific author 
SELECT authors.author_name, blogs.title, blogs.body, categories.category_name
FROM blogs
JOIN authors ON blogs.author_id = authors.id
JOIN categories ON blogs.category_id = categories.id;

--to get all blogs under a specific category
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.id = 4;

