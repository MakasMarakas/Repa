5.1 Входной параметр (@FamilySurName varchar(255)) одно из значений атрибута SurName таблицы dbo.Family
    5.2 Процедура при вызове обновляет данные в таблицы dbo.Family в поле BudgetValue по логике
       5.2.1 dbo.Family.BudgetValue - sum(dbo.Basket.Value), где dbo.Basket.Value покупки для переданной в процедуру семьи
       5.2.2 При передаче несуществующего dbo.Family.SurName пользователю выдается ошибка, что такой семьи нет
