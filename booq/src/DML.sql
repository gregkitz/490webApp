use booqDB;

insert into Address (streetAddr, city, state, country, zip, apptNo) values
  ('2345 88th St', 'Bothell', 'Washington', 'US of A', '90256', null);

insert into Customer (email, cName, passwd, ccName, ccNumber, ccExpire, addrId) values
  ('john@gmail.com', 'John', '1234', 'John Snow', '555555555', 'never', 1);


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
  (1, 'Responsive Web Design', 'Ethan Marcotte', 44.99, 1, 5, 'pics/book1'),
  (2, 'Adaptive Web Design', 'Aaron Guifennison', 24.99, 2, 1, 'pics/book2'),
  (3, 'Chicago', 8.95, 3, 4, 'pics/book3'),
  (4, 'The Red Book', 'Luke Selbeck', 8.95, 4, 7, 'pics/book4'),
  (5, 'The Mayors Tounge', 'Henry XVI', 5.99, 5, 9, 'pics/book5'),
  (6, 'The Greyish Brown Book', 'Greg Kitzmiller', 6.99, 6, 1, 'pics/book6'),
  (7, 'Now Youre Thinking', 'Dallas van Ess', 8.95, 7, 3, 'pics/book7'),
  (8, 'Pieces of Light', 'Luke Selbeck', 8.95, 8, 5, 'pics/book8'),
  (9, 'Making short films', 'David Bowie', 8.95, 9, 7, 'pics/book9'),
  (10, 'What is Truth?', 'Greg Kitzmiller', 8.95, 3, 3, 'pics/book10'),
  (11, 'Heal Your Mind', 'Dallas van Ess', 8.95, 11, 2, 'pics/book11'),
  (12, 'Robots', 'Henry XVI', 8.95, 12, 2, 'pics/book12'),
  (13, 'Thriller', 'Michael Jackson', 8.95, 13, 1, 'pics/book13'),
  (14, '50 things I lernt good', 'Greg Kitzmiller', 20.01, 11, 14, 'pics/book14'),
  (15, 'Working with Greg:  My Trials', 'Luke Selbeck', 5.00, 8, 7, 'pics/book15'),
  (16, 'Whos the Better Worker?', 'Luke Selbeck', 7.00, 3, 3, 'pics/book16'),
  (17, 'That Time', 'David Bowie', 21.76, 3, 3, 'pics/book17'),
  (18, 'Etymology of Linux', 'Dallas van Ess', 1.99, 10, 8, 'pics/book18');

update Book set
	description="Truely an inspiring book about overcoming reality and forcing a name in thus a very way."
where id=1;

update Book set
	description="Harrys back again for more antics, in this seminal crossover lovechild of humanitarian George Lucas and J.K. Smowling.  Simply classic."
where id=2;

update Book set
	description="His envies are truely revealed with the tell all comedy, Greg."
where id=3;

update Book set
	description="A classic crime drama to go down in the ages of 12 - 99"
where id=4;

update Book set
	description="Truely an inspiring book about overcoming reality and forcing a name in thus a very way."
where id=5;

update Book set
	description="Truely an inspiring book about overcoming reality and forcing a name in thus a very way."
where id=6;

update Book set
	description="Truely an inspiring book about overcoming reality and forcing a name in thus a very way."
where id=7;

update Book set
	description="Truely an inspiring book about overcoming reality and forcing a name in thus a very way."
where id=8;


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
  
  update Ratings SET description = 
  "I was blown away by this book"
  where bookId = 2 and customerId = 1;

insert into MainOrder (customerId, orderDate) values (1, now());
insert into CartItem (bookId, quantity) values (2, 1);
insert into CartItem (bookId, quantity) values (4, 1);
insert into CartItem (bookId, quantity) values (5, 1);
insert into OrderLink (orderId, itemId) values ((select id from MainOrder order by id desc limit 1), 1);
insert into OrderLink (orderId, itemId) values ((select id from MainOrder order by id desc limit 1), 2);
insert into OrderLink (orderId, itemId) values ((select id from MainOrder order by id desc limit 1), 3);
