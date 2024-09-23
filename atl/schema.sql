CREATE TABLE "passengers" (
    "id" SERIAL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL CHECK("age">0),
    PRIMARY KEY("id")
);

CREATE TABLE "check_ins" (
    "id" SERIAL,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "airlines" (
    "id" SERIAL,
    "name" TEXT,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A','B','C','D','E','F','T')),
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "departing_code" TEXT,
    "heading_code" TEXT,
    "datetime_departure" NUMERIC,
    "datetime_arrival" NUMERIC,
    PRIMARY KEY("flight_number"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);
