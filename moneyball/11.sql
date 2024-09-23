SELECT "first_name","last_name", "salary"/"H" AS "dollars per hit" FROM "players"
JOIN "performances" ON "players"."id" = "performances"."player_id"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
WHERE "H">0 AND "performances"."year" = 2001 AND "salaries"."year" = 2001
ORDER BY "dollars per hit", "first_name", "last_name" LIMIT 10;


