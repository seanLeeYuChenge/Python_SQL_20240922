CREATE TABLE IF NOT EXISTS stations1(
	stations_id SERIAL PRIMARY KEY,
	stationCode VARCHAR(20) UNIQUE NOT NULL,
	stationName VARCHAR(20) NOT NULL,
	name VARCHAR(20),
	stationAddrTw VARCHAR(60),
	stationTel VARCHAR(20),
	gps VARCHAR(30),
	haveBike BOOLEAN
);
