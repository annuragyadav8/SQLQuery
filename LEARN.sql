use Learn

Create Table Customer (
CustomerId int NOT NULL PRIMARY KEY IDENTITY(1,1),
CustomerName varchar(100),
City varchar(20)
)
 
 Create Table [Order] (
 OrderId int NOT NULL PRIMARY KEY IDENTITY(1,1),
 CustomerId int FOREIGN KEY REFERENCES Customer(CustomerId),
 OrderValue DECIMAL(18,2)
 )

ALTER TABLE [dbo].[Order] 
ADD CONSTRAINT FK_Order_Customer 
FOREIGN KEY (CustomerId) 
REFERENCES [dbo].[Customer](CustomerId);


 insert into Customer values('Ram','Thane')
insert into Customer values('Shyam','Mumbai')
insert into Customer values('Krishna','Pune')



insert into [Order] values(1, 50.0)
insert into [Order] values(2,499)
insert into [Order] values(3,34.44)

Select * from Customer

Select * from [Order]
