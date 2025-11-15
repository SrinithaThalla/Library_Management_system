-- Create database
CREATE DATABASE library_db;
USE library_db;

-- Table 1: Books
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Available'
);

-- Table 2: Students
CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(100),
    issued_book_id INT DEFAULT NULL,
    FOREIGN KEY (issued_book_id) REFERENCES books(book_id)
);

-- Table 3: Transactions
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    fine INT DEFAULT 0,
    FOREIGN KEY (roll_no) REFERENCES students(roll_no),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
