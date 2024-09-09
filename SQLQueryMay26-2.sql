/*
Names of Group Members: Alexander Huynh, Alexis Lucatero, Ellen Huynh

Relational Schema:

Resident
	ResidentID (PK, INT)
	FirstName (VARCHAR)
	LastName (VARCHAR)
	Date of Birth (DATE)
	Gender (VARCHAR)
	RoomID (FK, INT) - References Room.

Worker
	WorkerID (PK, INT)
	FirstName (VARCHAR)
	LastName (VARCHAR)
	Role (VARCHAR)

Donor
	DonorID (PK, INT)
	FirstName (VARCHAR)
	LastName (VARCHAR)
	Email (VARCHAR)

Room
	RoomID (PK, INT)
	Room Number (INT)

Incident Report
	IncidentReportID (PK, INT)
	ResidentID (FK, INT) - References Resident.
	Description (VARCHAR)

Item
ItemID (PK, INT)
	ItemName (VARCHAR)
	DonorID (FK, INT) - References Donor.
	CategoryID (FK, INT) - References Category.

Category
	CategoryID (PK, INT)
	CategoryName (VARCHAR)

ResidentItem (Junction Table for Resident and Item)
	ResidentItemID (PK, INT)
	ResidentID (FK, INT) - References Resident.
	ItemID (FK, INT) - References Item.

WorkerItem (Junction Table for Worker and Item)
	WorkerItemID (PK, INT)
	WorkerID (FK, INT) - References Worker.
	ItemID (FK, INT) - References Item.

DonorItem (Junction Table for Donor and Item)
	DonorItemID (PK, INT)
	DonorID (FK, INT) - References Donor.
	ItemID (FK, INT) - References Item. 

*/

-- Use this to delete the database
USE master;
GO
-- Set the database to single-user mode to disconnect all users
ALTER DATABASE HomelessShelterManagement SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
-- Drop the database
DROP DATABASE IF EXISTS HomelessShelterManagement;
GO


-- Use this to create the database

USE master;
GO

CREATE DATABASE HomelessShelterManagement;
GO

USE HomelessShelterManagement;
GO


--#region create the tables
DROP TABLE IF EXISTS Resident;

CREATE TABLE Resident(
   ResidentID  INTEGER  NOT NULL PRIMARY KEY 
  ,FirstName   VARCHAR(30) NOT NULL
  ,LastName    VARCHAR(30) NOT NULL
  ,DateOfBirth DATE  NOT NULL
  ,Gender      VARCHAR(30) NOT NULL
  ,RoomID      INTEGER  NOT NULL
);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (1,'Jillian','Kerridge','5/15/1985','Female',84);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (2,'Jamison','Shrimpton','1/8/1971','Male',43);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (3,'Winni','Topliss','6/19/1999','Female',39);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (4,'Jonie','Espinazo','12/29/1980','Female',96);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (5,'Mylo','Brockelsby','12/15/1950','Male',24);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (6,'Carrol','Lammerts','4/10/1956','Male',89);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (7,'Carlyle','Rispin','4/15/1997','Male',17);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (8,'Nari','Mullany','3/9/1952','Female',9);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (9,'Mair','Cud','12/2/1979','Female',36);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (10,'Ned','O''Kielt','9/1/1939','Bigender',47);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (11,'Vitoria','Skokoe','7/9/1949','Female',53);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (12,'Cameron','Horsburgh','6/13/1958','Genderfluid',14);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (13,'Corny','Delgua','11/22/1978','Male',74);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (14,'Beatrix','Harradence','11/22/1988','Female',69);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (15,'Margery','Durek','2/26/1967','Female',77);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (16,'Lindy','Defew','5/13/1967','Female',77);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (17,'Janessa','Duesbury','6/11/1983','Female',31);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (18,'Willie','Bardnam','1/18/1970','Male',15);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (19,'Jerrine','Toop','3/17/1956','Female',66);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (20,'Eward','Biasetti','5/13/1983','Male',14);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (21,'Kimmi','Brailsford','10/31/1986','Female',8);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (22,'Myron','Garatty','10/6/1956','Male',40);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (23,'Silvain','Booler','12/29/1941','Male',50);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (24,'Shea','Yakebovitch','10/7/1968','Bigender',84);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (25,'Quillan','Pounder','10/5/1930','Male',52);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (26,'Baron','Asbery','2/23/1992','Male',84);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (27,'Nike','Balam','11/23/1968','Female',88);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (28,'Abbey','Scoble','8/31/1990','Male',8);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (29,'Jania','Heisman','1/20/1982','Genderqueer',30);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (30,'Mala','Shekle','11/11/1936','Bigender',23);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (31,'Jeremiah','Franssen','1/22/1945','Male',25);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (32,'Fedora','Libby','11/13/1952','Female',58);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (33,'Veradis','Portail','11/2/1933','Female',2);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (34,'Esdras','Severwright','11/11/1938','Male',8);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (35,'Ganny','Dive','4/18/1964','Non-binary',51);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (36,'Erik','Brimmell','4/1/1976','Male',74);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (37,'Harland','Absolem','9/29/1946','Male',44);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (38,'Yelena','Wasbrough','3/21/1946','Female',66);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (39,'Danella','Coldtart','10/10/1958','Agender',40);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (40,'Delmor','Tungate','11/1/1931','Polygender',61);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (41,'Rhianon','Dougher','9/24/1935','Female',96);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (42,'Danice','Wilhelmy','3/26/1960','Female',79);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (43,'Kali','Jellico','7/20/1944','Female',66);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (44,'Eziechiele','Sobieski','6/2/1976','Male',95);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (45,'Felecia','Brownfield','5/19/1979','Female',30);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (46,'Zacherie','Plumridge','3/13/1954','Male',44);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (47,'Vikky','Schulke','11/24/1933','Female',58);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (48,'Rice','Crosser','12/28/1964','Male',31);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (49,'Diego','Petrussi','5/6/1947','Male',15);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (50,'Naomi','Jacks','9/3/1982','Female',67);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (51,'Anne','Sinclaire','12/24/1942','Female',52);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (52,'Thorndike','Desouza','4/19/1979','Male',72);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (53,'Kalli','Aizikovitz','7/3/1967','Genderfluid',30);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (54,'Alexi','Hugues','10/13/1965','Female',31);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (55,'Alvira','Vanyakin','5/21/1957','Female',28);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (56,'Skipton','Blackah','5/12/1975','Male',65);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (57,'Quinta','McDunlevy','1/30/1979','Female',82);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (58,'Emalia','Dannell','7/6/1931','Female',18);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (59,'Irma','Dhenin','3/31/1968','Female',81);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (60,'Ianthe','Brayson','10/28/1970','Female',90);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (61,'Nell','Crockley','7/11/1994','Female',66);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (62,'Tobe','Adacot','10/15/1934','Female',80);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (63,'Carmina','Ary','12/1/1936','Female',39);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (64,'Thadeus','D''Aeth','5/13/1960','Agender',51);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (65,'Rakel','Ronca','4/17/1933','Female',3);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (66,'Ebonee','Betton','7/31/1982','Female',56);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (67,'Junina','Fewtrell','7/10/1956','Female',40);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (68,'Jacinta','Sympson','11/11/1930','Female',15);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (69,'Giulietta','Sexton','9/11/1977','Female',68);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (70,'Caroljean','Copp','5/19/1990','Female',63);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (71,'Margette','Manderson','3/30/1943','Female',35);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (72,'Bevin','Piet','10/2/1968','Male',35);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (73,'Shane','Buttle','6/29/1983','Female',94);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (74,'Tiff','Nairns','6/5/1930','Female',92);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (75,'Larry','Wittrington','2/9/1951','Polygender',67);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (76,'Rinaldo','Iacovo','11/30/1946','Male',51);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (77,'Romeo','Fellos','2/24/1951','Male',39);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (78,'Ham','Spollen','9/20/1989','Male',6);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (79,'Janaya','Cerith','12/7/1949','Female',49);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (80,'Austen','Godlonton','10/4/1978','Male',97);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (81,'Bond','Critchley','8/31/1983','Male',39);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (82,'Lexie','Doey','12/11/1957','Female',87);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (83,'Oliviero','Fingleton','1/2/1960','Male',57);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (84,'Bee','Ellar','6/13/1957','Female',23);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (85,'Sherlocke','Falconer','3/17/1979','Male',7);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (86,'Rafaelia','Faustin','7/8/1930','Female',35);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (87,'Faber','Stonall','12/28/1971','Male',42);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (88,'Arlan','Blagbrough','8/22/1991','Male',40);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (89,'Bendick','Winny','7/18/1977','Male',38);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (90,'Farrah','Lackinton','7/20/1979','Female',37);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (91,'Mercie','Ackers','11/15/1957','Female',9);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (92,'Neala','Beavon','1/9/1988','Female',37);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (93,'Sigmund','Scheffler','4/30/1957','Male',12);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (94,'Trude','McGilbon','9/12/1989','Female',82);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (95,'Phaidra','Jemmison','8/12/1938','Female',38);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (96,'Alexandro','Barks','6/24/1988','Male',93);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (97,'Derron','Chadbourn','12/12/1978','Male',59);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (98,'Jobina','Oles','3/11/1956','Female',79);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (99,'Cobbie','Tremellan','8/29/1984','Male',21);
INSERT INTO Resident(ResidentID,FirstName,LastName,DateOfBirth,Gender,RoomID) VALUES (100,'Karly','Pether','9/29/1996','Female',10);


DROP TABLE IF EXISTS Worker;

