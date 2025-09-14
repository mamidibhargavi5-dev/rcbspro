CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    status VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

CREATE TABLE reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    month VARCHAR(7), -- Format: YYYY-MM
    presents INT,
    absents INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
CREATE DATABASE IF NOT EXISTS attendance_system;
USE attendance_system;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roll_number VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    parent_mobile VARCHAR(15) NOT NULL
);
CREATE TABLE admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE,
  password VARCHAR(255),   -- store hashed password
  email VARCHAR(100),      -- for OTP delivery
  otp VARCHAR(6),          -- temporary OTP storage
  otp_expiry DATETIME      -- expiry timestamp
);


