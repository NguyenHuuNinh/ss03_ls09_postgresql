ĐỀ BÀI
Thiết kế database SchoolDB quản lý sinh viên, môn học và điểm
Tạo các bảng:
Students (student_id, name, dob)
Courses (course_id, course_name, credits)
Enrollments (enrollment_id, student_id, course_id, grade)
Thêm các ràng buộc:
student_id và course_id trong Enrollments là khóa ngoại
grade chỉ được phép là các giá trị A, B, C, D, F
