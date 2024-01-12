--create table Users(
--u_id int primary key,
--Username varchar(30),
--email varchar(30),
--)
--create table Posts(
--P_id int primary key,
--U_id int,
--title varchar(30),
--content varchar(30),
--timestamp varchar(30),
--)
--create table comments(
--C_id int primary key ,
--P_id int,
--U_id int,
--comment_text varchar(30),
--timestamp varchar(30),
--)
-- Create Users table


-- Insert data into Users table
--INSERT INTO Users (u_id, Username, email)
--VALUES 
--    (1, 'JohnDoe', 'john.doe@example.com'),
--    (2, 'AliceSmith', 'alice.smith@example.com'),
--    (3, 'BobJohnson', 'bob.johnson@example.com'),
--    (4, 'EvaBrown', 'eva.brown@example.com'),
--    (5, 'CharlieLee', 'charlie.lee@example.com'),
--    (6, 'GraceMiller', 'grace.miller@example.com'),
--    (7, 'DanielClark', 'daniel.clark@example.com'),
--    (8, 'SophiaWhite', 'sophia.white@example.com'),
--    (9, 'OliverWoods', 'oliver.woods@example.com'),
--    (10, 'EmmaTaylor', 'emma.taylor@example.com');

-- Create Posts table
-- Insert data into Posts table
-- Insert data into Posts table
INSERT INTO Posts (P_id, U_id, title, content)
VALUES 
    (1, 1, 'Exploring the wonders of SQL', 'Today, I delve into the fascinating world of SQL and its capabilities.'),
    (2, 2, 'A journey through Machine Learning', 'Join me on a journey as we explore the realms of machine learning and its applications.'),
    (3, 3, 'Cooking Adventures: Recipe Sharing', 'Discover new recipes and share your culinary adventures with the community.'),
    (4, 4, 'Art and Creativity Showcase', 'Express your artistic side and showcase your latest creations in this vibrant community.'),
    (5, 5, 'Tech Talk: Latest Gadgets and Innovations', 'Discuss and stay updated on the latest technological advancements and gadgets.'),
    (6, 6, 'Fitness and Wellness Tips', 'Share your fitness journey and discover wellness tips for a healthier lifestyle.'),
    (7, 7, 'Travel Diaries: Places I''ve Explored', 'Take a virtual journey with me as I share my travel experiences and recommendations.'),
    (8, 8, 'Book Lovers Club: Reading Recommendations', 'Join our book club and share your favorite reads or seek recommendations for your next literary adventure.'),
    (9, 9, 'Coding Challenges and Solutions', 'Challenge yourself with coding problems and discuss solutions with fellow developers.'),
    (10, 10, 'Fashion Trends: Style and Glamour', 'Explore the latest fashion trends and showcase your unique style in the fashion enthusiasts community.');

-- Create Comments table
-- Insert data into Comments table
--INSERT INTO Comments (C_id, P_id, U_id, comment_text)
--VALUES 
--    (1, 1, 2, 'Great insights into SQL!'),
--    (2, 2, 3, 'Im excited to learn more about machine learning!'),
--    (3, 3, 4, 'That recipe sounds delicious! Ill definitely try it.'),
--    (4, 4, 5, 'Your artwork is truly inspiring.'),
--    (5, 5, 6, 'I cant wait to get my hands on the latest gadgets!'),
--    (6, 6, 7, 'Thanks for the fitness tips!'),
--    (7, 7, 8, 'Ive always wanted to visit that place. How was your experience?'),
--    (8, 8, 9, 'Any book recommendations for this weekend?'),
--    (9, 9, 10, 'Struggling with a coding challenge. Any suggestions?'),
--    (10, 10, 1, 'Love your fashion sense! Where do you get your inspiration?')
