drop database booqDB;
create database booqDB;
use booqDB;

create table Genre (
	genreId int not null auto_increment unique,
	genreName nvarchar(70),

	primary key (genreId)
);

create table Book (
	bookId int not null auto_increment unique,
	title nvarchar(70),
	author nvarchar(70),
	price double precision,
	genreId int,
	stock int,

	primary key(bookId),
	foreign key(genreId) references Genre(genreId)
);

create table ShippingInfo (
	shippingId double precision not null auto_increment unique,
	customerName varchar(100),
	customerAddress varchar(100),
	ccName varchar(100),
	ccNumber varchar(32),
	ccExpire varchar(9),

	primary key(shippingId)
);

create table OrderDetails (
	id double precision not null auto_increment unique,
	bookId integer,
	title varchar(100),
	author varchar(100),
	quantity integer,
	price double precision,
	shippingId double precision,

	primary key(id),
	foreign key(shippingId) references ShippingInfo(shippingId)
);

create index genreIdKey 		on Genre(genreId);
create index bookIdKey 			on Book(bookId);
create index orderDetailsIdKey 	on OrderDetails(id);
create index ShippingInfoIdKey 	on ShippingInfo(shippingId);
