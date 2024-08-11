use Learn

Create Table Customer (
CustomerId int NOT NULL PRIMARY KEY IDENTITY(1,1),
CustomerName varchar(100),
City varchar(20)
)
 
 Create Table [Order] (
 OrderId int NOT NULL PRIMARY KEY IDENTITY(1,1),
 CustomerId int,
 OrderValue DECIMAL(18,2)
 )

ALTER TABLE [dbo].[Order] 
ADD CONSTRAINT FK_Order_Customer 
FOREIGN KEY (CustomerId) 
REFERENCES [dbo].[Customer](CustomerId);

insert into Customer values('Ram','Thane')
insert into Customer values('Shyam','Mumbai')
insert into Customer values('Krishna','Pune')
insert into Customer values('Suresh','Nashik')
insert into Customer values('Mahesh','Mumbra')
insert into Customer values('Kiran','Panvel')
insert into Customer values('Rohit','Bhiwandi')

insert into [Order] values(1, 50.0)
insert into [Order] values(2, 49.9)
insert into [Order] values(3, 34.44)
insert into [Order] values(1, 3000.4)
insert into [Order] values(6, 4550.33)
insert into [Order] values(3, 3440.66)
insert into [Order] values(2, 200.66)

-- Below query for drop object from database
--drop table [Order]
--ALTER TABLE [Order] DROP CONSTRAINT FK_Order_Customer;
--drop table Customer

select * from Customer
select * from [Order]