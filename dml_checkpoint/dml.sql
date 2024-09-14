INSERT INTO Department (dept_name, building, budget) 
VALUES 
('Biology', 'Watson', 90000),
('Comp. Sci.', 'Taylor', 100000),
('Elec. Eng.', 'Taylor', 85000),
('Finance', 'Painter', 120000),
('History', 'Painter', 50000),
('Music', 'Packard', 80000),
('Physics', 'Watson', 70000);

INSERT INTO Course (course_id, title, dept_name, credits) 
VALUES 
('BIO-101', 'Intro. to Biology', 'Biology', 4),
('BIO-301', 'Genetics', 'Biology', 4),
('BIO-399', 'Computational Biology', 'Biology', 3),
('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4),
('CS-315', 'Robotics', 'Comp. Sci.', 3),
('CS-319', 'Image Processing', 'Comp. Sci.', 3),
('CS-347', 'Database System Concepts', 'Comp. Sci.', 3),
('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3),
('FIN-201', 'Investment Banking', 'Finance', 3),
('HIS-351', 'World War II', 'History', 3),
('MU-199', 'Music Video Production', 'Music', 3),
('PHY-101', 'Physical Principles', 'Physics', 4);

INSERT INTO Instructor (ID, name, dept_name, salary) 
VALUES 
(10101, 'Srinivasan', 'Comp. Sci.', 65000),
(12121, 'Wu', 'Finance', 90000),
(15151, 'Mozart', 'Music', 40000),
(22222, 'Einstein', 'Physics', 95000),
(32343, 'El Said', 'History', 62000),
(33456, 'Gold', 'Biology', 87000),
(45565, 'Katz', 'Comp. Sci.', 75000),
(58583, 'Califieri', 'History', 62000),
(76543, 'Singh', 'Finance', 80000),
(76766, 'Crick', 'Biology', 72000),
(83821, 'Brandt', 'Comp. Sci.', 92000),
(98345, 'Kim', 'Elec. Eng.', 80000);

INSERT INTO Section (course_id, sec_id, semester, year, building, room_number, time_slot_id) 
VALUES 
('BIO-101', 1, 'Summer', 2009, 'Painter', '514', 'A'),
('BIO-301', 1, 'Summer', 2010, 'Painter', '514', 'A'),
('CS-101', 1, 'Fall', 2009, 'Packard', '101', 'H'),
('CS-315', 1, 'Spring', 2010, 'Taylor', '3128', 'C'),
('CS-319', 1, 'Spring', 2010, 'Taylor', '3128', 'B'),
('CS-319', 2, 'Spring', 2010, 'Taylor', '3128', 'C'),
('CS-347', 1, 'Fall', 2009, 'Taylor', '3128', 'A'),
('EE-181', 1, 'Spring', 2009, 'Taylor', '3128', 'A'),
('FIN-201', 1, 'Spring', 2010, 'Packard', '101', 'B'),
('HIS-351', 1, 'Spring', 2010, 'Painter', '514', 'B'),
('MU-199', 1, 'Spring', 2010, 'Packard', '101', 'A'),
('PHY-101', 1, 'Fall', 2009, 'Watson', '100', 'D');

INSERT INTO Student (ID, name, dept_name, tot_cred) 
VALUES 
(00128, 'Zhang', 'Comp. Sci.', 102),
(12345, 'Shankar', 'Comp. Sci.', 32),
(19991, 'Brandt', 'History', 80),
(23121, 'Chavez', 'Finance', 110),
(44553, 'Peltier', 'Physics', 56),
(45678, 'Levy', 'Physics', 46),
(54321, 'Williams', 'Comp. Sci.', 54),
(55739, 'Sanchez', 'Music', 38),
(70557, 'Snow', 'Physics', 0),
(76543, 'Brown', 'Comp. Sci.', 58);

INSERT INTO Teaches (ID, course_id, sec_id, semester, year) 
VALUES 
(10101, 'CS-101', 1, 'Fall', 2009),
(10101, 'CS-347', 1, 'Fall', 2009),
(45565, 'CS-319', 1, 'Spring', 2010),
(45565, 'CS-315', 1, 'Spring', 2010),
(76766, 'BIO-101', 1, 'Summer', 2009),
(76766, 'BIO-301', 1, 'Summer', 2010),
(83821, 'CS-101', 1, 'Fall', 2009),
(98345, 'EE-181', 1, 'Spring', 2009);

INSERT INTO Takes (ID, course_id, sec_id, semester, year, grade) 
VALUES 
(00128, 'CS-101', 1, 'Fall', 2009, 'A'),
(00128, 'CS-347', 1, 'Fall', 2009, 'A-'),
(12345, 'CS-101', 1, 'Fall', 2009, 'C'),
(12345, 'CS-315', 1, 'Spring', 2010, 'A'),
(19991, 'HIS-351', 1, 'Spring', 2010, 'B'),
(23121, 'FIN-201', 1, 'Spring', 2010, 'C+'),
(44553, 'PHY-101', 1, 'Fall', 2009, 'B-'),
(45678, 'PHY-101', 1, 'Fall', 2009, 'A'),
(54321, 'CS-101', 1, 'Fall', 2009, 'B+'),
(54321, 'CS-319', 1, 'Spring', 2010, 'B'),
(55739, 'MU-199', 1, 'Spring', 2010, 'A'),
(76543, 'CS-101', 1, 'Fall', 2009, 'A'),
(76543, 'CS-319', 2, 'Spring', 2010, 'A');