CREATE TABLE Worker(
   WorkerID  INTEGER  NOT NULL PRIMARY KEY 
  ,FirstName VARCHAR(30) NOT NULL
  ,LastName  VARCHAR(30) NOT NULL
  ,Role      VARCHAR(100) NOT NULL
);
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (1,'Lisha','Elmhirst','Kitchen Staff');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (2,'Jodie','Hitschke','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (3,'Giulia','Cud','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (4,'Dunn','Lorenzetto','Maintenance Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (5,'Johann','Yurkin','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (6,'Marlee','Barrow','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (7,'Valry','Sweynson','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (8,'Hube','Crease','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (9,'Rivkah','Toffanelli','Case Manager');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (10,'Donaugh','Kittredge','Substance Abuse Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (11,'Tyrone','Domenge','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (12,'Michaelina','Passingham','Outreach Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (13,'Saunderson','Asipenko','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (14,'Maurene','Giorgi','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (15,'Cam','Vasilmanov','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (16,'Kincaid','Hanshawe','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (17,'Bryna','Gladdin','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (18,'Cesare','Pedrocchi','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (19,'Stefano','Dubois','Kitchen Staff');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (20,'Hamlin','MacIntosh','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (21,'Kelley','Yukhnini','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (22,'Cindy','Jachimiak','Substance Abuse Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (23,'Win','Boissier','Maintenance Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (24,'Daniel','Hucks','Housing Navigator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (25,'Chlo','Paeckmeyer','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (26,'Austine','Rowswell','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (27,'Joellyn','Vile','Case Manager');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (28,'Doll','Strippling','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (29,'Elvina','McClements','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (30,'Arliene','Whebell','Case Manager');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (31,'Erma','Kloisner','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (32,'Rip','Bessett','Peer Support Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (33,'Fulvia','Lante','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (34,'Christoforo','Prene','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (35,'Mead','Perton','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (36,'Horace','Jeannenet','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (37,'Lanny','Zemler','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (38,'Eve','Olczyk','Peer Support Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (39,'Arlette','Dauby','Volunteer Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (40,'Darrelle','Breewood','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (41,'Valida','Rounsefell','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (42,'Scarlet','Prawle','Mental Health Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (43,'Arlyne','MacUchadair','Kitchen Staff');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (44,'Arabella','Schulz','Mental Health Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (45,'Mano','Garmanson','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (46,'Ebenezer','Graal','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (47,'Kristos','Westgate','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (48,'Larry','Gardiner','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (49,'Guinna','Labrone','Maintenance Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (50,'Lanae','Gatecliff','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (51,'Alasdair','Hendrik','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (52,'Bryn','Colly','Job Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (53,'Gordan','MacRory','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (54,'Jamaal','Dundridge','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (55,'Salem','Tumielli','Life Skills Coach');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (56,'Philip','Andersen','Life Skills Coach');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (57,'Shaine','Spry','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (58,'Timmie','Spieght','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (59,'Felicity','Ruhben','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (60,'Steffie','Gunny','Substance Abuse Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (61,'Lock','Cavie','Case Manager');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (62,'Jessica','Ridgers','Volunteer Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (63,'Tammy','Dowrey','Substance Abuse Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (64,'Bale','Cotman','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (65,'Carmita','Imbrey','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (66,'Rowan','Leahair','Volunteer Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (67,'Durward','Swede','Life Skills Coach');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (68,'Patti','Livens','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (69,'Ripley','Dring','Substance Abuse Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (70,'Genevra','Geelan','Outreach Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (71,'Gaspar','Arundel','Mental Health Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (72,'Darda','Warby','Residential Aide');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (73,'Randy','Thresher','Outreach Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (74,'Irving','Burchell','Intake Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (75,'Margie','Jeannel','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (76,'Tedie','Cheer','Kitchen Staff');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (77,'Marys','Yockley','Outreach Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (78,'Allen','Ceney','Maintenance Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (79,'Sherri','Syres','Health Services Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (80,'Sydelle','Brownill','Social Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (81,'Denver','Dolton','Program Director');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (82,'Natale','Lagadu','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (83,'Baudoin','Szymanowicz','Maintenance Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (84,'Nalani','Cockaday','Administrative Assistant');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (85,'Andeee','Macias','Life Skills Coach');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (86,'Hermione','Aven','Social Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (87,'Felix','Outram','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (88,'Carly','MacKean','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (89,'Roseanne','Kurtis','Social Worker');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (90,'North','Sawer','Housing Navigator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (91,'Lilas','Suddaby','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (92,'Erminie','Swinglehurst','Shelter Supervisor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (93,'Yankee','Bernet','Job Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (94,'Elise','Simione','Security Officer');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (95,'Torin','Waterworth','Kitchen Staff');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (96,'Paddie','Hurt','Education and Training Coordinator');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (97,'Melly','Sultan','Mental Health Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (98,'Gerry','Lawry','Peer Support Specialist');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (99,'Marinna','Coggen','Job Counselor');
INSERT INTO Worker(WorkerID,FirstName,LastName,Role) VALUES (100,'Cassandra','Baylis','Case Manager');

DROP TABLE IF EXISTS Donor;

CREATE TABLE Donor(
   DonorID   INTEGER  NOT NULL PRIMARY KEY 
  ,FirstName VARCHAR(30) NOT NULL
  ,LastName  VARCHAR(30) NOT NULL
  ,Email     VARCHAR(100) NOT NULL
);
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (1,'Dael','Ginnaly','dginnaly0@foxnews.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (2,'Burty','Lawday','blawday1@live.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (3,'Aubine','Batey','abatey2@moonfruit.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (4,'Peyter','Brake','pbrake3@ihg.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (5,'Charlotte','Nuccitelli','cnuccitelli4@usgs.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (6,'Erina','Szwandt','eszwandt5@studiopress.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (7,'Willyt','Few','wfew6@amazon.co.jp');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (8,'Augusto','Chaves','achaves7@webnode.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (9,'Darya','Wildbore','dwildbore8@arstechnica.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (10,'Dylan','Novotna','dnovotna9@nationalgeographic.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (11,'Alessandro','Scandwright','ascandwrighta@furl.net');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (12,'Garret','Chalice','gchaliceb@reddit.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (13,'Brandi','Genner','bgennerc@linkedin.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (14,'Catherine','Whistan','cwhistand@angelfire.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (15,'Madelon','Mold','mmolde@bandcamp.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (16,'Paxton','Jindracek','pjindracekf@gravatar.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (17,'Ashien','Fennell','afennellg@edublogs.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (18,'Dillie','Runchman','drunchmanh@nifty.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (19,'Orton','Episcopi','oepiscopii@dagondesign.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (20,'Lane','Beckwith','lbeckwithj@cisco.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (21,'Jerrie','Warlock','jwarlockk@moonfruit.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (22,'Adam','Pucker','apuckerl@arstechnica.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (23,'Dita','Matthieson','dmatthiesonm@washington.edu');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (24,'Jillane','Lemin','jleminn@domainmarket.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (25,'Goran','Sperwell','gsperwello@whitehouse.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (26,'Donnie','Gabbitis','dgabbitisp@utexas.edu');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (27,'Eamon','Teape','eteapeq@tuttocitta.it');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (28,'Gothart','Imeson','gimesonr@wikispaces.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (29,'Lucio','Cassells','lcassellss@yolasite.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (30,'Jenny','Grewes','jgrewest@moonfruit.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (31,'Bernete','Yansons','byansonsu@noaa.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (32,'Ester','Blampey','eblampeyv@nature.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (33,'Doroteya','O''Heagertie','doheagertiew@networksolutions.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (34,'Ennis','Shelborne','eshelbornex@example.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (35,'Emmalyn','Asals','easalsy@dropbox.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (36,'Adolphus','Dyne','adynez@jimdo.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (37,'Elonore','Jenyns','ejenyns10@booking.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (38,'Matthieu','Howsam','mhowsam11@bloglines.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (39,'Fifi','Rawcliff','frawcliff12@myspace.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (40,'Lynne','Pressman','lpressman13@chronoengine.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (41,'Granny','Postgate','gpostgate14@livejournal.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (42,'Rasla','Stowell','rstowell15@spotify.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (43,'Zachery','Alessandrelli','zalessandrelli16@furl.net');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (44,'Amelie','Carress','acarress17@paypal.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (45,'Thia','Shernock','tshernock18@tinypic.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (46,'Teirtza','Chesterfield','tchesterfield19@xrea.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (47,'Amerigo','Schultze','aschultze1a@pbs.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (48,'Cleveland','Bryce','cbryce1b@disqus.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (49,'Gerti','Westhead','gwesthead1c@blogspot.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (50,'Natty','Prando','nprando1d@webs.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (51,'Wenonah','Jeavons','wjeavons1e@tinypic.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (52,'Angele','Wanley','awanley1f@free.fr');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (53,'Fidole','Wanden','fwanden1g@java.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (54,'Candide','Rosson','crosson1h@weebly.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (55,'Katti','Jachimiak','kjachimiak1i@usnews.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (56,'Loretta','Ivel','livel1j@icio.us');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (57,'Elsie','Messiter','emessiter1k@eventbrite.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (58,'Ariadne','Presidey','apresidey1l@deviantart.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (59,'Bria','Willard','bwillard1m@rakuten.co.jp');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (60,'Winni','Zannuto','wzannuto1n@salon.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (61,'Horst','Vonasek','hvonasek1o@csmonitor.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (62,'Celestine','Turban','cturban1p@diigo.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (63,'Leelah','Vittle','lvittle1q@engadget.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (64,'Findlay','Ovise','fovise1r@smugmug.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (65,'Guenevere','Dinse','gdinse1s@unesco.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (66,'Elspeth','Penright','epenright1t@webmd.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (67,'Ambrosi','Nickoles','anickoles1u@deliciousdays.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (68,'Sayers','Oxford','soxford1v@youtube.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (69,'Jacinda','Budget','jbudget1w@noaa.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (70,'Ronnica','Dammarell','rdammarell1x@blinklist.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (71,'Taylor','Caroll','tcaroll1y@hibu.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (72,'Sherri','Scotchmur','sscotchmur1z@dailymail.co.uk');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (73,'Lizette','Loisi','lloisi20@blogger.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (74,'Janella','O''Hollegan','johollegan21@wikimedia.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (75,'Maureene','Holdren','mholdren22@biglobe.ne.jp');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (76,'Spense','Berens','sberens23@e-recht24.de');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (77,'Evania','Causnett','ecausnett24@wufoo.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (78,'Westbrooke','Szabo','wszabo25@indiatimes.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (79,'Emelyne','Arson','earson26@hubpages.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (80,'Bary','Kearford','bkearford27@google.com.au');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (81,'Gustave','Pennrington','gpennrington28@comcast.net');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (82,'Collette','Mettrick','cmettrick29@auda.org.au');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (83,'Stephenie','Plessing','splessing2a@jigsy.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (84,'Adi','Dunnan','adunnan2b@arstechnica.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (85,'Sollie','Clitherow','sclitherow2c@hugedomains.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (86,'Broderick','McCudden','bmccudden2d@engadget.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (87,'Ginger','McMains','gmcmains2e@com.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (88,'Jenine','Chidlow','jchidlow2f@ameblo.jp');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (89,'Garrard','Benadette','gbenadette2g@sbwire.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (90,'Lane','Choke','lchoke2h@wikipedia.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (91,'Agosto','Mahaffey','amahaffey2i@mysql.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (92,'Naoma','Casbon','ncasbon2j@ca.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (93,'Matthew','Watterson','mwatterson2k@instagram.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (94,'Ade','Tremblay','atremblay2l@unblog.fr');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (95,'Gregg','Conre','gconre2m@wired.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (96,'Cathleen','Matissoff','cmatissoff2n@apache.org');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (97,'Pollyanna','Dearnaly','pdearnaly2o@thetimes.co.uk');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (98,'Kassia','Grasha','kgrasha2p@hud.gov');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (99,'Francois','O''Nion','fonion2q@weather.com');
INSERT INTO Donor(DonorID,FirstName,LastName,Email) VALUES (100,'Shay','Sheere','ssheere2r@prlog.org');


DROP TABLE IF EXISTS Room;


CREATE TABLE Room(
   RoomID     INTEGER  NOT NULL PRIMARY KEY 
  ,RoomNumber INTEGER  NOT NULL
);
INSERT INTO Room(RoomID,RoomNumber) VALUES (1,39);
INSERT INTO Room(RoomID,RoomNumber) VALUES (2,68);
INSERT INTO Room(RoomID,RoomNumber) VALUES (3,4);
INSERT INTO Room(RoomID,RoomNumber) VALUES (4,42);
INSERT INTO Room(RoomID,RoomNumber) VALUES (5,23);
INSERT INTO Room(RoomID,RoomNumber) VALUES (6,24);
INSERT INTO Room(RoomID,RoomNumber) VALUES (7,83);
INSERT INTO Room(RoomID,RoomNumber) VALUES (8,70);
INSERT INTO Room(RoomID,RoomNumber) VALUES (9,56);
INSERT INTO Room(RoomID,RoomNumber) VALUES (10,25);
INSERT INTO Room(RoomID,RoomNumber) VALUES (11,4);
INSERT INTO Room(RoomID,RoomNumber) VALUES (12,64);
INSERT INTO Room(RoomID,RoomNumber) VALUES (13,11);
INSERT INTO Room(RoomID,RoomNumber) VALUES (14,79);
INSERT INTO Room(RoomID,RoomNumber) VALUES (15,1);
INSERT INTO Room(RoomID,RoomNumber) VALUES (16,52);
INSERT INTO Room(RoomID,RoomNumber) VALUES (17,31);
INSERT INTO Room(RoomID,RoomNumber) VALUES (18,40);
INSERT INTO Room(RoomID,RoomNumber) VALUES (19,18);
INSERT INTO Room(RoomID,RoomNumber) VALUES (20,17);
INSERT INTO Room(RoomID,RoomNumber) VALUES (21,73);
INSERT INTO Room(RoomID,RoomNumber) VALUES (22,63);
INSERT INTO Room(RoomID,RoomNumber) VALUES (23,51);
INSERT INTO Room(RoomID,RoomNumber) VALUES (24,1);
INSERT INTO Room(RoomID,RoomNumber) VALUES (25,42);
INSERT INTO Room(RoomID,RoomNumber) VALUES (26,34);
INSERT INTO Room(RoomID,RoomNumber) VALUES (27,34);
INSERT INTO Room(RoomID,RoomNumber) VALUES (28,40);
INSERT INTO Room(RoomID,RoomNumber) VALUES (29,24);
INSERT INTO Room(RoomID,RoomNumber) VALUES (30,53);
INSERT INTO Room(RoomID,RoomNumber) VALUES (31,97);
INSERT INTO Room(RoomID,RoomNumber) VALUES (32,55);
INSERT INTO Room(RoomID,RoomNumber) VALUES (33,16);
INSERT INTO Room(RoomID,RoomNumber) VALUES (34,68);
INSERT INTO Room(RoomID,RoomNumber) VALUES (35,85);
INSERT INTO Room(RoomID,RoomNumber) VALUES (36,26);
INSERT INTO Room(RoomID,RoomNumber) VALUES (37,52);
INSERT INTO Room(RoomID,RoomNumber) VALUES (38,33);
INSERT INTO Room(RoomID,RoomNumber) VALUES (39,40);
INSERT INTO Room(RoomID,RoomNumber) VALUES (40,20);
INSERT INTO Room(RoomID,RoomNumber) VALUES (41,5);
INSERT INTO Room(RoomID,RoomNumber) VALUES (42,54);
INSERT INTO Room(RoomID,RoomNumber) VALUES (43,24);
INSERT INTO Room(RoomID,RoomNumber) VALUES (44,35);
INSERT INTO Room(RoomID,RoomNumber) VALUES (45,69);
INSERT INTO Room(RoomID,RoomNumber) VALUES (46,61);
INSERT INTO Room(RoomID,RoomNumber) VALUES (47,51);
INSERT INTO Room(RoomID,RoomNumber) VALUES (48,65);
INSERT INTO Room(RoomID,RoomNumber) VALUES (49,94);
INSERT INTO Room(RoomID,RoomNumber) VALUES (50,13);
INSERT INTO Room(RoomID,RoomNumber) VALUES (51,59);
INSERT INTO Room(RoomID,RoomNumber) VALUES (52,64);
INSERT INTO Room(RoomID,RoomNumber) VALUES (53,75);
INSERT INTO Room(RoomID,RoomNumber) VALUES (54,48);
INSERT INTO Room(RoomID,RoomNumber) VALUES (55,34);
INSERT INTO Room(RoomID,RoomNumber) VALUES (56,27);
INSERT INTO Room(RoomID,RoomNumber) VALUES (57,35);
INSERT INTO Room(RoomID,RoomNumber) VALUES (58,44);
INSERT INTO Room(RoomID,RoomNumber) VALUES (59,71);
INSERT INTO Room(RoomID,RoomNumber) VALUES (60,49);
INSERT INTO Room(RoomID,RoomNumber) VALUES (61,52);
INSERT INTO Room(RoomID,RoomNumber) VALUES (62,100);
INSERT INTO Room(RoomID,RoomNumber) VALUES (63,33);
INSERT INTO Room(RoomID,RoomNumber) VALUES (64,100);
INSERT INTO Room(RoomID,RoomNumber) VALUES (65,25);
INSERT INTO Room(RoomID,RoomNumber) VALUES (66,62);
INSERT INTO Room(RoomID,RoomNumber) VALUES (67,27);
INSERT INTO Room(RoomID,RoomNumber) VALUES (68,83);
INSERT INTO Room(RoomID,RoomNumber) VALUES (69,39);
INSERT INTO Room(RoomID,RoomNumber) VALUES (70,5);
INSERT INTO Room(RoomID,RoomNumber) VALUES (71,12);
INSERT INTO Room(RoomID,RoomNumber) VALUES (72,64);
INSERT INTO Room(RoomID,RoomNumber) VALUES (73,47);
INSERT INTO Room(RoomID,RoomNumber) VALUES (74,68);
INSERT INTO Room(RoomID,RoomNumber) VALUES (75,99);
INSERT INTO Room(RoomID,RoomNumber) VALUES (76,26);
INSERT INTO Room(RoomID,RoomNumber) VALUES (77,16);
INSERT INTO Room(RoomID,RoomNumber) VALUES (78,41);
INSERT INTO Room(RoomID,RoomNumber) VALUES (79,75);
INSERT INTO Room(RoomID,RoomNumber) VALUES (80,25);
INSERT INTO Room(RoomID,RoomNumber) VALUES (81,18);
INSERT INTO Room(RoomID,RoomNumber) VALUES (82,46);
INSERT INTO Room(RoomID,RoomNumber) VALUES (83,41);
INSERT INTO Room(RoomID,RoomNumber) VALUES (84,48);
INSERT INTO Room(RoomID,RoomNumber) VALUES (85,28);
INSERT INTO Room(RoomID,RoomNumber) VALUES (86,62);
INSERT INTO Room(RoomID,RoomNumber) VALUES (87,68);
INSERT INTO Room(RoomID,RoomNumber) VALUES (88,21);
INSERT INTO Room(RoomID,RoomNumber) VALUES (89,12);
INSERT INTO Room(RoomID,RoomNumber) VALUES (90,56);
INSERT INTO Room(RoomID,RoomNumber) VALUES (91,100);
INSERT INTO Room(RoomID,RoomNumber) VALUES (92,25);
INSERT INTO Room(RoomID,RoomNumber) VALUES (93,4);
INSERT INTO Room(RoomID,RoomNumber) VALUES (94,82);
INSERT INTO Room(RoomID,RoomNumber) VALUES (95,29);
INSERT INTO Room(RoomID,RoomNumber) VALUES (96,95);
INSERT INTO Room(RoomID,RoomNumber) VALUES (97,34);
INSERT INTO Room(RoomID,RoomNumber) VALUES (98,28);
INSERT INTO Room(RoomID,RoomNumber) VALUES (99,18);
INSERT INTO Room(RoomID,RoomNumber) VALUES (100,55);

DROP TABLE IF EXISTS "IncidentReport";

CREATE TABLE IncidentReport(
   IncidentReportID INTEGER  NOT NULL PRIMARY KEY 
  ,ResidentID       INTEGER  NOT NULL
  ,Description      VARCHAR(150) NOT NULL
);
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (1,70,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (2,40,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (3,18,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (4,32,'Contraband possession');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (5,100,'Unauthorized room entry');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (6,95,'Contraband possession');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (7,87,'Property damage');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (8,68,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (9,79,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (10,5,'Contraband possession');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (11,76,'Resident evacuation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (12,15,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (13,19,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (14,72,'Altercation between residents');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (15,55,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (16,18,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (17,92,'Bed bug infestation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (18,2,'Contraband possession');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (19,85,'Unauthorized visitor');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (20,84,'Fire alarm activation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (21,83,'Resident non-compliance');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (22,56,'Resident fall');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (23,10,'Medical emergency');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (24,53,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (25,1,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (26,43,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (27,32,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (28,15,'Property damage');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (29,90,'Unauthorized visitor');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (30,19,'Property damage');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (31,73,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (32,6,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (33,53,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (34,40,'Missing resident');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (35,57,'Unauthorized room entry');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (36,67,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (37,11,'Unauthorized visitor');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (38,21,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (39,94,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (40,72,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (41,65,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (42,2,'Altercation between residents');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (43,30,'Medical emergency');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (44,6,'Altercation between residents');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (45,8,'Medical emergency');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (46,76,'Contraband possession');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (47,1,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (48,74,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (49,44,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (50,47,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (51,54,'Resident evacuation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (52,69,'Bed bug infestation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (53,11,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (54,89,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (55,91,'Fire alarm activation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (56,63,'Resident non-compliance');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (57,51,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (58,61,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (59,87,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (60,61,'Resident fall');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (61,97,'Fire alarm activation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (62,63,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (63,67,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (64,98,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (65,2,'Resident evacuation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (66,82,'Unauthorized visitor');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (67,59,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (68,60,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (69,21,'Missing resident');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (70,74,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (71,91,'Resident evacuation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (72,86,'Bed bug infestation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (73,33,'Missing resident');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (74,16,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (75,24,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (76,74,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (77,57,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (78,72,'Missing resident');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (79,45,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (80,90,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (81,66,'Property damage');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (82,50,'Missing resident');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (83,40,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (84,44,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (85,8,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (86,78,'Verbal abuse');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (87,68,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (88,52,'Disruptive behavior');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (89,78,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (90,8,'Resident non-compliance');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (91,90,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (92,47,'Foodborne illness');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (93,76,'Vandalism');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (94,57,'Resident evacuation');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (95,60,'Mental health crisis');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (96,80,'Resident intoxication');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (97,62,'Altercation between residents');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (98,40,'Theft');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (99,81,'Trespassing');
INSERT INTO IncidentReport(IncidentReportID,ResidentID,Description) VALUES (100,8,'Resident evacuation');



DROP TABLE IF EXISTS Category;

CREATE TABLE Category(
   CategoryID   INTEGER  NOT NULL PRIMARY KEY
  ,CategoryName VARCHAR(30) NOT NULL 
);
INSERT INTO Category(CategoryName,CategoryID) VALUES ('Food',1);
INSERT INTO Category(CategoryName,CategoryID) VALUES ('Toiletries',2);
INSERT INTO Category(CategoryName,CategoryID) VALUES ('Clothes',3);



DROP TABLE IF EXISTS Item;

CREATE TABLE Item(
   ItemID     INTEGER  NOT NULL PRIMARY KEY 
  ,ItemName   VARCHAR(50) NOT NULL
  ,DonorID    INTEGER  NOT NULL
  ,CategoryID INTEGER  NOT NULL
);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (1,'Blanket',23,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (2,'Soap',87,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (3,'Canned Beans',45,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (4,'Winter Coat',12,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (5,'Toothpaste',34,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (6,'Canned Tuna',56,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (7,'T-shirt',78,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (8,'Shampoo',19,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (9,'Pasta',65,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (10,'Socks',32,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (11,'Diapers',21,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (12,'Instant Noodles',48,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (13,'Jeans',15,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (14,'Hand Sanitizer',66,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (15,'Rice',89,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (16,'Jacket',50,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (17,'Toothbrush',28,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (18,'Peanut Butter',33,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (19,'Sweater',47,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (20,'Conditioner',90,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (21,'Granola Bars',73,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (22,'Gloves',29,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (23,'Deodorant',14,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (24,'Cereal',91,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (25,'Hat',35,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (26,'Feminine Hygiene Products',17,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (27,'Canned Soup',22,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (28,'Shoes',58,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (29,'Body Wash',26,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (30,'Crackers',99,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (31,'Towels',40,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (32,'Razors',85,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (33,'Pasta Sauce',77,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (34,'Scarf',54,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (35,'Lotion',13,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (36,'Beans',63,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (37,'Shorts',31,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (38,'Mouthwash',70,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (39,'Canned Vegetables',9,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (40,'Sleeping Bag',42,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (41,'Shaving Cream',79,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (42,'Oatmeal',95,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (43,'Sweatpants',6,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (44,'Shampoo',88,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (45,'Canned Fruit',37,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (46,'Underwear',60,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (47,'Toothpaste',11,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (48,'Boxed Meals',71,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (49,'Thermal Socks',2,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (50,'Body Lotion',52,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (51,'Flour',97,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (52,'Raincoat',20,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (53,'Shaving Gel',5,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (54,'Powdered Milk',81,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (55,'Beanie',44,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (56,'Hand Soap',93,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (57,'Instant Coffee',7,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (58,'Blazer',25,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (59,'Shampoo',49,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (60,'Protein Bars',68,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (61,'Sandals',36,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (62,'Lip Balm',10,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (63,'Pasta',83,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (64,'Hoodie',18,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (65,'Deodorant',64,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (66,'Tea Bags',59,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (67,'Socks',38,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (68,'Toothbrush',4,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (69,'Rice',75,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (70,'Winter Hat',53,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (71,'Shampoo',27,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (72,'Nuts',57,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (73,'Sweatshirt',74,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (74,'Body Wash',41,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (75,'Breakfast Cereal',76,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (76,'Boots',1,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (77,'Hand Sanitizer',8,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (78,'Peanut Butter',13,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (79,'Jacket',31,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (80,'Conditioner',6,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (81,'Granola Bars',52,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (82,'Gloves',14,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (83,'Deodorant',65,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (84,'Canned Beans',84,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (85,'Hats',11,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (86,'Hand Soap',35,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (87,'Pasta',26,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (88,'Shirts',32,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (89,'Lotion',44,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (90,'Canned Fruit',9,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (91,'Shorts',67,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (92,'Mouthwash',16,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (93,'Canned Vegetables',24,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (94,'Blankets',7,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (95,'Shaving Cream',48,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (96,'Oatmeal',29,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (97,'Jeans',34,3);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (98,'Soap',59,2);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (99,'Canned Tuna',77,1);
INSERT INTO Item(ItemID,ItemName,DonorID,CategoryID) VALUES (100,'Toothpaste',15,2);


DROP TABLE IF EXISTS ResidentItem;


CREATE TABLE ResidentItem(
   ResidentItemID INTEGER  NOT NULL PRIMARY KEY 
  ,ResidentID     INTEGER  NOT NULL
  ,ItemID         INTEGER  NOT NULL
);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (1,92,66);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (2,42,9);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (3,60,97);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (4,25,38);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (5,18,53);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (6,6,89);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (7,14,36);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (8,45,96);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (9,48,32);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (10,57,2);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (11,64,18);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (12,62,30);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (13,56,61);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (14,31,4);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (15,35,81);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (16,95,97);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (17,38,80);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (18,4,92);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (19,42,57);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (20,19,69);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (21,52,56);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (22,77,59);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (23,44,66);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (24,79,17);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (25,42,42);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (26,80,2);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (27,67,17);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (28,78,95);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (29,90,54);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (30,70,54);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (31,86,94);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (32,75,89);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (33,13,66);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (34,27,39);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (35,62,35);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (36,100,97);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (37,87,83);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (38,29,89);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (39,23,88);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (40,19,60);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (41,29,28);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (42,32,72);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (43,53,19);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (44,29,36);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (45,35,54);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (46,40,44);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (47,5,61);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (48,3,46);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (49,61,95);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (50,81,65);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (51,30,6);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (52,23,9);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (53,66,81);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (54,7,97);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (55,67,86);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (56,40,26);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (57,94,22);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (58,47,88);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (59,91,99);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (60,68,97);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (61,61,83);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (62,59,18);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (63,58,70);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (64,15,33);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (65,27,88);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (66,41,9);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (67,33,83);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (68,17,23);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (69,43,30);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (70,47,99);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (71,44,13);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (72,45,73);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (73,55,84);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (74,51,67);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (75,28,96);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (76,54,69);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (77,60,1);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (78,61,35);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (79,22,4);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (80,74,24);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (81,19,77);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (82,43,55);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (83,62,57);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (84,50,16);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (85,73,79);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (86,24,18);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (87,85,31);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (88,59,87);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (89,2,30);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (90,23,38);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (91,79,55);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (92,70,54);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (93,89,83);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (94,96,86);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (95,91,88);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (96,2,98);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (97,34,17);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (98,10,60);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (99,15,75);
INSERT INTO ResidentItem(ResidentItemID,ResidentID,ItemID) VALUES (100,67,68);



DROP TABLE IF EXISTS WorkerItem;

CREATE TABLE WorkerItem(
   WorkerItemID INTEGER  NOT NULL PRIMARY KEY 
  ,WorkerID     INTEGER  NOT NULL
  ,ItemID       INTEGER  NOT NULL
);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (1,88,59);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (2,27,16);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (3,81,6);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (4,52,92);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (5,73,73);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (6,90,89);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (7,31,72);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (8,7,27);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (9,27,90);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (10,87,46);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (11,35,93);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (12,87,15);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (13,67,92);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (14,77,88);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (15,100,84);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (16,58,49);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (17,78,22);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (18,2,46);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (19,4,52);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (20,35,63);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (21,67,46);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (22,57,80);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (23,88,75);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (24,65,76);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (25,82,10);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (26,60,76);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (27,36,26);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (28,19,39);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (29,38,91);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (30,31,61);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (31,16,87);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (32,65,66);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (33,75,13);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (34,61,18);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (35,84,79);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (36,6,17);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (37,60,45);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (38,94,82);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (39,44,67);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (40,85,56);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (41,54,63);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (42,62,16);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (43,37,72);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (44,26,96);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (45,36,90);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (46,53,96);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (47,96,33);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (48,96,25);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (49,100,41);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (50,50,67);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (51,17,39);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (52,84,1);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (53,99,26);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (54,19,69);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (55,44,52);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (56,9,94);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (57,69,13);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (58,25,19);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (59,82,58);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (60,55,47);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (61,82,7);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (62,89,16);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (63,78,23);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (64,51,17);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (65,20,59);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (66,62,81);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (67,91,65);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (68,98,74);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (69,61,44);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (70,26,25);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (71,72,62);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (72,12,6);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (73,22,99);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (74,62,91);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (75,65,79);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (76,95,60);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (77,1,61);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (78,52,59);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (79,64,14);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (80,81,80);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (81,88,46);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (82,96,64);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (83,71,57);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (84,39,82);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (85,34,44);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (86,23,47);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (87,28,31);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (88,34,60);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (89,88,68);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (90,5,77);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (91,97,62);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (92,21,18);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (93,99,46);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (94,86,24);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (95,2,9);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (96,41,44);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (97,17,1);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (98,92,84);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (99,23,20);
INSERT INTO WorkerItem(WorkerItemID,WorkerID,ItemID) VALUES (100,27,66);


DROP TABLE IF EXISTS DonorItem;

CREATE TABLE DonorItem(
   DonorItemID INTEGER  NOT NULL PRIMARY KEY 
  ,DonorID     INTEGER  NOT NULL
  ,ItemID      INTEGER  NOT NULL
);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (1,97,92);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (2,61,93);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (3,54,71);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (4,45,91);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (5,67,51);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (6,60,78);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (7,24,75);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (8,78,7);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (9,59,64);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (10,31,85);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (11,16,30);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (12,33,72);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (13,65,6);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (14,84,23);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (15,77,82);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (16,2,17);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (17,34,61);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (18,43,49);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (19,36,11);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (20,92,76);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (21,34,5);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (22,33,53);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (23,78,9);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (24,87,91);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (25,1,43);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (26,36,83);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (27,26,39);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (28,9,54);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (29,80,43);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (30,34,73);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (31,11,59);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (32,91,14);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (33,45,22);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (34,60,38);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (35,60,43);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (36,50,15);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (37,43,96);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (38,6,36);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (39,79,78);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (40,48,15);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (41,4,100);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (42,6,45);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (43,9,46);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (44,67,53);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (45,45,44);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (46,23,72);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (47,20,26);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (48,77,78);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (49,81,56);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (50,84,61);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (51,95,82);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (52,69,76);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (53,78,29);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (54,96,32);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (55,57,52);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (56,65,38);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (57,97,78);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (58,47,34);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (59,47,47);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (60,41,65);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (61,15,39);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (62,96,76);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (63,36,25);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (64,57,64);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (65,85,93);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (66,55,95);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (67,67,29);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (68,62,13);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (69,56,9);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (70,20,11);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (71,26,49);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (72,95,21);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (73,30,14);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (74,17,46);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (75,44,58);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (76,17,40);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (77,4,20);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (78,14,18);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (79,35,53);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (80,81,96);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (81,8,49);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (82,34,53);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (83,95,62);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (84,93,3);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (85,43,27);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (86,91,41);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (87,56,19);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (88,99,55);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (89,30,6);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (90,60,43);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (91,9,75);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (92,50,20);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (93,55,27);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (94,60,92);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (95,19,44);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (96,65,31);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (97,24,22);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (98,74,10);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (99,72,72);
INSERT INTO DonorItem(DonorItemID,DonorID,ItemID) VALUES (100,55,74);

--#endregion

--#region FKs

--ALTER TABLE "IncidentReport"
--DROP CONSTRAINT FK_WorkerID;

-- IncidentReport foreign key

ALTER TABLE "IncidentReport"
ADD CONSTRAINT FK_Incident_Report_ResidentID
FOREIGN KEY (ResidentID) REFERENCES Resident(ResidentID);


-- Item foreign key

-- ALTER TABLE "IncidentReport"
-- DROP CONSTRAINT FK_WorkerID;

ALTER TABLE "Item"
ADD CONSTRAINT FK_Item_CategoryID
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID);


-- Associative Entity foreign keys

-- Worker item

ALTER TABLE "WorkerItem"
ADD CONSTRAINT FK_WorkerItem_WorkerID
FOREIGN KEY (WorkerID) REFERENCES Worker(WorkerID);

ALTER TABLE "WorkerItem"
ADD CONSTRAINT FK_WorkerItem_ItemID
FOREIGN KEY (ItemID) REFERENCES Item(ItemID);

-- Donor item

ALTER TABLE "DonorItem"
ADD CONSTRAINT FK_DonorItem_DonorID
FOREIGN KEY (DonorID) REFERENCES Donor(DonorID);

ALTER TABLE "DonorItem"
ADD CONSTRAINT FK_DonorItem_ItemID
FOREIGN KEY (ItemID) REFERENCES Item(ItemID);


-- Resident item

ALTER TABLE "ResidentItem"
ADD CONSTRAINT FK_ResidentItem_DonorID
FOREIGN KEY (ResidentID) REFERENCES Resident(ResidentID);

ALTER TABLE "ResidentItem"
ADD CONSTRAINT FK_ResidentItem_ItemID
FOREIGN KEY (ItemID) REFERENCES Item(ItemID);

ALTER TABLE "Resident"
ADD CONSTRAINT FK_Resident_RoomID
FOREIGN KEY (RoomID) REFERENCES Room(RoomID);

--#endregion

--#region Ellen Huynh's code

-- OBJECT #1 Stored Procedure

-- I find it interesting that you have to specify ResidentID, hopefully that is not a problem, because to make it where ID is not nessesary you have to change the set up (which the prof didn't really cover)

-- drop if exists
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddResident]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE AddResident;
END
GO

-- alternative add resident
CREATE PROCEDURE AddResident
    @ResidentID INTEGER,
    @FirstName VARCHAR(30),
    @LastName VARCHAR(30),
    @DateOfBirth DATE,
    @Gender VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON; -- prevents extra result sets from interfering with SELECT statements.
    DECLARE @Today DATE = GETDATE(); -- holder for the current date.
    BEGIN TRY
        BEGIN TRANSACTION 
        -- subquery to check if the ResidentID already exists 
        IF EXISTS (SELECT 1 FROM Resident WHERE ResidentID = @ResidentID)
        BEGIN
            RAISERROR('A resident with the specified ID already exists.', 16, 1);
        END
        -- actual insert statement
        INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
        VALUES (@ResidentID, @FirstName, @LastName, @DateOfBirth, @Gender);
        -- using a variable in a condition
        IF @DateOfBirth > @Today
        BEGIN
            RAISERROR('Date of Birth cannot be in the future.', 16, 1);
        END
        COMMIT TRANSACTION -- if no errors, commit
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION; -- rollback the transaction in case of an error?
        -- Error handling: capture the error and rethrow it
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END


-- testing for the stored procedure begins here --

-- basic
EXEC AddResident @ResidentID = 101, @FirstName = 'Steve', @LastName = 'Rodgers', @DateOfBirth = '1935-12-25', @Gender = 'Male';

SELECT * FROM Resident

-- check unique residentID check
-- Assuming ResidentID 101 already exists from the previous test.
EXEC AddResident @ResidentID = 101, @FirstName = 'Wanda', @LastName = 'Max', @DateOfBirth = '2000-01-01', @Gender = 'Female';

--testing logical check
EXEC AddResident @ResidentID = 102, @FirstName = 'Peter', @LastName = 'Parker', @DateOfBirth = '2025-01-01', @Gender = 'Non-binary';

-- explict transaction and error handling

-- If a non-valid gender is entered, error

ALTER TABLE Resident
DROP CONSTRAINT IF EXISTS CheckGender;

ALTER TABLE Resident
ADD CONSTRAINT CheckGender CHECK (Gender IN ('Male', 'Female', 'Non-binary', 'Bigender', 'Agender', 'Unknown', 'Genderfluid', 'Other'));


-- insert a value that violate constraint.
EXEC AddResident @ResidentID = 105, @FirstName = 'Barry', @LastName = 'Allen', @DateOfBirth = '1999-07-20', @Gender = 'xxx';

SELECT * FROM Resident


-- Delete Resident
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeleteResident]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE DeleteResident;
END
GO

CREATE PROCEDURE DeleteResident
    @ResidentID INTEGER
AS
BEGIN
    DELETE FROM Resident WHERE ResidentID = @ResidentID;
END

-- Testing delete Resident to reset 
EXEC DeleteResident @ResidentID = 101;

SELECT * FROM Resident

-- Object #2 Check Constraint

-- Constrain to check if email is valid (has an "@" sign)
ALTER TABLE Donor
DROP CONSTRAINT IF EXISTS CheckDonorEmail;

ALTER TABLE Donor
ADD CONSTRAINT CheckDonorEmail
CHECK (Email LIKE '%@%');

-- Testing where error 
INSERT INTO Donor (DonorID, FirstName, LastName, Email) VALUES (101, 'Aaron', 'Error', 'wontwork.com');

-- Testing where it works
INSERT INTO Donor (DonorID, FirstName, LastName, Email) VALUES (101, 'Amy', 'Run', 'willwork@email.com');

SELECT * FROM Donor

-- Delete added row to reset
DELETE FROM Donor
WHERE DonorID = 101

SELECT * FROM Donor

-- OBJECT #3 Computed column that creates a full name column

-- Drop if exsists
IF EXISTS(SELECT * FROM sys.columns 
          WHERE Name = N'FullName' AND Object_ID = Object_ID(N'Resident'))
BEGIN
    EXEC sp_executesql N'ALTER TABLE Resident DROP COLUMN FullName';
END

-- Create a full name computed column
ALTER TABLE Resident
ADD FullName AS (FirstName + ' ' + LastName) PERSISTED;

-- test that it worked
SELECT * FROM Resident
--#endregion




--#region Alexander Huynh's code

-- OBJECT #1 Stored Procedure


-- Create the stored procedure to add a new incident report with enhanced features

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertItem]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE InsertItem;
END
GO

CREATE PROCEDURE InsertItem
    @ItemID INTEGER,
    @ItemName VARCHAR(50),
    @DonorID INTEGER,
    @CategoryID INTEGER
AS
BEGIN
    -- Start the transaction
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Check if DonorID exists in the Donor table
        IF NOT EXISTS (SELECT 1 FROM Donor WHERE DonorID = @DonorID)
        BEGIN
            RAISERROR('DonorID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Check if CategoryID exists in the Category table
        IF NOT EXISTS (SELECT 1 FROM Category WHERE CategoryID = @CategoryID)
        BEGIN
            RAISERROR('CategoryID does not exist.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Insert the new item
        INSERT INTO Item (ItemID, ItemName, DonorID, CategoryID)
        VALUES (@ItemID, @ItemName, @DonorID, @CategoryID);

        -- Commit the transaction if no error occurs
        COMMIT TRANSACTION;
        PRINT 'Item inserted successfully.';

    END TRY
    BEGIN CATCH
        -- Handle errors and rollback transaction
        ROLLBACK TRANSACTION;

        -- Get error details
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        -- Raise the error with the captured details
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;

-- Tests

-- Basic test
EXEC InsertItem @ItemID = 101, @ItemName = 'Donuts', @DonorID = 56, @CategoryID = 1;

SELECT * FROM Item;

-- Delete added row to reset
DELETE FROM Item
WHERE ItemID = 101

-- Attempt to insert an item with a duplicate ItemID
EXEC InsertItem @ItemID = 1, @ItemName = 'Duplicate Item', @DonorID = 56, @CategoryID = 1;

-- Attempt to insert an item with a non-existing DonorID
EXEC InsertItem @ItemID = 102, @ItemName = 'New Item', @DonorID = 999, @CategoryID = 3;

-- Attempt to insert an item with a non-existing CategoryID
EXEC InsertItem @ItemID = 103, @ItemName = 'Another Item', @DonorID = 23, @CategoryID = 999;






-- Object #2 Check Constraint



ALTER TABLE Resident
DROP CONSTRAINT IF EXISTS CK_Resident_DateOfBirthFormat ;

-- Alter table to add CHECK constraint for date format
ALTER TABLE Resident
ADD CONSTRAINT CK_Resident_DateOfBirthFormat 
CHECK (DateOfBirth LIKE '[1-2][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]');


-- Inserting values with correct date formats
INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
VALUES (101, 'John', 'Doe', '1993-02-01', 'Male');

INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
VALUES (102, 'Jane', 'Doe', '1988-12-15', 'Female');

DELETE FROM Resident
WHERE ResidentID = 101

DELETE FROM Resident
WHERE ResidentID = 102

DELETE FROM Resident
WHERE ResidentID = 103

-- Attempt to insert values with incorrect date formats
-- This should fail due to the CHECK constraint
INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
VALUES (101, 'John', 'Doe', '1993-15-01', 'Male'); -- Incorrect month format

INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
VALUES (102, 'Jane', 'Doe', '1993:02:01', 'Female'); -- Incorrect date separator

INSERT INTO Resident (ResidentID, FirstName, LastName, DateOfBirth, Gender)
VALUES (103, 'Jane', 'Doe', '0000/02/01', 'Female'); -- Incorrect year

SELECT * FROM Resident;




-- OBJECT #3 Computed column that creates a full name column


-- Drop if exsists
IF EXISTS(SELECT * FROM sys.columns 
          WHERE Name = N'WorkerDescription' AND Object_ID = Object_ID(N'Worker'))
BEGIN
    EXEC sp_executesql N'ALTER TABLE Worker DROP COLUMN WorkerDescription';
END

-- Alter the Worker table to add a computed column for full name and email
ALTER TABLE Worker
ADD WorkerDescription AS (FirstName + ' ' + LastName + '''s role is: ' + Role) PERSISTED;


-- test that it worked
SELECT * FROM Worker
--#endregion




--#region Alexis Lucatero Objects-- 
--Object one-- 
--Will add work -- 
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddWorker]') AND type IN (N'P', N'PC'))
BEGIN 
  DROP PROCEDURE AddWorker;
END
GO

CREATE PROCEDURE AddWorker 
  @WorkerID INTEGER,
  @FirstName VARCHAR(30),
  @LastName VARCHAR(30),
  @Role VARCHAR(100)
AS 
BEGIN 
-- Prevents Extras duplicates-- 
  SET NOCOUNT ON; 
  DECLARE @WorkerExists BIT;
  BEGIN TRY 
    BEGIN TRANSACTION;
    SET @WorkerExists = (SELECT CASE WHEN EXISTS (SELECT 1 FROM Worker WHERE WorkerID = @WorkerID) THEN 1 ELSE 0 END);
    
    IF @WorkerExists = 1
    BEGIN
      RAISERROR('A worker with this ID already exists.', 16, 1);
      RETURN;
    END

    -- Enter new worker-- 
    INSERT INTO Worker (WorkerID, FirstName, LastName, Role)
    VALUES (@WorkerID, @FirstName, @LastName, @Role);
    COMMIT TRANSACTION;
  END TRY 
  BEGIN CATCH
    -- IF an error occurs
    ROLLBACK TRANSACTION;
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
  END;
GO

-- Object one Tests- 
-- TEST ONE, add new worker
EXEC AddWorker @WorkerID = 101, @FirstName = 'Tony', @LastName = 'Stark', @Role = 'Engineer';
-- Check for tony 
SELECT WorkerID, FirstName, LastName, Role
FROM Worker
WHERE FirstName = 'Tony';
-- Error check, should not worK
EXEC AddWorker @WorkerID = 101, @FirstName = 'Bruce', @LastName = 'Banner', @Role = 'Scientist';
-- Add again
EXEC AddWorker @WorkerID = 102, @FirstName = 'Natasha', @LastName = 'Romanoff', @Role = 'Spy';
-- Check
SELECT WorkerID, FirstName, LastName, Role
FROM Worker
WHERE FirstName = 'Natasha';

--Object two -- 
-- Checking room number constraint--
ALTER TABLE Room 
DROP CONSTRAINT IF EXISTS CheckRoomRange;
--Add Constraint--
ALTER TABLE Room 
ADD CONSTRAINT CheckRoomRange
CHECK (RoomNumber BETWEEN 1 AND 100);

-- COnstraint Test-- 
-- Expect fail
INSERT INTO Room (RoomID, RoomNumber) VALUES (101, 150);
-- Should not fail
INSERT INTO Room (RoomID, RoomNumber) VALUES (102, 50);

--Object three -- 
IF EXISTS(SELECT * FROM sys.columns WHERE Name = N'FullName' AND Object_ID = Object_ID(N'Donor'))
BEGIN
  EXEC sp_executesql N'ALTER TABLE Donor DROP COLUMN FullName';
END
-- Add -- 
ALTER TABLE Donor 
ADD FullName AS (FirstName + ' ' + LastName) PERSISTED;

--Testing --
SELECT * FROM Donor;
--#endregion



-- Project Deliverable 4 Complex Queries:

--#region Ellen Huynh's Queries

/*
#1
A stored procedure that returns the residents that have had repeat incidents. 

Description :
A stored procedure where the ResidentID, FirstName, LastName, (incident) Description, IncidentReportID(s) will be reported for residents who have a repeat incident.
For example the case where  resident has an incident of theft more than once. In the case where an offence has been repeated more than 2 times, the most recent occuring IncidentIDs will be displayed

The managerial implications of this involve providing support to these residents on the specific topics of their respective repeated incident.

Results summary:
There are three residents with repeat incidents that include topics of Intoxication, mental health crisis, and theft.  
Recomendation: 
Provide support to individuals on respective topics.
For example, providing a resident that has multiple occurances of Mental health crisis with counseling or therapy services.
Provide a resident with repeat theft incident with rules/regulation refresher, and counseling 
Provide a resident with repreat intoxication incident with rehab resources 
*/

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetResidentsWithRepeatedIncidents]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE GetResidentsWithRepeatedIncidents;
END
GO

CREATE PROCEDURE GetResidentsWithRepeatedIncidents
AS
BEGIN
SELECT r.ResidentID, r.FirstName, r.LastName, r.RoomID, ir.Description,
ir.IncidentReportID AS IncidentReportID1,
ir2.IncidentReportID AS IncidentReportID2
FROM Resident r
JOIN IncidentReport ir ON r.ResidentID = ir.ResidentID
JOIN IncidentReport ir2 ON r.ResidentID = ir2.ResidentID 
AND ir.Description = ir2.Description
AND ir2.IncidentReportID = (
SELECT MAX(ir2_sub.IncidentReportID)
FROM IncidentReport ir2_sub
WHERE ir2_sub.ResidentID = ir.ResidentID
AND ir2_sub.Description = ir.Description
AND ir2_sub.IncidentReportID < (
SELECT MAX(ir1_sub.IncidentReportID)
FROM IncidentReport ir1_sub
WHERE ir1_sub.ResidentID = ir.ResidentID
AND ir1_sub.Description = ir.Description))
WHERE ir.IncidentReportID = (
SELECT MAX(ir1_sub.IncidentReportID)
FROM IncidentReport ir1_sub
WHERE ir1_sub.ResidentID = ir.ResidentID
AND ir1_sub.Description = ir.Description)
AND EXISTS (
SELECT 1
FROM IncidentReport ir_sub
WHERE ir_sub.ResidentID = r.ResidentID
GROUP BY ir_sub.ResidentID, ir_sub.Description
HAVING COUNT(*) > 1)
END

-- test
EXEC GetResidentsWithRepeatedIncidents;

/*
#2
A query that returns which item uses (by residents) are being met by donors.

Description:
A Query that returns the Item Name, the number of times it has been used by a resident, the number of time it's been donated by a donor, and whether or not the Item need is being met.
For example in the case where there are more beanies used than number of beanies donated, the MeetNeed would be False

Manegerial implications involve focusing on recieving donations of the items that are listead as False under Meets Needs. 

Result summary: 
There is a mix of items that are listed as "False" and "True" under meets needs.
The most used items include deodorant and jeans, both of which needs are not met (false).
Recomendation:
Focus on reciving donations of most used items (jeans and deodorant). Perhaps reach out to jean or deoderant brands for a partnership. 
*/

WITH UsedByResidents AS (
SELECT i.ItemName, 
COUNT(ri.ResidentID) AS NumUsedByResidents
FROM Item i
LEFT JOIN ResidentItem ri ON i.ItemID = ri.ItemID
GROUP BY i.ItemName
),
DonatedByDonors AS (
SELECT i.ItemName,
COUNT(di.DonorID) AS NumDonatedByDonors
FROM Item i
LEFT JOIN DonorItem di ON i.ItemID = di.ItemID
GROUP BY i.ItemName
)
SELECT ubr.ItemName, ubr.NumUsedByResidents, dbd.NumDonatedByDonors,
CASE WHEN ubr.NumUsedByResidents <= dbd.NumDonatedByDonors
THEN 'True'
ELSE 'False'
END AS MeetsNeeds
FROM UsedByResidents ubr
LEFT JOIN DonatedByDonors dbd ON ubr.ItemName = dbd.ItemName
ORDER BY ubr.ItemName;

/*
#3
A query that returns the residents that are ranked as the resident that utilizes the most items.

Description: 
Returns the residents ResidentID, FirstName, LastName and Number of items utilized that have used the most number of items.
For example, if the most number of items used was 5, and 3 residents all used items 5 times, all 3 residents will be returned

Manegerial implications involve noticing if a resident is utilizing more items than others perhaps they need more support. 
Over time persitance as a "top" item utilizer may be cause for concern. 

Result summary: 
There were 7 residents that were retuned as being "top" item utilizers, with 3 items. 
Recomendation: 
With 100 residents in total, 7 being listed as the top users is not a concern, perhaps if there were 3 "top" item utilizers that may be more alarming.
While I would check in with these individuals, I don't believe much further action is nessesary for the time being. 
*/

WITH ItemsUtilizedRankedResidents AS (
    SELECT 
        Resident.ResidentID,
        Resident.FirstName,
        Resident.LastName,
        COUNT(ResidentItem.ItemID) AS NumberOfItemsUtilized,
        RANK() OVER (ORDER BY COUNT(ResidentItem.ItemID) DESC) AS Rank
    FROM Resident
    LEFT JOIN ResidentItem ON Resident.ResidentID = ResidentItem.ResidentID
    GROUP BY 
        Resident.ResidentID, 
        Resident.FirstName, 
        Resident.LastName
)
SELECT 
    ResidentID,
    FirstName,
    LastName,
    NumberOfItemsUtilized
FROM ItemsUtilizedRankedResidents
WHERE Rank = 1;

--#endregion



--#region Alex Huynh's Queries
/*
-- Query 1: GetTopIncidentDescriptions
-- Purpose: This stored procedure returns the top 5 most frequent incident descriptions along with detailed information about residents who have experienced multiple incidents of the same type. This can help in identifying not only the most common incidents but also residents who might need more attention or intervention.
-- Summary of Results: Mental health crisis is the most frequent incident with a count of 10 occurrences. One resident, Tiff Nairns (DOB: June 5, 1930, Female), has experienced this type of incident twice.
-- Managerial Implications/Recommendations:
-- 1. **Focus on Frequent Incidents:** Management should prioritize addressing the most common incidents to improve overall safety.
-- 2. **Resident Support:** Providing specific support to residents frequently involved in these incidents could help in reducing repeat occurrences and improving their well-being.
*/

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTopIncidentDescriptions]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE GetTopIncidentDescriptions;
END
GO

CREATE PROCEDURE GetTopIncidentDescriptions
AS
BEGIN
    -- Use a common table expression (CTE) to get the count of each incident description
    WITH IncidentCounts AS (
        SELECT 
            Description,
            COUNT(IncidentReportID) AS IncidentCount
        FROM 
            IncidentReport
        GROUP BY 
            Description
    ),
    -- Subquery to find residents who have had multiple incidents of the same type
    MultipleIncidents AS (
        SELECT 
            ir.Description,
            ir.ResidentID,
            r.FirstName + ' ' + r.LastName AS FullName,
            r.DateOfBirth,
            r.Gender,
            COUNT(ir.IncidentReportID) AS IncidentCount
        FROM 
            IncidentReport ir
        JOIN 
            Resident r ON ir.ResidentID = r.ResidentID
        GROUP BY 
            ir.Description, ir.ResidentID, r.FirstName, r.LastName, r.DateOfBirth, r.Gender
        HAVING 
            COUNT(ir.IncidentReportID) > 1
    ),
    -- Join the incident counts with multiple incidents
    IncidentDetails AS (
        SELECT 
            ic.Description,
            ic.IncidentCount,
            mi.ResidentID,
            mi.FullName,
            mi.DateOfBirth,
            mi.Gender,
            mi.IncidentCount AS ResidentIncidentCount
        FROM 
            IncidentCounts ic
        JOIN 
            MultipleIncidents mi ON ic.Description = mi.Description
    )
    -- Select the top 5 incident descriptions based on their count along with resident details for multiple incidents
    SELECT 
        TOP 5 
        id.Description,
        id.IncidentCount,
        id.ResidentID,
        id.FullName AS ResidentFullName,
        id.DateOfBirth,
        id.Gender,
        id.ResidentIncidentCount
    FROM 
        IncidentDetails id
    ORDER BY 
        id.IncidentCount DESC, id.ResidentIncidentCount DESC;
END;
GO

-- Execute the stored procedure
EXEC GetTopIncidentDescriptions;


--------------------------------------------

/*
-- Query 2: Find rooms with the most residents in them
-- Description: This query calculates the number of residents in each room and ranks the rooms based on the resident count. It uses a temporary table to store the room occupancy counts and a CTE to rank the rooms. Additionally, it includes the average age and gender distribution of residents in each room.
-- Summary of Results: Room 66, with RoomNumber 62, houses four residents, all female, with an average age of 64 years. Similarly, Room 40 (RoomNumber 20) also accommodates four residents, but with a more diverse gender distribution: two males, one female, and one polygender individual, and an average age of 58 years. Room 39 (RoomNumber 40) has four residents equally split between males and females, with an average age of 56 years.
-- Managerial Implications/Recommendations: Management can use this information to assess room use and ensure that resources are adequately allocated to the most populated rooms to maintain resident comfort and safety. The additional demographic data can help tailor services and support to the needs of the residents, such as rooms with a lot of elderlys or a lot of females.
*/

-- Drop the temporary table to clean up
DROP TABLE IF EXISTS #RoomOccupancyCount;

-- Create a temporary table to store the room occupancy counts and demographic data
CREATE TABLE #RoomOccupancyCount (
    RoomID INT,
    RoomNumber INT,
    ResidentCount INT,
    AvgAge DECIMAL(5,2),
    MaleCount INT,
    FemaleCount INT,
    OtherGenderCount INT
);

-- Insert data into the temporary table
INSERT INTO #RoomOccupancyCount (RoomID, RoomNumber, ResidentCount, AvgAge, MaleCount, FemaleCount, OtherGenderCount)
SELECT 
    r.RoomID,
    rm.RoomNumber,
    COUNT(r.ResidentID) AS ResidentCount,
    AVG(DATEDIFF(YEAR, r.DateOfBirth, GETDATE())) AS AvgAge,
    SUM(CASE WHEN r.Gender = 'Male' THEN 1 ELSE 0 END) AS MaleCount,
    SUM(CASE WHEN r.Gender = 'Female' THEN 1 ELSE 0 END) AS FemaleCount,
    SUM(CASE WHEN r.Gender NOT IN ('Male', 'Female') THEN 1 ELSE 0 END) AS OtherGenderCount
FROM 
    Resident r
JOIN 
    Room rm ON r.RoomID = rm.RoomID
GROUP BY 
    r.RoomID, rm.RoomNumber;

-- Common Table Expression (CTE) to rank rooms based on resident count
WITH RoomRank AS (
    SELECT 
        roc.RoomID,
        roc.RoomNumber,
        roc.ResidentCount,
        roc.AvgAge,
        roc.MaleCount,
        roc.FemaleCount,
        roc.OtherGenderCount,
        RANK() OVER (ORDER BY roc.ResidentCount DESC, roc.AvgAge DESC) AS Rank
    FROM 
        #RoomOccupancyCount roc
)
-- Select the top rooms with the most residents along with demographic data
SELECT 
    TOP 10
    rr.RoomID,
    rr.RoomNumber,
    rr.ResidentCount,
    rr.AvgAge,
    rr.MaleCount,
    rr.FemaleCount,
    rr.OtherGenderCount
FROM 
    RoomRank rr
ORDER BY 
    rr.Rank;

-- Drop the temporary table to clean up
DROP TABLE #RoomOccupancyCount;

--------------------------------------------

/*
-- Query 3: Find rooms that have more than one resident involved in an incident
-- Purpose: This query helps identify which rooms have multiple residents who have been involved in incidents, indicating potential areas needing attention.
-- Description: The query uses multiple CTEs to count incidents per resident, associate residents with rooms, and then count the number of residents involved in incidents per room. Finally, it selects rooms with more than one resident involved in incidents.
-- Results: There are 13 rooms in the shelter with more than one resident involved in incidents. The room with the highest number of offending residents is Room 62, which has 3 residents involved in incidents. The remaining 12 rooms each have 2 residents involved in incidents.
-- Managerial Implications/Recommendations:
-- 1. Identify and investigate the rooms with the highest number of residents involved in incidents.
-- 2. Consider redistributing residents to balance the number of individuals with incidents across different rooms, if feasible.
*/

-- Common Table Expression (CTE) to count incidents per resident
WITH ResidentIncidents AS (
    SELECT 
        ResidentID,
        COUNT(IncidentReportID) AS IncidentCount
    FROM 
        IncidentReport
    GROUP BY 
        ResidentID
),
-- CTE to get resident and room details for residents with incidents
ResidentRoomIncidents AS (
    SELECT 
        r.ResidentID,
        r.RoomID,
        rm.RoomNumber,
        ri.IncidentCount
    FROM 
        Resident r
    JOIN 
        Room rm ON r.RoomID = rm.RoomID
    JOIN 
        ResidentIncidents ri ON r.ResidentID = ri.ResidentID
    WHERE 
        ri.IncidentCount > 0
),
-- CTE to count the number of residents involved in incidents per room
RoomResidentIncidentCount AS (
    SELECT 
        RoomID,
        RoomNumber,
        COUNT(ResidentID) AS CountOfOffendingResidents
    FROM 
        ResidentRoomIncidents
    GROUP BY 
        RoomID, RoomNumber
)
-- Select rooms with more than one resident involved in incidents
SELECT 
    RoomID,
    RoomNumber,
    CountOfOffendingResidents
FROM 
    RoomResidentIncidentCount
WHERE 
    CountOfOffendingResidents > 1
ORDER BY 
    CountOfOffendingResidents DESC, RoomNumber;






-- Alexis Lucatero -- 
-- 3 complex queries-- 
-- Query One-- 
/*
Query: Groups Incidents by Demographics (such as gender and age group)
Purpose:
This query returns the count of incidents categorized by gender and age groups. It helps in identifying the distribution of incidents across different demographics.
Managerial Implications/Recommendations:
1. Understanding the distribution of incidents by gender and age groups 
2. Using this evidence to help in targeting interventions and support services more effectively based on demographics.
3. Focus on providing additional support and resources to residents aged 51 and above, especially females, to address the high incident rate.
Result summary:
Each gender and age group combination is represented along with the total number of incidents they have been involved in. 
The query output shows that residents aged 51 and above have the highest number of incidents, with females being the largest subgroup (33 residents, 42 incidents).
*/

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetIncidentCountsByDemographics]') AND type IN (N'P', N'PC'))
BEGIN
    DROP PROCEDURE GetIncidentCountsByDemographics;
END
GO

CREATE PROCEDURE GetIncidentCountsByDemographics
AS
BEGIN
    WITH ResidentDemographics AS (
        SELECT 
            r.ResidentID,
            r.Gender,
            CASE 
                WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) < 18 THEN 'Under 18'
                WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) BETWEEN 18 AND 30 THEN '18-30'
                WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) BETWEEN 31 AND 50 THEN '31-50'
                ELSE '51 and above'
            END AS AgeGroup
        FROM 
            Resident r
    ),
    DemographicCounts AS (
        SELECT 
            AgeGroup,
            Gender,
            COUNT(*) AS TotalCount
        FROM 
            ResidentDemographics
        GROUP BY 
            AgeGroup, Gender
    ),
    IncidentCounts AS (
        SELECT 
            rd.AgeGroup,
            rd.Gender,
            COUNT(ir.IncidentReportID) AS IncidentCount
        FROM 
            ResidentDemographics rd
        JOIN 
            IncidentReport ir ON rd.ResidentID = ir.ResidentID
        GROUP BY 
            rd.AgeGroup, rd.Gender
    )
    SELECT 
        dc.AgeGroup,
        dc.Gender,
        dc.TotalCount,
        ISNULL(ic.IncidentCount, 0) AS IncidentCount
    FROM 
        DemographicCounts dc
    LEFT JOIN 
        IncidentCounts ic ON dc.AgeGroup = ic.AgeGroup AND dc.Gender = ic.Gender
    ORDER BY 
        dc.AgeGroup, dc.Gender;
END
GO

-- Test the stored procedure
EXEC GetIncidentCountsByDemographics;


-- query 2-- 
/*
Query: Number of Items Each Age Demographic, and gender demographicc is using. 
Purpose:
This query returns the number of items utilized by residents in different age demographics (e.g., 0-18, 19-35, 36-50, 51-65, 65+), and genders.
Summary of Results:
The query calculates the count of items used by residents in each specified age demographic, and gender.
Managerial Implications/Recommendations:
1. This information helps management understand the distribution of item usage across different age groups
2. allowing for better resource allocation and targeted support, on groups that may be using more or less. 
3. Ensure adequate storage and organization solutions for residents aged 65 and above, especially females, who have the highest number of items.
Result summary:
Each age group is represented along with the total number of items they have utilized and a breakdown by gender.
The data reveals that residents aged 65 and above possess the most items, with females in this age group having the highest count (28 items).
*/
WITH AgeDemographics AS (
    SELECT 
        r.ResidentID,
        r.Gender,
        FLOOR(DATEDIFF(DAY, r.DateOfBirth, GETDATE()) / 365.25) AS Age
    FROM 
        Resident r
),
CategorizedAges AS (
    SELECT 
        ad.ResidentID,
        ad.Gender,
        ad.Age,
        CASE 
            WHEN ad.Age BETWEEN 0 AND 18 THEN '0-18'
            WHEN ad.Age BETWEEN 19 AND 35 THEN '19-35'
            WHEN ad.Age BETWEEN 36 AND 50 THEN '36-50'
            WHEN ad.Age BETWEEN 51 AND 65 THEN '51-65'
            ELSE '65+'
        END AS AgeGroup
    FROM 
        AgeDemographics ad
),
ItemsUsedByAgeGroupGender AS (
    SELECT 
        ca.AgeGroup,
        ca.Gender,
        COUNT(ri.ItemID) AS ItemCount
    FROM 
        CategorizedAges ca
    JOIN 
        ResidentItem ri ON ca.ResidentID = ri.ResidentID
    GROUP BY 
        ca.AgeGroup, ca.Gender
)
SELECT 
    AgeGroup,
    Gender,
    SUM(ItemCount) AS TotalItems
FROM 
    ItemsUsedByAgeGroupGender
GROUP BY 
    AgeGroup, Gender
ORDER BY 
    AgeGroup, Gender;


-- Query 3-- 
/*
Query: Top Item Utilizers by Age Group
Purpose:
This query identifies residents with the highest item utilization in each age group. It helps in recognizing residents who may need additional support or resources.
Managerial Implications/Recommendations:
1. Management can use this information to provide targeted assistance to residents who utilize the most items.
2. They also can check to see if the users are actually using the resources or not.
3. Since the majority of high item usage is among residents aged 51 and above, provide tailored support to help them manage and utilize their items effectively.
Result summary:
The residents with the highest item utilization in each age group are listed along with the number of items they have used.
The residents with the highest item usage are predominantly from the "51 and above" age group, with six out of seven residents in this category.
*/

WITH ResidentDemographics AS (
    SELECT 
        r.ResidentID,
        r.FirstName,
        r.LastName,
        CASE 
            WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) < 18 THEN 'Under 18'
            WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) BETWEEN 18 AND 30 THEN '18-30'
            WHEN DATEDIFF(year, r.DateOfBirth, GETDATE()) BETWEEN 31 AND 50 THEN '31-50'
            ELSE '51 and above'
        END AS AgeGroup
    FROM 
        Resident r
),
ItemUsage AS (
    SELECT 
        rd.AgeGroup,
        rd.ResidentID,
        rd.FirstName,
        rd.LastName,
        COUNT(ri.ItemID) AS ItemsUsed
    FROM 
        ResidentDemographics rd
    JOIN 
        ResidentItem ri ON rd.ResidentID = ri.ResidentID
    GROUP BY 
        rd.AgeGroup, rd.ResidentID, rd.FirstName, rd.LastName
),
MaxUsage AS (
    SELECT 
        AgeGroup,
        MAX(ItemsUsed) AS MaxItemsUsed
    FROM 
        ItemUsage
    GROUP BY 
        AgeGroup
)
SELECT 
    iu.AgeGroup,
    iu.ResidentID,
    iu.FirstName,
    iu.LastName,
    iu.ItemsUsed
FROM 
    ItemUsage iu
JOIN 
    MaxUsage mu ON iu.AgeGroup = mu.AgeGroup AND iu.ItemsUsed = mu.MaxItemsUsed
ORDER BY 
    iu.AgeGroup, iu.ItemsUsed DESC;

