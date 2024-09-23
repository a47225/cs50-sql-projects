SELECT "city", COUNT("id") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city" HAVING COUNT("id")<4
ORDER BY COUNT("id") DESC, "city";
