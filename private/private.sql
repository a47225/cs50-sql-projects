CREATE TABLE "cyphers" (
    "id" INTEGER NOT NULL,
    "first" INTEGER NOT NULL,
    "length" INTEGER NOT NULL
);

INSERT INTO "cyphers"("id","first","length")
VALUES
(14,98,4),
(114,3,5),
(618,72,9),
(630,7,3),
(932,12,5),
(2230,50,7),
(2346,44,10),
(3041,14,5);

CREATE VIEW "message" AS
SELECT substring("sentence","first","length") AS "phrase"
FROM "sentences"
RIGHT JOIN "cyphers" USING("id");

