SELECT "teams"."name" FROM "teams"
INNER JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."player_id" = (
    SELECT "id" FROM "players"
    WHERE "first_name"='Satchel'
    AND "last_name"='Paige'
);
--GROUP BY "teams"."name";
