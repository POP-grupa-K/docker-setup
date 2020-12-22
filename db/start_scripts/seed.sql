INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed, statusApp, IdUser)
VALUES ('Kalkulator', 5, '2020-10-10', 'Kalkulator jak to kalkulator', 69, 'available', 1);
INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed, statusApp, IdUser)
VALUES ('Aplikacja do rozpoznawania gestów', 4, '2020-11-11', 'Aplikacja rozpoznaje gesty na obrazie/filmie', 440, 'available', 2);
INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed, statusApp, IdUser)
VALUES ('Aplikacja do prognozowania kursów walut', 1, '2020-11-13', 'Aplikacja prognozuje kursy walut takich jak dolar czy euro', 1000, 'to_delete', 3);

INSERT INTO DataShelf (dataSetShelf, name, dataType, accessType, value, IdApp)
VALUES ('data self shelf 1', 'Data Shelf nr 1', 'int', 'full access', 5, 1);
INSERT INTO DataShelf (dataSetShelf, name, dataType, accessType, value, IdApp)
VALUES ('data self shelf 2', 'Data Shelf nr 2', 'float', 'almost full access', 3, 2);
INSERT INTO DataShelf (dataSetShelf, name, dataType, accessType, value, IdApp)
VALUES ('data self shelf 3', 'Data Shelf nr 3', 'string', 'no access', 4, 3);

INSERT INTO Rating (value, comm, dateUpdate, IdUser, IdApp)
VALUES (5.0, 'Super aplikacja, polecam serdecznie', '2020-10-11', 1, 1);
INSERT INTO Rating (value, comm, dateUpdate, IdUser, IdApp)
VALUES (4.0, 'Całkiem niezłe narzędzie', '2020-11-12', 1, 2);
INSERT INTO Rating (value, comm, dateUpdate, IdUser, IdApp)
VALUES (1.0, 'DNO I 5 METROW MULU', '2020-11-13', 1, 3);

INSERT INTO Cockpit (name, version, dateStart, dateEnd, consumedCredits, reservedCredits, status, priority, private, clusterAllocation, IdApp, IdUser)
VALUES ('Task nr 1', 1, '2020-11-12', '2020-11-13', '50', '40', 'created', 1, 'no private', 'cluster yes', 1, 1);
INSERT INTO Cockpit (name, version, dateStart, dateEnd, consumedCredits, reservedCredits, status, priority, private, clusterAllocation, IdApp, IdUser)
VALUES ('Task nr 2', 2, '2020-11-12', '2020-11-13', '90', '30', 'ongoing', 2, 'private', 'cluster yes', 2, 1);
INSERT INTO Cockpit (name, version, dateStart, dateEnd, consumedCredits, reservedCredits, status, priority, private, clusterAllocation, IdApp, IdUser)
VALUES ('Task nr 3', 3, '2020-11-12', '2020-11-13', '30', '20', 'finished', 4, 'private', 'cluster yes', 3, 1);

INSERT INTO Image (filename, img, IdApp) 
VALUES ('img1.jpg', bytea('/images/img1.jpg'), 1);
INSERT INTO Image (filename, img, IdApp) 
VALUES ('img2.jpg', bytea('/images/img2.jpg'), 2);
INSERT INTO Image (filename, img, IdApp) 
VALUES ('img3.jpg', bytea('/images/img3.jpg'), 3);

INSERT INTO Users (login, password, status) 
VALUES ('John1', 'test!.12a', 'OK');
INSERT INTO Users (login, password, status) 
VALUES ('Antoni2', '1teast!.12', 'OK');
INSERT INTO Users (login, password, status) 
VALUES ('Artur3', 'test!.12', 'OK');

INSERT INTO User_App (IdApp, IdUser)
VALUES (1, 1);
INSERT INTO User_App (IdApp, IdUser)
VALUES (2, 1);
INSERT INTO User_App (IdApp, IdUser)
VALUES (3, 1);

INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed)
VALUES ('Google Maps World', 4, '2020-12-10', 'Aplikacja do map na całym świecie', 29);
INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed)
VALUES ('Google Maps Europe', 5, '2020-12-15', 'Aplikacja do map na terenie Europy', 15);
INSERT INTO AppStore (name, ranking, dateUpdate, description, timesUsed)
VALUES ('Google Maps America', 6, '2020-12-16', 'Aplikacja do map na terenie Ameryki', 11);

INSERT INTO Schema (IdBigApp, IdSmallApp)
VALUES (4, 5);
INSERT INTO Schema (IdBigApp, IdSmallApp)
VALUES (4, 6);