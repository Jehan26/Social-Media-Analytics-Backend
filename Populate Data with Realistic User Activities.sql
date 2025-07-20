-- Insert Users
INSERT INTO Users (username) VALUES
('user1'),
('user2'),
('user3'),
('user4');

-- Insert Posts
INSERT INTO Posts (user_id, content) VALUES
(1, 'This is the first post!'),
(2, 'Hello world!'),
(1, 'Another day, another post.'),
(3, 'Loving the weather today!');

-- Insert Likes
INSERT INTO Likes (post_id, user_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 2),
(4, 1),
(4, 3);

-- Insert Comments
INSERT INTO Comments (post_id, user_id, content) VALUES
(1, 2, 'Great post!'),
(1, 3, 'Thanks for sharing!'),
(2, 1, 'Nice to see you!'),
(3, 2, 'I agree!'),
(4, 1, 'Beautiful day!');