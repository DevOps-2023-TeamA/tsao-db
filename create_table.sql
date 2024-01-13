CREATE database tsao;
DROP database tsao;

USE tsao;
CREATE TABLE tsao_accounts (ID 					int NOT NULL PRIMARY KEY auto_increment, 
						    Name				varchar(100) NOT NULL,
                            Username			varchar(100) NOT NULL UNIQUE,
                            Password			char(64) NOT NULL,
                            Role				enum('Administrator', 'User') NOT NULL,
                            CreationDate		datetime NOT NULL,
                            IsApproved			bool NOT NULL,
                            IsDeleted			bool NOT NULL
                            );
                           
CREATE TABLE tsao_records (ID					int NOT NULL PRIMARY KEY auto_increment,
						   AccountID			int NOT NULL,	
                           ContactRole			enum('Staff', 'Student') NOT NULL,
                           StudentCount			int NOT NULL,	
                           AcadYear				char(7) NOT NULL,
                           Title				varchar(100) NOT NULL,
                           CompanyName			varchar(100) NOT NULL,
                           CompanyPOC			varchar(100) NOT NULL,
                           Description			varchar(500) NOT NULL,
                           IsDeleted			bool NOT NULL,
						   CONSTRAINT FK_Records_Account FOREIGN KEY (AccountID) REFERENCES tsao_accounts(ID)
						   );