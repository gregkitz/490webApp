use booqDB;

insert into Customer(email, passwd) values
('john@gmail.com', '1234');



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

insert into Book(id, title, author, price, genreId, stock, picturePath) values
  (1, 'My Name Is Dallas', 'Greg Kitzmiller', 44.99, 1, 5, 'img/book1.jpg'),
  (2, 'Harry Potter and the Rolling Indiana Jones Goblet', 'David Bowie', 24.99, 2, 1, 'img/book2.jpg'),
  (3, 'Greg','Dallas van Ess', 8.95, 3, 4, 'img/book3.jpg'),
  (4, 'The Last Murderer', 'Luke Selbeck', 8.95, 4, 7, 'img/book4.jpg'),
  (5, 'Bubbles in my ***', 'Henry XVI', 5.99, 5, 9, 'img/book5.jpg'),
  (6, 'My Fantasies', 'Greg Kitzmiller', 6.99, 6, 1, 'img/book6.jpg'),
  (7, 'A Brief History of WoW', 'Dallas van Ess', 8.95, 7, 3, 'img/book7.jpg'),
  (8, 'A Day With Luke', 'Luke Selbeck', 8.95, 8, 5, 'img/book8.jpg'),
  (9, 'Who Dun It?', 'David Bowie', 8.95, 9, 7, 'img/book9.jpg'),
  (10, 'What is Truth?', 'Greg Kitzmiller', 8.95, 10, 3, 'img/book10.jpg'),
  (11, 'Cowboys Past Curfew', 'Dallas van Ess', 8.95, 11, 2, 'img/book11.jpg'),
  (12, 'Robots', 'Henry XVI', 8.95, 12, 2, 'img/book12.jpg'),
  (13, 'Thriller', 'Michael Jackson', 8.95, 13, 1, 'img/book13.jpg'),
  (14, '50 Layers of Skin', 'Greg Kitzmiller', 20.01, 11, 14, 'img/book14.jpg'),
  (15, 'Working with Greg:  My Trials', 'Luke Selbeck', 5.00, 8, 7, 'img/book15.jpg');

insert into Ratings(bookId, customerId, ratingDate, rating) values
  (1, 1, '2015-02-12', 4),
  (2, 2, '2000-01-01', 3),
  (3, 3, '2008-03-30', 3),
  (4, 4, '2001-09-11', 2),
  (5, 5, '2001-09-11', 5),
  (6, 6, '2015-03-8', 5),
  (7, 7, '2014-12-25', 1);

update Ratings SET description = 
  "I was blown away by this book"
  where bookId = 1 and customerId = 1;