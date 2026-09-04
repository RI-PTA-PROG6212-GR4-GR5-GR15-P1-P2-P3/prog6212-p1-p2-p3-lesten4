-- Create Organiser Table
CREATE TABLE Organiser (
OrganiserID INT IDENTITY(1,1) PRIMARY KEY,
Name NVARCHAR(50) NOT NULL,
PhoneNumber NVARCHAR(50),
Email NVARCHAR(50)
);

-- Create Event Table
CREATE TABLE Event (
EventID INT IDENTITY(1,1) PRIMARY KEY,
OrganiserID INT NOT NULL,
EventName NVARCHAR(20) NOT NULL,
Date NVARCHAR(20) NOT NULL,
Location VARCHAR(50) NOT NULL,


CONSTRAINT FK_Event_Organiser
FOREIGN KEY (OrganiserID)
REFERENCES Organiser(OrganiserID)
);

-- Create Category Table
CREATE TABLE Category (
CategoryID INT IDENTITY(1,1) PRIMARY KEY,
CategoryName NVARCHAR(50) NOT NULL,
CategoryType NVARCHAR(50) NOT NULL
);

-- Create Participant Table
CREATE TABLE Participant (
ParticipantID INT IDENTITY(1,1) PRIMARY KEY,
FullName NVARCHAR(50) NOT NULL,
PhoneNumber NVARCHAR(50),
Email NVARCHAR(50),
Gender NVARCHAR(50)
);

-- Create Registration Table
CREATE TABLE Registration (
RegistrationID INT IDENTITY(1,1) PRIMARY KEY,
EventID INT NOT NULL,
ParticipantID INT NOT NULL,
RegistrationDate NVARCHAR(20) NOT NULL,
EntryFee NVARCHAR(20) NOT NULL,

CONSTRAINT FK_Registration_Event
FOREIGN KEY (EventID)
REFERENCES Event(EventID),

CONSTRAINT FK_Registration_Participant
FOREIGN KEY (ParticipantID)
REFERENCES Participant(ParticipantID)
);

-- Create Results Table
CREATE TABLE Results (
ResultsID INT IDENTITY(1,1) PRIMARY KEY,
RegistrationID INT NOT NULL,
FinishTime NVARCHAR(20) NOT NULL,
Position VARCHAR(50) NOT NULL,

CONSTRAINT FK_Results_Registration
FOREIGN KEY (RegistrationID)
REFERENCES Registration(RegistrationID)
);


