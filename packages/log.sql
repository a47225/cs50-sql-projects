
-- *** The Lost Letter ***
-- Get the packages sent by the address 900 Somerville Avenue with content of congratulatory
SELECT "id" FROM "packages" WHERE "contents" LIKE "%congratulatory%" AND "from_address_id"=(
    SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
);
-- GET the scan by the package id and see where it end up
SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
    SELECT "id" FROM "packages" WHERE "contents" LIKE "%congratulatory%" AND "from_address_id"=(
        SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
    )
);
--SEE what is the address type and address name from this address id
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "contents" LIKE "%congratulatory%" AND "from_address_id"=(
            SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
        )
    )
);

-- *** The Devious Delivery ***
-- Get package id where from adress is NULL
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" IS NULL;

-- GET address_id with action drop from the previous package_id
SELECT "address_id", "contents" FROM "scans" WHERE "action"='Drop' AND "package_id"=(
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);
-- GET address info from previous address_id
SELECT "address", "type" FROM "addresses" WHERE "id"=(
    SELECT "address_id" FROM "scans" WHERE "action"='Drop' AND "package_id"=(
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    )
);

-- *** The Forgotten Gift ***
-- Get address_id from the address 109 Tileston Street
SELECT "id" FROM "addresses" WHERE "address"='109 Tileston Street';

-- Get package_id and contents from the previous address_id
SELECT "id","contents" FROM "packages" WHERE "from_address_id"=(
    SELECT "id" FROM "addresses" WHERE "address"='109 Tileston Street'
);

-- Get info from lastest update from scans of the package_id
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id"=(
        SELECT "id" FROM "addresses" WHERE "address"='109 Tileston Street'
    )
) ORDER BY "timestamp" DESC LIMIT 1;

-- Because last point the package was picked this means the package is still with the driver and now we gonna find out who is the driver
SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id"=(
            SELECT "id" FROM "addresses" WHERE "address"='109 Tileston Street'
        )
    ) ORDER BY "timestamp" DESC LIMIT 1
);
