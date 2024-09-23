CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `username` VARCHAR(20) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `school` ENUM('Primary','Secondary','Higher Education') NOT NULL,
    `year` YEAR NOT NULL,
    PRIMARY KEY(`id`)
);


CREATE TABLE `companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `industry` ENUM('Technology','Education','Business'),
    `location` VARCHAR(30) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `people_connections`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `user_a_id` INT NOT NULL,
    `user_b_id` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_a_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`user_b_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `companie_connections`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `companie_id` INT NOT NULL,
    `user_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`companie_id`) REFERENCES `companies`(`id`)
);

CREATE TABLE `schools_connections`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `school_id` INT NOT NULL,
    `user_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `type` VARCHAR(5),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
)
