-- Table Station

CREATE TABLE station (
    station_uic     VARCHAR(10)   PRIMARY KEY,
    station_name    VARCHAR(200)  NOT NULL,
    country_code    VARCHAR(2)    NOT NULL,
    latitude        DECIMAL(9,6),
    longitude       DECIMAL(9,6)
);

-- Table Operateur

CREATE TABLE operator (
    operator_id     VARCHAR(20)   PRIMARY KEY,
    operator_name   VARCHAR(200)  NOT NULL,
    country_code    VARCHAR(2)
);

-- Table route

CREATE TABLE route (
    route_id              SERIAL        PRIMARY KEY,
    route_name            VARCHAR(200),
    departure_station_uic VARCHAR(10)   NOT NULL REFERENCES station(station_uic),
    arrival_station_uic   VARCHAR(10)   NOT NULL REFERENCES station(station_uic),
    operator_id           VARCHAR(20)   NOT NULL REFERENCES operator(operator_id),
    service_type          VARCHAR(10)   NOT NULL CHECK (service_type IN ('JOUR', 'NUIT')),
    distance_km           DECIMAL(8,2),
    departure_time        TIME,
    arrival_time          TIME
);

-- Tables des emissions CO2

CREATE TABLE emission_factor (
    transport_mode    VARCHAR(50)   PRIMARY KEY,
    co2_per_km        DECIMAL(8,4)  NOT NULL
);

-- Tables des emissions CO2 pour Avion

CREATE TABLE air_route (
    air_route_id      SERIAL        PRIMARY KEY,
    departure_city    VARCHAR(150)  NOT NULL,
    arrival_city      VARCHAR(150)  NOT NULL,
    distance_km       DECIMAL(8,2)  NOT NULL,
    avg_co2_kg        DECIMAL(8,2)
);

-- Table pour les data source

CREATE TABLE data_source (
    source_id         SERIAL        PRIMARY KEY,
    source_name       VARCHAR(100)  NOT NULL,
    source_url        VARCHAR(500),
    license           VARCHAR(100)
);

-- Table pour les logs ETL

CREATE TABLE etl_log (
    log_id              SERIAL        PRIMARY KEY,
    job_name            VARCHAR(100)  NOT NULL,
    execution_date      TIMESTAMP     DEFAULT CURRENT_TIMESTAMP,
    status              VARCHAR(20)   NOT NULL,
    records_processed   INTEGER       DEFAULT 0,
    records_rejected    INTEGER       DEFAULT 0,
    error_message       TEXT
);