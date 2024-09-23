SELECT "username" FROM "users"
WHERE "id"=(
    SELECT "to_user_id" FROM (
        SELECT "to_user_id",COUNT("to_user_id") AS "to_users_messages" FROM "messages"
            GROUP BY "to_user_id"
            ORDER BY "to_users_messages" DESC LIMIT 1
    )
);
