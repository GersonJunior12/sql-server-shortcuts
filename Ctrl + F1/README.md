# Generates a CREATE statement for a table

Select the table name

``` sql
'Person.PersonPhone'
```

And then press the shortcut `Ctrl + F1`

Result:

| Table |
| ----- |
| CREATE TABLE Person.PersonPhone |
| ( |
|     BusinessEntityID INT NOT NULL, |
|     PhoneNumber NVARCHAR(50) NOT NULL, |
|     PhoneNumber SYSNAME NOT NULL, |
|     PhoneNumber ACCOUNTNUMBER NOT NULL, |
|     PhoneNumber NAME NOT NULL, |
|     PhoneNumber ORDERNUMBER NOT NULL, |
|     PhoneNumber PHONE NOT NULL, |
|     PhoneNumberTypeID INT NOT NULL, |
|     ModifiedDate DATETIME NOT NULL, |
| ) |

| Constraints |
| ----------- |
| ALTER TABLE Person.PersonPhone ADD CONSTRAINT PK_PersonPhone_BusinessEntityID_PhoneNumber_PhoneNumberTypeID PRIMARY KEY (BusinessEntityID) |
| ALTER TABLE Person.PersonPhone ADD CONSTRAINT DF_PersonPhone_ModifiedDate DEFAULT (getdate()) FOR ModifiedDate |
| ALTER TABLE Person.PersonPhone ADD CONSTRAINT FK_PersonPhone_Person_BusinessEntityID FOREIGN KEY (BusinessEntityID) REFERENCES Person(BusinessEntityID) |
| ALTER TABLE Person.PersonPhone ADD CONSTRAINT FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID FOREIGN KEY (PhoneNumberTypeID) REFERENCES PhoneNumberType(PhoneNumberTypeID) |

| Indexes |
| ------- |
| CREATE UNIQUE CLUSTERED INDEX PK_PersonPhone_BusinessEntityI ON Person.PersonPhone(BusinessEntityID) ON [PRIMARY] |
| CREATE NONCLUSTERED INDEX IX_PersonPhone_PhoneNumber ON Person.PersonPhone(PhoneNumber) ON [PRIMARY] |
