CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
)

create Table userPost (
    id SERIAL PRIMARY KEY,
   title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
)

ALTER Table userpost
 alter COLUMN user_id set NOT NULL

INSERT into "user" (user_name) VALUES 
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi')


INSERT INTO userpost (title, user_id) VALUES
('phrases, and web pages between', 1),
('instantly translates words', 3),
('offered free of charge', 4),
('Google service', 4)

SELECT * FROM userpost

DROP Table "user"

DROP Table userpost

DELETE FROM "user"
 WHERE id = 4