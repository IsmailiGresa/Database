
CREATE TABLE Reader(reader_ID INTEGER NOT NULL AUTO_INCREMENT unique,
reader_Name VARCHAR(20),
reader_Lastname VARCHAR(20),
reader_Parent VARCHAR(20),
reader_Gender VARCHAR(10),
reader_DateOfBirth DATE,
reader_State VARCHAR(25),
reader_City VARCHAR(25),
reader_Street VARCHAR(25),
reader_ZIPCode INTEGER,
reader_Phone VARCHAR(40) unique,
reader_Email VARCHAR(30) unique,
reader_Profession VARCHAR(20),
PRIMARY KEY(reader_ID));

CREATE TABLE ReaderDetails(reader_ID INTEGER NOT NULL AUTO_INCREMENT unique,
worker_ID INTEGER NOT NULL AUTO_INCREMENT unique,
reader_Registration DATE,
reader_Price INTEGER,
reader_Subscript DATE,
FOREIGN KEY (reader_ID)REFERENCES Reader(reader_ID),
FOREIGN KEY (worker_ID)REFERENCES Worker(worker_ID));

CREATE TABLE Worker(worker_ID INTEGER NOT NULL AUTO_INCREMENT unique,
worker_Name VARCHAR(20) NULL,
worker_Lastname VARCHAR(20) NULL,
worker_Rank VARCHAR(30) NULL,
worker_State VARCHAR(30) NULL,
worker_City VARCHAR(30) NULL,
worker_Street VARCHAR(30) NULL,
worker_ZIPCode INTEGER (20) NULL,
worker_Phone VARCHAR(20) NULL unique,
worker_Email VARCHAR(20) NULL unique,
worker_Salary INTEGER(10) NULL,
PRIMARY KEY(worker_ID));

CREATE TABLE Books(Book_ID INTEGER NOT NULL AUTO_INCREMENT unique,
worker_ID INTEGER NOT NULL AUTO_INCREMENT unique, 
book_Title VARCHAR(25) NULL,
book_Author VARCHAR(25) NULL,
book_Genre VARCHAR(25) NULL,
book_Copies INTEGER(25) NULL,
book_AcceptDate DATE,
book_Register VARCHAR(25) NULL,
PRIMARY KEY(Book_ID),
FOREIGN KEY (worker_ID)REFERENCES Worker(worker_ID));

CREATE TABLE Borrowed(book_ID INTEGER NOT NULL AUTO_INCREMENT unique,
reader_ID INTEGER NOT NULL AUTO_INCREMENT unique,
worker_ID INTEGER NOT NULL AUTO_INCREMENT unique, 
borrow_date DATE,
borrow_Keep DATE,
borrow_Return DATE,
borrow_Attention INTEGER(25) NULL,
FOREIGN KEY (book_ID)REFERENCES Books(book_ID),
FOREIGN KEY (reader_ID)REFERENCES Reader(reader_ID),
FOREIGN KEY (worker_ID)REFERENCES Worker(worker_ID));

CREATE TABLE Archive(archive_ID INTEGER NOT NULL AUTO_INCREMENT unique,
reader_ID INTEGER NOT NULL AUTO_INCREMENT,
book_ID INTEGER NOT NULL AUTO_INCREMENT,
PRIMARY KEY(archive_ID),
FOREIGN KEY (reader_ID)REFERENCES Reader(reader_ID),
FOREIGN KEY (book_ID)REFERENCES Books(book_ID));

CREATE TABLE DamagedBooks(damage_ID INTEGER NOT NULL AUTO_INCREMENT unique,
Useer_ID INTEGER NOT NULL AUTO_INCREMENT,
book_ID INTEGER NOT NULL AUTO_INCREMENT,
worker_ID INTEGER NOT NULL AUTO_INCREMENT, 
damage_Details VARCHAR(50) NULL, 
damage_Date DATE, 
PRIMARY KEY (damage_ID),
FOREIGN KEY (reader_ID)REFERENCES Reader(Reader_ID),
FOREIGN KEY (book_ID)REFERENCES Books(book_ID),
FOREIGN KEY (worker_ID)REFERENCES Worker(worker_ID));


INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(1, 'Lea', 'Kamberi', 'Idriz', 'F', '1997-09-15',  'Kosove', 'Ferizaj', 'Besim Hyseni', 12000, '+38344832979/FAX:038238293', 'leakamberi1@gmail.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(2, 'Arta', 'Bekteshi', 'Fatos', 'F', '2000-03-19', 'Kosovo', 'Peje', 'Agim Ramadani', 15000, '+38349321321/FAX:038324893', 'aarta3@hotmail.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(3, 'Driton', 'Kryeziu', 'Ilaz', 'M', '1999-08-12', 'Kosovo', 'Prizren', 'Vellezerit Frasheri', 20000, '+37744328239/FAX:038348292', 'ddritonn@live.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(4, 'Drita', 'Berisha', 'Edison', 'F', '1999-09-13', 'Kosovo', 'Gjakove', 'Shaip  Kamberi', 13000, '+37744243222/FAX:038423424', 'berishadrita@outlook.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(5, 'Morea', 'Selimi', 'Shpend', 'F', '1998-10-19', 'Kosovo', 'Prishtine', 'Pjeter Budi', 10000, '+377298289/FAX:0388973939', 'morea22@live.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(6, 'Ilir', 'Morina', 'Armend', 'M', '1997-12-29', 'Kosovo', 'Gjilan', 'Nazim Gafurri', 16000, '+383443284923/FAX:0382389233', 'ilirmorinna@hotmail.com', 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(7, 'Agon', 'Jashari', 'Hamdi', 'M', '2000-11-29', 'Kosovo', 'Drenas', 'Gazmend Zajmi', 18000, '+377444932809/FAX:038342343', 'jashariagon@live.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(8, 'Era', 'Gashi', 'Erion' ,'F', '2002-10-27', 'Kosovo', 'Prishtine', 'Armend Daci', 10000, '+38346384389/FAX:038329238', 'eeragashh@live.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(9, 'Dion', 'Dili', 'Valdet', 'M', '1998-04-19', 'Kosovo', 'Vushtrri', 'Vellusha', 17000, '+377493839273/FAX:038777383', 'ddili@hotmail.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(10, 'Ledion', 'Neziri', 'Bejte', 'M', '1999-05-28', 'Kosovo', 'Lipjan', 'Haxhi Zeka', 19000, '+377442389329/FAX:038289288', 'leddion@hotmail.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(11, 'Dardan', 'Gashi', 'Suad', 'M', '2001-07-26', 'Kosovo', 'Skenderaj', 'Xhelal Preveza', 14000, '+38349383988/FAX:038329879', 'dardangashi05@live.com' , 'Student');
INSERT INTO Reader(reader_ID, reader_Name, reader_Lastname, reader_Parent, reader_Gender, reader_DateOfBirth, reader_State, reader_City, reader_Street, reader_ZIPCode, reader_Phone, reader_Email, reader_Profession)
VALUES(12, 'Gezime', 'Krasniqi', 'Fadil', 'F', '2003-05-17', 'Kosovo', 'Kline', 'Fuad Dibra', 17600, '+38349438298/FAX:038328948', 'gezimekras4@live.com' , 'Student');

COMMIT;

INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(1, 022, '2020-05-17', 25, '2023-05-17');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(2, 044, '2021-07-26', 25, '2024-07-26');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(3, 044, '2020-05-28', 25, '2023-05-28');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(4, 033, '2021-04-19', 25, '2024-04-19');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(5, 022, '2020-11-29', 25, '2023-11-29');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(6, 033, '2019-09-13', 25, '2022-09-13');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(7, 055, '2019-05-28', 25, '2022-05-28');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(8, 055, '2020-09-15', 25, '2023-09-15');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(9, 066, '2019-11-25', 25, '2022-11-25');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(10, 011, '2021-04-12', 25, '2024-04-12');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(11, 011, '2020-09-11', 25, '2023-09-11');
INSERT INTO ReaderDetails(reader_ID, worker_ID, reader_Registration, reader_Price, reader_Subscript)
VALUES(12, 022, '2021-02-05', 25, '2024-02-05');

COMMIT;

INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(011, 'Bledi', 'Bekteshi', 'Librarian', 'Kosovo', 'Prishtine', 'Agon Ramadani', 15000, '+38349329921/FAX:038321193', 'blendib@hotmail.com' , 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(022, 'Agron', 'Veliu', 'Librarian', 'Kosovo', 'Peje', 'Vellezerit Frasheri', 20000, '+38344328939/FAX:038558292', 'aagronn@live.com', 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(033, 'Jeta', 'Berisha', 'Librarian', 'Kosovo', 'Gjakove', 'Shaban  Kamberi', 13000, '+38344243002/FAX:038003424', 'berishajeta@outlook.com' , 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(044, 'Rajmonda', 'Selimi', 'Librarian', 'Kosovo', 'Prishtine', 'Pjeter Budi', 10000, '+38349298269/FAX:0388933939', 'rajomnda22@live.com' , 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(055, 'Dion', 'Ademi', 'Librarian', 'Kosovo', 'Gjilan', 'Nazim Gafurri', 16000, '+38344325623/FAX:0382389233', 'dion337@hotmail.com' , 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(066, 'Albi', 'Jashari', 'Librarian', 'Kosovo', 'Ferizaj', 'Gazmend Zeqiri', 18000, '+38344498809/FAX:038342343', 'jasharialbi@live.com' , 550);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(077, 'Artan', 'Gashi', 'Technician', 'Kosovo', 'Prishtine', 'Armend Daci', 10000, '+38346114389/FAX:038328838', 'agashhi@live.com' ,530);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(088, 'Zana', 'Rama', 'Janitor', 'Single', 'Kosovo', 'Vushtrri', 'Vellusha', 17000, '+38349385273/FAX:038732383', 'rzana@hotmail.com' , 350);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(099, 'Ana', 'Bejta', 'Assistant', 'Kosovo', 'Fushekosove', 'Haxhi Zeka', 19000, '+38344238729/FAX:038221288', 'anaa2@hotmail.com' , 450);
INSERT INTO Worker(worker_ID, worker_Name, worker_Lastname, worker_Rank, worker_State, worker_City, worker_Street, worker_ZIPCode, worker_Phone, worker_Email, worker_Salary)
VALUES(010, 'Ariana', 'Gashi', 'Assistant', 'Kosovo', 'Skenderaj', 'Adem Jashari', 14000, '+38349383921/FAX:038376879', 'arianagashi05@live.com' , 450);

COMMIT;

INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0003, 011, 'The Road', 'Cormac McCarthy', 'Tragedy', 80, '2020-01-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0007, 022, 'Life After Life', 'Kate Atkinson', 'Historical Fiction', 80, '2020-02-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0005, 033, 'Darkmans', 'Nicola Braker', 'Fiction', 75, '2021-08-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0006, 044, 'The Siege', 'Helen Dunmore', 'Mystery', 90, '2021-04-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0011, 055, 'Bad Blood', 'Lorna Sage', 'True Crime', 85, '2020-01-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0004, 066, 'The God Delusion', 'Richard Dawkins', 'Non-Fiction', 100, '2021-04-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0023, 066, 'Wolf Hall', 'Hilary Mantel', 'Historical Fiction', 95, '2021-04-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0056, 022, 'Outline by Rachel', 'Cusk', 'Psychological Fiction', 80, '2020-01-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0008, 033, 'On Writing', 'Stephen King', 'Fantasy', 85, '2020-02-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0002, 044, 'The House of Grief', 'Helen Garner', 'True Crime', 75, '2020-02-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0045, 055, 'Underland', 'Robert Macfarlane', 'Non-Fiction', 85, '2020-01-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0009, 044, 'Women & Power', 'Mary Beard', 'History', 95, '2020-02-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0021, 055, 'Night Watch', 'Terry Pratchett', 'History', 90, '2020-01-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0099, 066, 'Levels Of Life', 'Julian Barnes', 'Memoir', 85, '2021-04-05');
INSERT INTO Books(book_ID, worker_ID, book_Title, book_Author, book_Genre, book_Copies, book_AcceptDate, book_Register)
VALUES(0076, 066, 'The Noonday Demon', 'Andrew Solomon', 'Memoir', 75, '2021-04-05');

COMMIT;

INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0076, 1, 111, '2020-11-17', '2020-12-02', '2020-12-02', 022, 15);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0009, 2, 411, '2021-11-19', '2021-11-28', '2021-11-26', 033, 17);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0099, 5, 211, '2019-11-26', '2019-12-11', '2019-12-11', 044, 15);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0002, 6, 611, '2021-11-13', '2021-12-01', '2021-11-28', 033, 18);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0008, 3, 711, '2020-11-28', '2020-12-21', '2020-12-17', 055, 19);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0004, 10, 811, '2021-11-15', '2021-12-01', '2021-11-30', 055, 16);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0011, 7, 911, '2021-11-25', '2021-12-10', '2021-12-10', 066, 15);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0008, 3, 711, '2020-11-28', '2020-12-21', '2020-12-17', 055, 19);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0003, 11, 111, '2020-11-11', '2020-11-26', '2020-11-26', 011, 15);
INSERT INTO Borrowed(book_ID, reader_ID, borrow_Date, borrow_Keep, borrow_Return, worker_ID, borrow_Attention)
VALUES(0007, 12, 121, '2021-11-05', '2021-11-23', '2021-11-20', 022, 18);

COMMIT;

INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(98, 111, 0003);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(97, 211, 0007);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(96, 311, 0005);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(95, 411, 0006);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(94, 511, 0011);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(93, 611, 0004);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(92, 711, 0023);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(91, 811, 0056);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(90, 911, 0004);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(89, 101, 0002);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(88, 111, 0004);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(87, 121, 0045);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(86, 411, 0021);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(85, 511, 0099);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(84, 611, 0076);
INSERT INTO Archive(archive_ID, reader_ID, book_ID)
VALUES(83, 711, 0004);

COMMIT;
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(50, 0009, 044, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(51, 0007, 022, 'Ripped', '2021-12-12');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(52, 0023, 066, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(53, 0045, 055, 'Ripped', '2021-12-12');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(54, 0011, 055, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(55, 0004, 066, 'Ripped', '2021-11-19');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(56, 0023, 066, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(57, 0056, 022, 'Ripped', '2021-11-19');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(58, 0008, 033, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(59, 0002, 044, 'Ripped', '2021-12-12');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(60, 0045, 055, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(61, 0009, 044, 'Ripped', '2021-11-19');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(62, 0021, 055, 'Ripped', '2021-12-10');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(63, 0099, 066, 'Ripped', '2021-12-12');
INSERT INTO DamagedBooks(damage_ID, book_ID, worker_ID, damage_Details, damage_Date)
VALUES(64, 0076, 066, 'Ripped', '2021-11-19');


COMMIT;

-- 1. Listoni të gjithë lexuesit që janë nga qyteti i Prishtinës.

SELECT
reader_ID,
read_name,
read_lastname,
read_City
FROM Reader R
Where read_City = 'Prishtine';

-- 2. Cilët lexues (Emrin dhe Mbiemrin e tyre) kanë huazuar te pakten dy
-- libra gjate vitit 2020?

-- 3. Listoni lexuesit te cilet e kane vonuar kthimin e librit ne afatin 15 ditesh per vitin 2020 ose 2021.

-- 4. Listoni ID-të dhe titullin e librave qe ne vitin 2019 ose 2020 jane huazur se paku nje here kurse ne vitin 2021 asnjehere.

-- 5. Listoni top 5 lexuesit me numrin me te madh të huazimeve në 3 muajt e fundit. 
-- Lista të paraqes të dhënat e lexusit duke përfshirë emrin e mbiemrin si dhe numrin e huazimeve që ka realizuar.

-- 6. Gjeni shumen e fituar nga te gjitha anetaresimet, te ndare ne vite 2019,2020,2021. 
-- Rezultati duhet te jete nje tabele te ka fushat Viti, Shuma.

-- 7. Për secilin lexues paraqitni (në një listë të vetme), per vitin aktual:
--  Emri, mbiemri,
--  numrin e librave qe ka huazuar,
--  zhanri i preferuar,
--  sa here e ka vonuar librin(nese ska vonesa, numri eshte 0)

-- 8. Gjeni top librin me te lexuar per vitin aktual.

-- 9. Cili eshte autori me i preferuar nga lexuesit?

CREATE VIEW View1 AS
SELECT U.useer_Name, U.useer_Lastname
FROM Useer U, Posts P
WHERE U.useer_ID=P.useer_ID AND P.post_location='Germany';
SELECT * FROM View1;

CREATE VIEW View2 AS
SELECT U.useer_ID, U.useer_Name,U.useer_Lastname
FROM Useer U
WHERE U.useer_City = 'Prishtine';
SELECT * FROM View2;

CREATE VIEW View3 AS
SELECT U1.useer_Name, U2.useer_ID
FROM Useer U1,Useer U2, Friends F
WHERE ((U1.useer_ID= F.Friend1_ID  AND U2.useer_ID=
F.Friend2_ID) OR (U2.useer_ID= F.Friend1_ID AND
U1.Useer_ID= F.Friend2_ID));
SELECT * FROM View3;



STORED PROCEDURE:

1:
delimiter //
create procedure ShowUseer(IN _Useer_State VARCHAR(25))
begin
select useer_ID, Useer_Name, Useer_Lastname 
from Useer where Useer_State=_Useer_State;
end//
delimiter ;
call ShowUseer('Kosovo');

2.
delimiter //
create procedure showFriends()
begin
select friend1_ID,friend2_ID,friends_Date, friends_Time 
from Friends ;
end//
delimiter ;
call showFriends();

3.
delimiter //
create procedure Eeevent_Placee_DateeTimeee(_EventPlace VARCHAR(25),_EventDate date,_EventTime time)
BEGIN
SELECT Eveent_ID,Eveent_name  FROM Eveent
 WHERE Eveent_Place=_EventPlace and begin_Date= _EventDate
and begin_Time=_EventTime;
END//
DELIMITER ;
call Eeevent_Placee_DateeTimeee('Prishtine','2019-12-21','12:00');




SELECT
useer_ID,
useer_Lastname,
useer_City
FROM Useer U
Where useer_City = 'Prishtine';


SELECT DISTINCT U1.Useer_ID, U1.useer_Name, U1.Useer_LastName
FROM  Useer U1, Useer Sh2, Posts P, Shares Shr, Comments C
WHERE U1.useer_ID=P.Useer_ID AND P.Useer_ID=Shr.Useer_ID AND U1.Useer_ID=C.Useer_ID
	AND P.Post_Date='2019.12.25' AND C.comment_Date='2019.11.23' AND  Shr.Share_Date='2019.11.23'
    AND U1.Useer_ID IN ( SELECT DISTINCT U2.Useer_ID 
FROM  Useer U2, Posts P, Shares Shr, comments C
WHERE U2.Useer_ID=P.Useer_ID AND P.Useer_ID=Shr.Useer_ID AND U2.Useer_ID=C.Useer_ID
AND P.Post_Date='2019.12.26' AND C.Comment_Date='2019.11.24' AND  Shr.Share_Date='2019.11.24');


SELECT DISTINCT E.Eveent_name
FROM Eveent E,Useer U, eveentcomfirm EC
WHERE( E.Eveent_Place='Prishtine' AND E.begin_Date='2019.12.21' AND U.Useer_ID=EC.Eveentcomfirm_ID);

SELECT distinct p.useer_ID , u.useer_name 
FROM useer u,posts p,posts p2
WHERE p.useer_ID = p2.useer_ID AND u.useer_ID= p.useer_ID AND
p.post_Date='2019-11-23' AND p2.post_Date='2019-11-23'
AND u.useer_ID NOT IN (Select p.useer_ID from posts p
WHERE p.post_Date='2019-11-24');
						

-- 5. Listoni top 5 shfrytëzuesit me numër maksimal të postimeve në dy muajt e fundit. Lista të paraqes të dhënat e shfrytëzuesit (numrin unik, emrin, mbiemrin, qytetin dhe email-in) duke përfshirë edhe numrin e postimeve.

SELECT U.Useer_ID, U.Useer_Name, U.Useer_Lastname, U.Useer_City,U.Useer_email, COUNT(U.Useer_ID) as 'numri i postimeve'
FROM Posts P, Useer U
WHERE U.Useer_ID=P.Useer_ID AND P.Post_Date BETWEEN CAST(CURDATE() - INTERVAL 60 DAY AS DATE) AND CAST(curdate() AS DATE)
group by Useer_ID order by count(U.Useer_ID) DESC
limit 5;


 SELECT DISTINCT u.useer_name,u.useer_lastname,f.totalfriends,p.post_id,p.post_date,p.post_time,plikes
from useer u,totalfriends f,posts p,ppostlikes pl
where (f.useer_id=u.useer_id and u.useer_id=p.useer_id  and pl.post_id=p.post_id and
 totalfriends in (
        SELECT
            MAX(totalfriends)
        FROM
            totalfriends )
            and plikes in (
            SELECT
            MAX(plikes)
            FROM
            ppostlikes))
                order by P.Useer_ID desc limit 10;


 FUNCTION:

1.
DELIMITER //
CREATE FUNCTION ULanguage()
RETURNS int
READS SQL DATA
BEGIN
RETURN  (SELECT COUNT(Useer_ID)
FROM Useer WHERE Useer_Language='English');
END //;
DELIMITER ;
Select Ulanguage();

2.
delimiter //
create function post()
returns integer
READS SQL DATA
begin
return  (SELECT (Useer_ID)
from posts
WHERE post_ID='P4');
end //
delimiter //
Select post();


TRIGGERS:

1.
DELIMITER \\
CREATE TRIGGER Trigger1
BEFORE
INSERT ON Eveent FOR EACH ROW
BEGIN
IF (new.useer_ID=4)
THEN SIGNAL SQLSTATE'45000'
SET MESSAGE_TEXT='Ky person e ka krijuar kete event ';
END IF;
END \\
DELIMITER \\
SHOW TRIGGERS;



2.
DELIMITER \\
CREATE TRIGGER Trigger2
BEFORE
UPDATE ON Useer FOR EACH ROW
INSERT INTO Useer_audit
SET action = ‘update’
user_Name = old.user_Name,
user_Lastname = old.user_Lastname,
user_Phone = old.user_Phone,
User_Email = old.user_Email
CHANGEAT = NOW();
END;
DELIMITER \\
SHOW TRIGGERS;


3.
DELIMITER \\
CREATE TRIGGER Trigger3
BEFORE
INSERT ON Useer FOR EACH ROW
BEGIN
IF (user_DateofBirth<=’01-01-1996’)
THEN SIGNAL SQLSTATE'45000'
SET MESSAGE_TEXT='Millenial';
ELSE
IF (user_DateofBirth>=’01-01-1997’)
THEN SIGNAL SQLSTATE'45000'
SET MESSAGE_TEXT='Post-Millenial';
END ;
DELIMITER \\
SHOW TRIGGERS;




