use booqDB;

insert into Genre(id, genreName) values
  (1,'Action'),
  (2,'Adventure'),
  (3,'Comedy'),
  (4,'Crime'),
  (5,'Fiction'),
  (6,'Fantasy'),
  (7,'Historical'),
  (8,'Horror'),
  (9,'Mystery'),
  (10,'Philosophical'),
  (11,'Romance'),
  (12,'Science Fiction'),
  (13,'Thriller');

insert into Book(id, title, author, price, genreId) values
  (1, 'My Name Is Dallas', 'Greg Kitzmiller', 44.99, 1),
  (2, 'Harry Potter and the Rolling Indiana Jones Goblet', 'David Bowie', 24.99, 2),
  (3, 'Greg','Dallas van Ess', 8.95, 3),
  (4, 'The Last Murderer', 'Luke Selbeck', 8.95, 4),
  (5, 'Bubbles in my ***', 'Henry XVI', 5.99, 5),
  (6, 'My Fantasies', 'Greg Kitzmiller', 6.99, 6),
  (7, 'A Brief History of WoW', 'Dallas van Ess', 8.95, 7),
  (8, 'A Day With Luke', 'Luke Selbeck', 8.95, 8),
  (9, 'Who Dun It?', 'David Bowie', 8.95, 9),
  (10, 'What is Truth?', 'Greg Kitzmiller', 8.95, 10),
  (11, 'Cowboys Past Curfew', 'Dallas van Ess', 8.95, 11),
  (12, 'Robots', 'Henry XVI', 8.95, 12),
  (13, 'Thriller', 'Michael Jackson', 8.95, 13),
  (14, '50 Layers of Skin', 'Greg Kitzmiller', 8.95, 11)
