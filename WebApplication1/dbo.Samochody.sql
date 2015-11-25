CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Marka] NVARCHAR(50) NULL, 
    [Model] NVARCHAR(50) NULL, 
    [Kolor] NCHAR(10) NULL, 
    [Przebieg] INT NULL, 
    [Klima] BIT NULL, 
    [Garazowany] BIT NULL, 
    [Ilosc_Drzwi] SMALLINT NULL, 
    [Ilosc_Koni] INT NULL, 
    [Cena] INT NULL
)
