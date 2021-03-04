CREATE TABLE Gamers(
	Userid int AUTO_INCREMENT,
	Uname varchar(256) NOT NULL,
	T_games int NOT NULL,
	CC int,
	email varchar(255) NOT NULL,
	PRIMARY KEY(Userid),
	CONSTRAINT user_name 
	UNIQUE (Uname)
);

CREATE TABLE ContentCreator(
	id int AUTO_INCREMENT,
	CCname varchar(255) NOT NULL,
	Followers int NOT NULL,
	Fam_fri varchar(256) NOT NULL,
	PRIMARY KEY(id),
	UNIQUE (CCname)
);
CREATE TABLE Publisher(
	id int AUTO_INCREMENT,
	Dname varchar(255) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE Developer(
	id int AUTO_INCREMENT,
	Pname varchar(255) NOT NULL,
	PRIMARY KEY(id)
);
CREATE TABLE Modes(
	id int AUTO_INCREMENT,
	modes varchar(20) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE VideoGame(
	id int AUTO_INCREMENT,
	Title varchar(255) NOT NULL,
	PublisherID varchar(255) NOT NULL,
	DeveloperID int NOT NULL,
	Modes int not NULL,
	ReleaseDate DATE NOT NULL,
	Genre varchar(256) not NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(DeveloperID) REFERENCES Developer(id),
	FOREIGN KEY(Modes) REFERENCES Modes(id),
	CONSTRAINT title_date UNIQUE (Title, ReleaseDate)
);

CREATE TABLE Merch(
	id int AUTO_INCREMENT ,
	Type varchar(256),
	Name varchar(256),
	Color varchar(256),
	PRIMARY KEY(id)
);

CREATE TABLE Shop(
    id int AUTO_INCREMENT ,
    GameID int, 
	MerchID int,
	Genre varchar(256) NOT NULL,
	FOREIGN KEY(GameID) REFERENCES VideoGame(id),
	FOREIGN KEY(MerchID) REFERENCES Merch(id),
	PRIMARY KEY (id)
);
CREATE TABLE Business(
    id int AUTO_INCREMENT,
    Cname varchar(256) NOT NULL,
	GameID int,
	ShopID int, 
	FOREIGN KEY(GameID) REFERENCES VideoGame(id),
	FOREIGN KEY(ShopID) REFERENCES Shop(id),
	PRIMARY KEY (id)
);