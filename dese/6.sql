SELECT "name" FROM "schools" INNER JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id" WHERE "graduated"=100;
