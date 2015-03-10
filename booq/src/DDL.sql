drop database booqDB;
create database booqDB;
use booqDB;

create table Genre (
	id int not null auto_increment unique,
	genreName nvarchar(70),

	primary key (id)
);

create table Book (
	id int not null auto_increment unique,
	title nvarchar(70),
	author nvarchar(70),
	price double precision,
	genreId int,
	stock int,
	description nvarchar(1000),
	picturePath nvarchar(100),

	primary key(id),
	foreign key(genreId) references Genre(id)
);

create table Address (
	id int not null auto_increment unique,
	streetAddr nvarchar(100),
	city nvarchar(100),
	state nvarchar(50),
	country nvarchar(100),
	zip nvarchar(15),
	apptNo nvarchar(20),

	primary key (id)
);

create table Customer (
	id int not null auto_increment unique,
	email nvarchar(100) unique,
	cName nvarchar(100),
	passwd nvarchar(50) unique,
	addrId int,
	ccName nvarchar(100),
	ccNumber nvarchar(32),
	ccExpire nvarchar(9),

	primary key(id),
	foreign key(addrId) references Address(id)
);

create table CartItem (
	id int not null,
	bookId int,
	quantity int,

	primary key(id, bookId),
	foreign key(bookId) references Book(id)
);

create table MainOrder (
	id int not null auto_increment unique,
	customerId int,
	orderDate date,

	primary key(id),
	foreign key(customerId) references Customer(id)
);

create table OrderLink (
	orderId int,
	itemId int,

	primary key(orderId, itemId),
	foreign key(orderId) references MainOrder(id),
	foreign key(itemId) references CartItem(id)
);

create table Ratings (
	customerId int,
	bookId int,
	ratingDate date,
	rating int,
	description nvarchar(1000),

	primary key(customerId, bookId)
);

create index genreIdKey 		on Genre(id);
create index bookIdKey 			on Book(id);
create index mainOrderIdKey 	on MainOrder(id);
create index customerIdKey		on Customer(id);
