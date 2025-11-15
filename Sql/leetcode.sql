CREATE DATABASE leetcode;
USE leetcode;

CREATE TABLE users (
    user_id VARCHAR(50) NOT NULL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    joindate DATE NOT NULL,
    is_premium BOOLEAN DEFAULT FALSE,
    last_login DATETIME,
    problems_solved INT DEFAULT 0,
    contests_attended INT DEFAULT 0,
    global_rank INT NOT NULL
);
