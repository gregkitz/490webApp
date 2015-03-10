use booqDB;

select title, author, price, genreName from Book
	inner join Genre on Book.genreId = Genre.genreId;

select Book.id, title, author, price, stock, genreName, genreId, description
	from Book inner join Genre
	on Book.genreId = Genre.id
	where genreName like 'Romance';

select id, genreName from Genre;

select bookId, customerId, ratingDate, rating, description
	from Ratings
	where bookId = 5;

select id from Customer where email = '4tehlulz' and passwd = 'gregor';

select * from Customer;

select * from Address inner join Customer on Customer.addrId = Address.id;