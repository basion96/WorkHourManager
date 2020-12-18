USE houseDB;

DROP TABLE workedHours;

CREATE TABLE workedHours(
    id  INT AUTO_INCREMENT NOT NULL,
    date DATE NOT NULL,
    startTime VARCHAR(8) NOT NULL,
    finishTime VARCHAR(8) NOT NULL,
    lunch DOUBLE NOT NULL,
    PRIMARY KEY (id)
);



/*
test queries
*/

select * from workedHours;
