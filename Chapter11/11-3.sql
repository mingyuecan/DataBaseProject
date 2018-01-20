USE my_web_db;

INSERT INTO users
VALUES (DEFAULT, 'zouyang7@illinois.edu','Zixin','Ouyang');
INSERT INTO users
VALUES (DEFAULT, 'constance_1993@sina.com','Constance','Cross');

INSERT INTO products
VALUES (DEFAULT, 'Fruit');
INSERT INTO products
VALUES (DEFAULT, 'Coffee');

INSERT INTO downloads
VALUE (DEFAULT,1,NOW(),'Mocha',2);
INSERT INTO downloads
VALUES (DEFAULT,2,NOW(),'Apple',1);
INSERT INTO downloads
VALUES (DEFAULT,2,NOW(),'Banana',2);