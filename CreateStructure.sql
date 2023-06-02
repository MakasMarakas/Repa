2.1 dbo.SKU (ID identity, Code, Name)
       2.1.1 Ограничение на уникальность поля Code
       2.1.2 Поле Code вычисляемое: "s" + ID
        2.2 dbo.Family (ID identity, SurName, BudgetValue)
    2.3 dbo.Basket (ID identity, ID_SKU (внешний ключ на таблицу dbo.SKU), ID_Family (Внешний ключ на таблицу dbo.Family) Quantity, Value, PurchaseDate, DiscountValue)
       2.3.1 Ограничение, что поле Quantity и Value не могут быть меньше 0
      2.3.2 Добавить значение по умолчанию для поля PurchaseDate: дата добавления записи (текущая дата)
