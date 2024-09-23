SELECT "schools"."name","per_pupil_expenditure","graduated" FROM "schools"
INNER JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
INNER JOIN "expenditures" ON "expenditures"."district_id"="schools"."district_id"
ORDER BY "per_pupil_expenditure" DESC, "name";
