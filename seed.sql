PRAGMA foreign_keys = ON;
BEGIN;

INSERT INTO profile
(profile_id, full_name, programme, year_of_study, academic_year, home_county,
 dream_job, fun_fact, bio, public_email)
VALUES
(1, 'Mercy Ndulu', 'BSc. Fisheries and Aquaculture', 2, 2026, 'Nairobi',
 'Aquaculture research officer',
 'I make a playlist for almost every study session.',
 'I am a second-year Fisheries and Aquaculture student at JKUAT, interested in how healthy water supports sustainable fish production. My coursework has introduced me to field observations, data recording and literature review. I enjoy using practical exercises to connect what I learn in class with questions that matter to fish farmers. I built this portfolio to share what I am learning and some of the things I enjoy outside class.',
 'mercyndulu159@gmail.com');

INSERT INTO skill (profile_id, skill_name) VALUES
(1, 'Water-quality observation'),
(1, 'Field data recording'),
(1, 'Spreadsheet analysis'),
(1, 'Literature review'),
(1, 'Team communication');

INSERT INTO hobby (profile_id, hobby_name, description) VALUES
(1, 'Football', 'I enjoy playing five-a-side football because it keeps me active and helps me practise teamwork.'),
(1, 'Cooking', 'I experiment with simple recipes and keep notes on what I would change next time.'),
(1, 'Music', 'I make playlists for reading, workouts and quiet evenings.');

INSERT INTO movie (profile_id, title, release_year, my_rank, reason) VALUES
(1, 'The Lion King', 1994, 1, 'I enjoy how the music complements Simba’s journey back home.'),
(1, 'Finding Nemo', 2003, 2, 'I like the underwater setting and the humour that carries the story.'),
(1, 'WALL·E', 2008, 3, 'I admire how the film tells much of its story with very little dialogue.'),
(1, 'Hidden Figures', 2016, 4, 'I like how it shows the persistence and teamwork behind the space programme.'),
(1, 'Soul', 2020, 5, 'I appreciate its playful animation and its focus on finding joy in ordinary moments.');

COMMIT;
