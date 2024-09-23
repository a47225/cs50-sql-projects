SELECT "first_name", "last_name" FROM "players"
JOIN (
    SELECT "player_id" FROM (
        SELECT "performances"."player_id", "salary"/"H" AS "dollars per hit" FROM "performances"
        JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
        WHERE "H">0 AND "performances"."year" = 2001 AND "salaries"."year" = 2001
        ORDER BY "dollars per hit" LIMIT 10
    )
    INTERSECT
    SELECT "player_id" FROM (
        SELECT "performances"."player_id", "salary"/"RBI" AS "dollars per RBI" FROM "performances"
        JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
        WHERE "RBI">0 AND "performances"."year" = 2001 AND "salaries"."year" = 2001
        ORDER BY "dollars per RBI" LIMIT 10
    )
) AS "tbl"
ON "players"."id" = "tbl"."player_id"
ORDER BY "player_id";
