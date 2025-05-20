CREATE Table user1 (
    id SERIAL PRIMARY KEY,
    uName VARCHAR(25) NOT NULL
)

CREATE Table user1Post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES user1(id)
)

INSERT INTO user1 (uName) VALUES
    ('akash'), 
    ('batash'),
    ('sagor'),
    ('nodi')

INSERT into user1Post (title, user_id) VALUES 
('phrases, and web pages between', 1),
('instantly translates words', 3),
('offered free of charge', 4),
('Google service', 4)

SELECT * FROM user1

SELECT * FROM user1post

SELECT title, uName from user1post
 JOIN user1 ON user1post.user_id = user1.id

SELECT * from user1post AS uP
 JOIN user1 AS u ON uP.user_id = u.id

------------------ left, right join
INSERT INTO user1post (id, title, user_id) VALUES
(5, 'this is test purpose', NULL)

SELECT * from user1post
LEFT JOIN user1 on user1post.user_id = user1.id  -- similar output1

SELECT * FROM user1
LEFT JOIN user1post ON user1.id = user1post.user_id -- similar2

SELECT * FROM user1post
RIGHT JOIN user1 on user1post.user_id = user1.id -- similar2

SELECT * FROM user1
RIGHT JOIN user1post ON user1.id = user1post.user_id -- similar output1






 DROP Table user1

 DROP Table user1post