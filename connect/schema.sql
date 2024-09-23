CREATE TABLE "users" (
    "id" SERIAL,
    "username" TEXT UNIQUE NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" SERIAL,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" SERIAL,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "people_connections" (
    "id" SERIAL,
    "user_a" INTEGER,
    "user_b" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_a") REFERENCES "users"("id"),
    FOREIGN KEY("user_b") REFERENCES "users"("id")
);

CREATE TABLE "school_connections" (
    "id" SERIAL,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" INTEGER NOT NULL,
    "end_date" INTEGER,
    "degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "company_connections" (
    "id" SERIAL,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" INTEGER NOT NULL,
    "end_date" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
