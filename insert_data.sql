USE tsao;

-- Inserting data into tsao_accounts
INSERT INTO tsao_accounts (ID, Name, Username, Password, Role, CreationDate, IsApproved, IsDeleted) 
VALUES 
    (1, 'Ben Low', 'lkh2', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'Administrator', '2024-01-01 12:00:00', true, false), 		-- password
    (2, 'Er Poi Voon', 'epv', 'a075d17f3d453073853f813838c15b8023b8c487038436354fe599c3942e1f95', 'Administrator', '2024-01-02 14:30:00', true, false), 	-- p@ssw0rd
    (3, 'Isabelle Pak', 'isabellepak', '4b358ed84b7940619235a22328c584c7bc4508d4524e75231d6f450521d16a17', 'User', '2024-01-03 10:45:00', false, false),	-- pa$$w0rd
    (4, 'Low Wee San', 'lws', 'e367746b6b6b8519cae09fbca87e509d7dc9508ef0234de292666bd1c2404680', 'Administrator', '2024-01-03 14:30:00', true, false), 	-- anotherp@ssw0rd
	(5, 'Deleted User', 'dui', '1185f37d33b0f89e331f101a51bb8e51165c7efda15950b86a3ebcbb363f898e', 'User', '2024-01-01 10:00:00', true, true);              -- deleted

-- Inserting data into tsao_records
INSERT INTO tsao_records (ID, AccountID, ContactRole, StudentCount, AcadYear, Title, CompanyName, CompanyPOC, Description, CreationDate, IsDeleted) 
VALUES 
    (1, 1, 'Staff', 3, '2023/24', 'Gen AI Hub Project 1', 'NP School of ICT R&D', 'Er Poi Voon', 'Description for Gen AI Hub Project 1', '2024-01-12 12:00:00', false),
    (2, 1, 'Student', 5, '2023/24', 'TSAO Records System', 'NP School of ICT DevOps', 'Ben Low', 'Description for TSAO Records System', '2024-01-12 12:00:00', false),
    (3, 2, 'Staff', 2, '2023/24', 'Quantum Computing POC', 'IBM', 'John Law', 'Description for Quantum Computing POC', '2024-01-12 12:00:00', false);
