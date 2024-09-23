SELECT "schools"."name", "unsatisfactory" FROM "schools"
FULL JOIN "districts" ON "districts"."id" = "schools"."district_id"
FULL JOIN "staff_evaluations" ON "districts"."id" = "staff_evaluations"."district_id"
ORDER BY "unsatisfactory" DESC
LIMIT 10;
