use adlister_exercise_db;


INSERT INTO users (name, email, password)
VALUES ('alyssa', 'alyssa@mail.com', 'password'),
    ('jacob', 'jacob@mail.com', 'password'),
    ('chris', 'chris@mail.com', 'password'),
    ('christian', 'christian@mail.com', 'password');

TRUNCATE ads;
INSERT INTO ads (title, description, user_id)
VALUES ('Rehoming Dog', 'Rehoming fee of $25', 1),
    ('Queen Bed', 'Never used', 1),
    ('New mop', 'Doesn''t work on my floors', 2),
    ('Macbook', 'Dropped out of school', 3),
    ('Yeti', 'Brand new. Never used', 4);


INSERT INTO categories (name)
VALUES ('household'),
    ('animals'),
    ('jewelry'),
    ('furniture'),
    ('tech');

TRUNCATE ad_category;
INSERT INTO ad_category(ad_id, category_id)
VALUES (1, 2), (2, 4), (2, 1), (3, 1), (4,5), (5, 1);

SELECT * FROM users
JOIN ads ON ads.user_id = users.id
WHERE ads.title = 'Queen Bed';

SELECT name AS category_name from categories
JOIN ad_category  AS a on categories.id = a.category_id
JOIN ads on ads.id = a.ad_id
WHERE ads.title = 'Queen Bed';

SELECT * from categories
JOIN ad_category AS a on categories.id = a.category_id
JOIN ads on ads.id = a.ad_id
WHERE categories.name = 'household';

SELECT * FROM ads
JOIN users u on ads.user_id = u.id
WHERE name = 'alyssa';


