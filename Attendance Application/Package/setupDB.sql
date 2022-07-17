CREATE TABLE IF NOT EXISTS ADMIN(
	A_ID TEXT PRIMARY KEY,
	Password TEXT NOT NULL,
	Name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS DEPARTMENT(D_ID TEXT PRIMARY KEY, Name TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS STUDENT(
	S_ID TEXT PRIMARY KEY,
	Password TEXT NOT NULL,
	Name TEXT NOT NULL,
	D_ID TEXT NOT NULL,
	Semester INT NOT NULL,
	FOREIGN KEY(D_ID) REFERENCES DEPARTMENT(D_ID)
);
CREATE TABLE IF NOT EXISTS TEACHER(
	T_ID TEXT PRIMARY KEY,
	Password TEXT NOT NULL,
	Name TEXT NOT NULL,
	D_ID TEXT NOT NULL,
	FOREIGN KEY (D_ID) REFERENCES DEPARTMENT(D_ID)
);
CREATE TABLE IF NOT EXISTS COURSE(
	C_ID TEXT PRIMARY KEY,
	Name TEXT NOT NULL,
	T_ID1 TEXT NOT NULL,
	T_ID2 TEXT NULL,
	D_ID TEXT NOT NULL,
	Semester INT NOT NULL,
	FOREIGN KEY (T_ID1) REFERENCES TEACHER(T_ID),
	FOREIGN KEY (T_ID2) REFERENCES TEACHER(T_ID),
	FOREIGN KEY (D_ID) REFERENCES DEPARTMENT(D_ID)
);
CREATE TABLE IF NOT EXISTS ATTENDANCE(
	S_ID TEXT NOT NULL,
	C_ID TEXT NOT NULL,
	P_A TEXT NOT NULL,
	Lesson TEXT NOT NULL,
	IP_Address TEXT,
	FOREIGN KEY (S_ID) REFERENCES STUDENT(S_ID),
	FOREIGN KEY (C_ID) REFERENCES COURSE(C_ID)
);
CREATE TABLE IF NOT EXISTS ATTENDANCE_CODE(
	C_ID TEXT NOT NULL,
	Code INT NOT NULL,
	FOREIGN KEY (C_ID) REFERENCES COURSE(C_ID)
);
INSERT INTO ADMIN
VALUES (
		'AD0001',
		'$2b$15$IQM8fMDqzo3QiClv6Ztn4uQRNKmPyxBhXleZCnZk/e0OQpggK9c4O',
		'Admin01'
	),
	(
		'AD0002',
		'$2b$15$q4ZZNGaKNniiVeya/pbF1ejAvHtaqTS1Epa7OhcV98R5wl1NXIkOW',
		'Admin02'
	),
	(
		'AD0003',
		'$2b$15$qvHLwCM5g4Wd.zn7ARejFuyOndPHQn1nGf/f9Lif8M.rPKxhC2F96',
		'Admin03'
	);
INSERT INTO DEPARTMENT
VALUES ('CS', 'Computer Science and Engineering'),
	('PH', 'Physics');
INSERT INTO STUDENT
VALUES (
		'20CS30064',
		'$2b$15$VbRJ9HZzPRqRBWiIFLssKeX3w61CfmKxUWRhPhbng6mSL269M2i1W',
		'Anamitra Mukhopadhyay',
		'CS',
		3
	),
	(
		'20CS30057',
		'$2b$15$GHnO5i/2LtyQQRJ0llzH1.azzvkUdv4AqGSkNM7w8eZ.jiOx9ZRO2',
		'Utsav Basu',
		'CS',
		4
	),
	(
		'20CS10063',
		'$2b$15$pS6S6iP.Xr/pvBA1KhsfGeVY1Jfgsu.QinJamo1X.6hMrl60sP./C',
		'Spandan Haldar',
		'CS',
		4
	),
	(
		'20PH10062',
		'$2b$15$7gIPlcEJF7ouwniAsVIbQO61gQ3X8Zmsr8ztOgV1mFIg85DrwvLwm',
		'Souvik Rana',
		'PH',
		3
	),
	(
		'20PH10054',
		'$2b$15$JG/8vXlT4WAw4qlKS57lzem9hna90..HTJn2Wim4zHEokz2GXT0Ni',
		'Sharannya Ghosh',
		'PH',
		3
	),
	(
		'20PH10032',
		'$2b$15$tvRUdg1ahkYB5zbHWd7nhuFANm78DL.WyPAOMYybU5pPJz9xN9t6K',
		'Rajarshi Bose',
		'PH',
		4
	);
INSERT INTO TEACHER
VALUES (
		'PCS001',
		'$2b$15$Wa1PFn0aDlHw3f1ufC7Ibu0ERT5Ax.5R0SV3c/YJlAnO4KkMwCBT2',
		'Prof1',
		'CS'
	),
	(
		'PCS002',
		'$2b$15$.rdmMQvRw6iQFhLylexyzOmR9/LdVm20pc2SZl1MidaDrhiCLzrGO',
		'Prof2',
		'CS'
	),
	(
		'PCS003',
		'$2b$15$zH9SnDj8La6wGtRKx7MOJOVQN/0Qvh.5JKkiflXN9QAoD1aTRL2D2',
		'Prof3',
		'CS'
	),
	(
		'PPH001',
		'$2b$15$QLMNbcZXFQpjuNapcGEFP.aB47VnCTTO.NxWMy8ckY2DDq10d5KbC',
		'Prof4',
		'PH'
	),
	(
		'PPH002',
		'$2b$15$Bj7O.LPfhZ35/PSFMxMAFuGL0lWPD3O8.e1O01fDYxLuNHWt3nAwK',
		'Prof5',
		'PH'
	);
INSERT INTO COURSE
VALUES (
		'CS20001',
		'Algorithms',
		'PCS001',
		'PCS002',
		'CS',
		3
	),
	(
		'CS40001',
		'Algorithms 2',
		'PCS002',
		NULL,
		'CS',
		4
	),
	(
		'CS30002',
		'Software Engineering',
		'PCS001',
		'PCS003',
		'CS',
		4
	),
	(
		'PH20001',
		'Quantum Mechanics',
		'PPH001',
		'PPH002',
		'PH',
		3
	),
	(
		'PH30001',
		'Particle Physics',
		'PPH002',
		NULL,
		'PH',
		4
	);
INSERT INTO ATTENDANCE
VALUES (
		'20CS30064',
		'CS20001',
		'A',
		'2022-03-25',
		NULL
	),
	(
		'20CS30057',
		'CS40001',
		'P',
		'2022-03-25',
		'0.127.127.0'
	),
	(
		'20CS10063',
		'CS40001',
		'P',
		'2022-03-25',
		'0.127.126.0'
	),
	(
		'20PH10062',
		'PH20001',
		'P',
		'2022-03-26',
		'0.124.124.0'
	),
	(
		'20PH10054',
		'PH20001',
		'P',
		'2022-03-26',
		'0.124.124.0'
	),
	(
		'20PH10032',
		'PH30001',
		'P',
		'2022-03-27',
		'0.125.125.0'
	),
	(
		'20CS30057',
		'CS30002',
		'P',
		'2022-03-27',
		'0.127.127.0'
	),
	(
		'20CS10063',
		'CS30002',
		'A',
		'2022-03-27',
		NULL
	),
	(
		'20CS30064',
		'CS20001',
		'P',
		'2022-03-27',
		'0.120.120.0'
	);
