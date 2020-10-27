CREATE TABLE AppStore (
	IdApp INT GENERATED ALWAYS AS IDENTITY,
	name_app VARCHAR(50) NOT NULL,
	ranking INT,
	date_update TIMESTAMP,
	description_app VARCHAR(5000),
	PRIMARY KEY(IdApp)
);

CREATE TABLE DataShelf (
	IdDataShelf INT GENERATED ALWAYS AS IDENTITY,
	data_set_shelf VARCHAR(5000),
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdDataShelf)
);

CREATE TABLE Rating (
	IdRating INT GENERATED ALWAYS AS IDENTITY,
	value integer NOT NULL,
	comm VARCHAR(5000),
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdRating)
);

CREATE TABLE Cockpit (
	IdTask INT GENERATED ALWAYS AS IDENTITY,
	name_task VARCHAR(50),
	version INT,
	date_start TIMESTAMP,
	date_end TIMESTAMP,
	consumed_credits VARCHAR(50),
	reserved_credits VARCHAR(50),
	status VARCHAR(50),
	priority INT,
	private VARCHAR(50),
	cluster_allocation VARCHAR(50),
	IdApp INT REFERENCES AppStore,
	PRIMARY KEY(IdTask)
);
