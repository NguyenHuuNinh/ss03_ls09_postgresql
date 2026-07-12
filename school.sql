CREATE DATABASE "SchoolDB";
-- Tạo bảng lớn (Không chứa khóa ngoại)
-- 2a. Bảng Students (Sinh viên)
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE
);
-- 2b. Bảng Courses (Môn học)
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(150) NOT NULL,
    credits INT CHECK (credits > 0) -- Thêm ràng buộc tín chỉ phải lớn hơn 0 cho hợp lý
);
-- Tạo bảng con (Chứa khóa ngoại và ràng buộc CHECK)
-- 2c & 3a & 3b. Bảng Enrollments (Đăng ký học)
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id), -- Ràng buộc khóa ngoại 3a
    course_id INT REFERENCES Courses(course_id),    -- Ràng buộc khóa ngoại 3a
    grade VARCHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')) -- Ràng buộc giá trị điểm 3b
);