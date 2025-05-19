# Generates a INSERT statement for a block of SELECT result

Select the script you want to convert the results in a INSERT statement wraped by single quotes

``` SQL
'SELECT TOP 10 * FROM Person.PersonPhone'
```

And then press the shortcut `Ctrl + 5`

Results:

| INSERT Statement |
| ---------------- |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (1, '697-555-0142', 1, 'Jan  7 2009 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (2, '819-555-0175', 3, 'Jan 24 2008 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (3, '212-555-0187', 1, 'Nov  4 2007 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (4, '612-555-0100', 1, 'Nov 28 2007 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (5, '849-555-0139', 1, 'Dec 30 2007 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (6, '122-555-0189', 3, 'Dec 16 2013 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (7, '181-555-0156', 3, 'Feb  1 2009 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (8, '815-555-0138', 1, 'Dec 22 2008 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (9, '185-555-0186', 1, 'Jan  9 2009 12:00AM') |
| INSERT INTO #TABLE (BusinessEntityID, PhoneNumber, PhoneNumberTypeID, ModifiedDate) VALUES (10, '330-555-2568', 3, 'Apr 26 2009 12:00AM') |
