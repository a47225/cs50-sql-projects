SELECT "name" FROM "districts"  INNER JOIN (
    SELECT "district_id", MIN("pupils") AS "min_pupils"
    FROM "expenditures"
) AS "tbl"
ON "tbl"."district_id" = "districts"."id"
