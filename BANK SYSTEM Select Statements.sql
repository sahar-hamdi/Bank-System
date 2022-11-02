SELECT * FROM Branch WHERE B_ID NOT IN
(SELECT Branch.B_ID FROM Branch
inner join Customer ON Customer.B_ID=Branch.B_ID)



SELECT * FROM Branch WHERE B_ID NOT IN
(SELECT Branch.B_ID FROM Branch
inner join Employee ON Employee.B_ID=Branch.B_ID)


 SELECT TOP 1 PERCENT Employee.ID 
FROM Employee 
INNER JOIN Loan 
ON Loan.ID=Employee.ID
group by Employee.ID
order by count(*) desc



SELECT TOP 1 PERCENT Customer.Fname , Customer.Lname, Customer.SSN , Customer.address_, Customer.sex, Customer.Bdate,Customer.phone, Customer.B_ID
FROM HELD_BY
INNER JOIN Account 
ON Account.Account_number=HELD_BY.Account_number 
INNER JOIN Customer 
ON Account.SSN=Customer.SSN  AND Account.phone=Customer.phone
group by Customer.Fname , Customer.Lname, Customer.SSN , Customer.address_, Customer.sex, Customer.Bdate,Customer.phone, Customer.B_ID
order by count(*) desc




SELECT * FROM	Customer WHERE Customer.SSN NOT IN
(SELECT Customer.SSN
FROM HELD_BY
INNER JOIN Account 
ON Account.Account_number=HELD_BY.Account_number 
INNER JOIN Customer 
ON Account.SSN=Customer.SSN  AND Account.phone=Customer.phone)




SELECT Custo.SSN , Custo.Fname , Custo.Lname , Custo.address_ , Custo.sex , Custo.Bdate , Custo.phone , COUNT(ID) AS NumberOfEmployees
FROM Customer AS Custo
INNER JOIN Deal_With 
ON Custo.SSN = Deal_With.SSN AND Custo.phone = Deal_With.phone
GROUP BY Custo.SSN , Custo.Fname , Custo.Lname , Custo.address_ , Custo.sex , Custo.Bdate , Custo.phone










INSERT INTO Bank values ('Misr', 123,'Giza')

INSERT INTO Branch values ('Giza', 1 , 123)
INSERT INTO Branch values ('Cairo', 2 , 123)

INSERT INTO Customer values (123456789, 'Malak' , 'Tamer' ,  'october', 'female','24/2/2001','01234567899', 1)
INSERT INTO Customer values (987654321, 'Sahar' , 'Hamdi' , 'zayed', 'female','18/5/2002','01234567898' ,1)
INSERT INTO Customer values (11111111, 'Ibrahim' , 'Ismail' ,  'haram', 'male','2002','01234567897', 1)
INSERT INTO Customer values (22222222, 'Nada' , 'Mohamed' , 'shobra', 'female','2002','01234567896', 1)
INSERT INTO Customer values (3333333, 'Hussam' , 'Sultan' ,  'helwan', 'male','2002','01234567895', 1)


INSERT INTO Employee values ('Mohamed','Ahmed', 20000, '2001-11-11',456 , 'male', 'cairo', 2)
INSERT INTO Employee values ('Mahmoud','Abdallah', 10000, '2001-12-12',457, 'male', 'giza', 2)

INSERT INTO Admin_ VALUES ('Ibrahim01',456)

ALTER TABLE Loan
ALTER COLUMN L_Type VARCHAR(120)

ALTER TABLE Account
ALTER COLUMN Account_Balance FLOAT

INSERT INTO Loan VALUES (666,50000.5, 'Personal loan','Accepted',457,1)
INSERT INTO Loan VALUES (777,50000.5, 'Student loan','Accepted',456,1)
INSERT INTO Loan VALUES (888,5000000.0, 'Business loan','Accepted',457,1)

INSERT INTO Account VALUES (6789,'Personal account',7500000.5,1,11111111,'01234567897')
INSERT INTO Account VALUES (6790,'Business account',900000.5,1,3333333,'01234567895')

INSERT INTO Emp_Login VALUES('Mahmoud_','1234',457)

INSERT INTO HELD_BY VALUES(666,6789)


INSERT INTO Deal_With VALUES(3333333,'01234567895',457)