SELECT "teams"."name", SUM("H") as "total hits" FROM "teams"
INNER JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year"=2001
GROUP BY "teams"."name"
ORDER BY "total hits" DESC LIMIT 5;
