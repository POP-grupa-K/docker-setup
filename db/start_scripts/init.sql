CREATE TABLE AppStore (
	IdApp INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50) NOT NULL,
	ranking real,
	dateUpdate TIMESTAMP,
	description VARCHAR(5000),
	timesUsed INT DEFAULT 0,
	statusApp VARCHAR(500),
	IdUser INT,
	PRIMARY KEY(IdApp)
);

CREATE TABLE DataShelf (
	IdDataShelf INT GENERATED ALWAYS AS IDENTITY,
	dataSetShelf VARCHAR(5000),
	name VARCHAR(5000),
	dataType VARCHAR(500),
	accessType VARCHAR(500),
	value INT,
	IdApp INT,
	PRIMARY KEY(IdDataShelf)
);

CREATE TABLE Rating (
	IdRating INT GENERATED ALWAYS AS IDENTITY,
	value real NOT NULL,
	comm VARCHAR(5000),
	dateUpdate TIMESTAMP,
	IdUser INT,
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdRating)
);

CREATE TABLE Cockpit (
	IdTask INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50),
	version INT,
	dateStart TIMESTAMP,
	dateEnd TIMESTAMP,
	consumedCredits VARCHAR(50),
	reservedCredits VARCHAR(50),
	status VARCHAR(50),
	priority INT,
	private VARCHAR(50),
	clusterAllocation VARCHAR(50),
	IdApp INT,
	IdUser INT,
	PRIMARY KEY(IdTask)
);

CREATE TABLE Image (
	IdImage INT GENERATED ALWAYS AS IDENTITY,
	filename VARCHAR(50),
	img bytea NOT NULL,
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdImage)
);

CREATE TABLE Users (
	IdUser INT GENERATED ALWAYS AS IDENTITY,
	login VARCHAR(50),
	password VARCHAR(32),
	status VARCHAR(50),
	PRIMARY KEY(IdUser)
);

CREATE TABLE User_App (
	IdUserApp INT GENERATED ALWAYS AS IDENTITY,
	IdApp INT,
	IdUser INT,
	PRIMARY KEY(IdUserApp)
);
	
CREATE TABLE Schema (
	IdSchema INT GENERATED ALWAYS AS IDENTITY,
	IdNextApp INT REFERENCES AppStore,
	IdPreviousApp INT REFERENCES AppStore,
	PRIMARY KEY(IdSchema)
);