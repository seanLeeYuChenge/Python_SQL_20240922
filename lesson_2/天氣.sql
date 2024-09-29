DROP TABLE IF EXISTS weather;

CREATE TABLE IF NOT EXISTS weather (
    id SERIAL PRIMARY KEY,
	city	VARCHAR(50),
	startDate	timestamp ,
	endtDate	timestamp ,
	hight	real,
	low	real,
	status	VARCHAR(58)
    );

