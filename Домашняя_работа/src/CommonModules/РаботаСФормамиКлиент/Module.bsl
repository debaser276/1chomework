Функция НайтиИлиСоздатьОтборВСписке(Список, Поле) Экспорт
	
	НайденныйЭлементОтбора = Неопределено;
	ЭлементыОтбора = Список.КомпоновщикНастроек.Настройки.Отбор.Элементы;
	Для Каждого ЭлементОтбора Из ЭлементыОтбора Цикл
		Если ЭлементОтбора.ЛевоеЗначение = Поле Тогда
			НайденныйЭлементОтбора = ЭлементОтбора;
			Прервать;
		КонецЕсли;
	КонецЦикла;
	
	Если НайденныйЭлементОтбора = Неопределено Тогда
		НайденныйЭлементОтбора = ЭлементыОтбора.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
		НайденныйЭлементОтбора.ЛевоеЗначение = Поле;
	КонецЕсли;
	
	Возврат НайденныйЭлементОтбора;
КонецФункции

Процедура УстановитьОтбор(Список, ПолеОтбора, ПравоеЗначение) Экспорт
	
	НайденныйЭлементОтбора = РаботаСФормамиКлиент.НайтиИлиСоздатьОтборВСписке(Список, ПолеОтбора);
	НайденныйЭлементОтбора.Использование = Истина;
	НайденныйЭлементОтбора.ВидСравнения = ВидСравненияКомпоновкиДанных.Равно;
	НайденныйЭлементОтбора.РежимОтображения = РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный;
	НайденныйЭлементОтбора.ПравоеЗначение = ПравоеЗначение;
	
КонецПроцедуры