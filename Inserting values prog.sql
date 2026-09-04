--DELETE FROM Results;
--DBCC CHECKIDENT ('Results', RESEED, 0);
--SELECT * FROM Results

INSERT INTO Organiser
VALUES ('Thabo George', '0767999899', 'George@gmail.com'),
('Ronwen Williams', '0637990546', 'Ronza@gmail.com');
SELECT * FROM Organiser

INSERT INTO Event(OrganiserID,EventName, Date, Location)
VALUES ('1','Soweto Marathon ', '10 October 2026', ' Pretorious street'),
('2','Cape Town Cycle Tour', '7-April-2027', ' Cape Town Western Cape');
SELECT * FROM Event

INSERT INTO Category (CategoryName, CategoryType)
VALUES ('Marathon', 'Running'),
('Cycling Race', ' Cycling');
SELECT * FROM Category

INSERT INTO Participant(FullName, PhoneNumber, Email, Gender)
VALUES ('Trinity Phetla', '0723828118', ' Themishe@gmail.com', 'Female'),
(' Tonki Makua', '0636734562', ' Manqoba063@gmail.com' , 'Male');
SELECT * FROM Participant

INSERT INTO Registration (EventID, ParticipantID, RegistrationDate, EntryFee)
VALUES ('1','1','18 September 2026', ' R100CPER PERSON'),
('2','2','28 March 2027', ' R70 PER PERSON');
SELECT * FROM Registration

INSERT INTO Results( RegistrationID,FinishTime, Position)
VALUES ('1','4 hours 15 minutes', ' 3rd'),
('2','2 hours 30 minutes', ' 10nth');
SELECT * FROM Results
