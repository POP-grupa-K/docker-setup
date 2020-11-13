INSERT INTO AppStore (name_app, ranking, date_update, description_app, times_used)
VALUES ('Kalkulator', 1, '2020-10-10', 'Kalkulator jak to kalkulator', 69);
INSERT INTO AppStore (name_app, ranking, date_update, description_app, times_used)
VALUES ('Aplikacja do rozpoznawania gestów', 2, '2020-11-11', 'Aplikacja rozpoznaje gesty na obrazie/filmie', 440);
INSERT INTO AppStore (name_app, ranking, date_update, description_app, times_used)
VALUES ('Aplikacja do prognozowania kursów walut', 3, '2020-11-13', 'Aplikacja prognozuje kursy walut takich jak dolar czy euro', 1000);

INSERT INTO DataShelf (data_set_shelf, name, data_type, access_type, value, IdApp)
VALUES ('data self shelf 1', 'Data Shelf nr 1', 'int', 'full access', 5, 1);
INSERT INTO DataShelf (data_set_shelf, name, data_type, access_type, value, IdApp)
VALUES ('data self shelf 2', 'Data Shelf nr 2', 'float', 'almost full access', 3, 2);
INSERT INTO DataShelf (data_set_shelf, name, data_type, access_type, value, IdApp)
VALUES ('data self shelf 3', 'Data Shelf nr 3', 'string', 'no access', 4, 3);

INSERT INTO Rating (value, comm, date_update, user_id, IdApp)
VALUES (5.0, 'Super aplikacja, polecam serdecznie', '2020-10-11', 1, 1);
INSERT INTO Rating (value, comm, date_update, user_id, IdApp)
VALUES (4.0, 'Całkiem niezłe narzędzie', '2020-11-12', 1, 2);
INSERT INTO Rating (value, comm, date_update, user_id, IdApp)
VALUES (1.0, 'DNO I 5 METROW MULU', '2020-11-13', 1, 3);

INSERT INTO Cockpit (name_task, version, date_start, date_end, consumed_credits, reserved_credits, status, priority, private, cluster_allocation, IdApp)
VALUES ('Task nr 1', 1, '2020-11-12', '2020-11-13', '50', '40', 'done', 1, 'no private', 'cluster yes', 1);
INSERT INTO Cockpit (name_task, version, date_start, date_end, consumed_credits, reserved_credits, status, priority, private, cluster_allocation, IdApp)
VALUES ('Task nr 2', 2, '2020-11-12', '2020-11-13', '90', '30', 'done', 2, 'private', 'cluster yes', 2);
INSERT INTO Cockpit (name_task, version, date_start, date_end, consumed_credits, reserved_credits, status, priority, private, cluster_allocation, IdApp)
VALUES ('Task nr 3', 3, '2020-11-12', '2020-11-13', '30', '20', 'done', 4, 'private', 'cluster yes', 3);