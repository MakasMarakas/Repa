     2.3.2 Добавить значение по умолчанию для поля PurchaseDate: дата добавления записи (текущая дата)
 CREATE TABLE SKU (                                       --2.1 dbo.SKU (ID identity, Code, Name)
    ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,  
    Code AS ('s' + CONVERT(VARCHAR(255), ID)) UNIQUE, --  2.1.1 Ограничение на уникальность поля Code 2.1.2 Поле Code вычисляемое: "s" + ID 
    Name NVARCHAR (255) NOT NULL
)

GO

CREATE TABLE Family (                                --2.2 dbo.Family (ID identity, SurName, BudgetValue)
    ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    SurName VARCHAR(255) NOT NULL,
    BudgetValue INT NOT NULL
)

GO

CREATE TABLE Basket (                                   --2.3 dbo.Basket (ID identity, 
    ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ID_SKU INT NOT NULL REFERENCES SKU (ID),               --ID_SKU (внешний ключ на таблицу dbo.SKU)
    ID_Family INT NOT NULL REFERENCES Family (ID),      --ID_Family (Внешний ключ на таблицу dbo.Family) Quantity, Value, PurchaseDate, DiscountValue)
    Quantity INT NOT NULL CHECK (Quantity >= 0),        --   2.3.1 Ограничение, что поле Quantity не могут быть меньше 0
    [Value] INT NOT NULL CHECK ([Value] >= 0),          --   2.3.1 Ограничение, что поле  Value не могут быть меньше 0
    PurchaseDate DATE NOT NULL DEFAULT GETDATE(),       --  2.3.2 Добавить значение по умолчанию для поля PurchaseDate: дата добавления записи (текущая дата)
    DiscountValue FLOAT NOT NULL
)
