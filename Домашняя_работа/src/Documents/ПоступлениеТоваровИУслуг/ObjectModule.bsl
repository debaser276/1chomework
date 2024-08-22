
Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	
	Движения.Товары.Записывать = Истина;
	ТаблицаТовары = Товары.Выгрузить();
	ТаблицаТовары.Свернуть("Номенклатура", "Количество");
	
	Для Каждого Строка Из ТаблицаТовары Цикл
		Если Строка.Номенклатура.ТипНоменклатуры = Перечисления.ТипНоменклатуры.Услуга Тогда
			Продолжить;
		КонецЕсли;
		
		Движение = Движения.Товары.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Номенклатура = Строка.Номенклатура;
		Движение.Количество = Строка.Количество;
		Движение.Период = Дата;
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	СуммаДокумента = Товары.Итог("Сумма");
КонецПроцедуры

Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	Ответственный = ПараметрыСеанса.СотрудникТекущегоПользователя;
КонецПроцедуры

