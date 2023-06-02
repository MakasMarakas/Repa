Создать триггер (на выходе: файл в репозитории dbo.TR_Basket_insert_update в ветке Triggers)
    6.1 Если в таблицу dbo.Basket за раз добавляются 2 и более записей одного ID_SKU, 
    то значение в поле DiscountValue, для этого ID_SKU рассчитывается по формуле Value * 5%, иначе DiscountValue = 0
