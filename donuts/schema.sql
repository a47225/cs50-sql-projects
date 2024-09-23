CREATE TABLE "ingredients" (
    "id" SERIAL,
    "name" TEXT NOT NULL UNIQUE,
    "price_per_unit" NUMERIC NOT NULL,
    "unit_type" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" SERIAL,
    "name" TEXT NOT NULL,
    "gluten-free" INTEGER CHECK("gluten-free" BETWEEN 0 AND 1),
    "price" NUMERIC NOT NULL CHECK("price">0),
    PRIMARY KEY("id")
);

CREATE TABLE "donut_ingredients" (
    "id" SERIAL,
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders" (
    "order_number" SERIAL,
    "costumer_id" INTEGER,
    PRIMARY KEY("order_number"),
    FOREIGN KEY("costumer_id") REFERENCES "costumers"("id")
);

CREATE TABLE "donuts_in_order" (
    "order_number" INTEGER,
    "donut_id" INTEGER,
    PRIMARY KEY("order_number","donut_id"),
    FOREIGN KEY("order_number") REFERENCES "orders"("order_number"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE "costumers" (
    "id" SERIAL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);
