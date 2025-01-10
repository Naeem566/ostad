-- Dumping data for table `blogs`
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

-- Dumping data for table `categories`
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

-- Dumping data for table `authors`
INSERT INTO authors (author_name) VALUES
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
