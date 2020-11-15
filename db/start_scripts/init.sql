CREATE TABLE AppStore (
	IdApp INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50) NOT NULL,
	ranking real,
	dateUpdate TIMESTAMP,
	description VARCHAR(5000),
	timesUsed INT DEFAULT 0,
	PRIMARY KEY(IdApp)
);

CREATE TABLE DataShelf (
	IdDataShelf INT GENERATED ALWAYS AS IDENTITY,
	dataSetShelf VARCHAR(5000),
	name VARCHAR(5000),
	dataType VARCHAR(500),
	accessType VARCHAR(500),
	value INT,
	IdApp INT REFERENCES AppStore,
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
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdTask)
);

CREATE TABLE Image (
	IdImage INT GENERATED ALWAYS AS IDENTITY,
	img bytea NOT NULL,
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdImage)
);
