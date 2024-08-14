Процедура ЗаполнитьТабличнуюЧастьКонтактнаяИнформацция() Экспорт
	
	Выборка = Справочники.Контрагенты.Выбрать();
	
	Пока Выборка.Следующий() Цикл
		Контрагент = Выборка.ПолучитьОбъект();
		Контрагент.КонтактнаяИнформация.Очистить();
		
		Если ЗначениеЗаполнено(Контрагент.УдалитьЮридическийАдрес) Тогда
			Контакт = Контрагент.КонтактнаяИнформация.Добавить();
			Контакт.Вид = Справочники.ВидыКонтактнойИнформации.ЮридическийАдресКонтрагента.Ссылка;
			Контакт.Значение = Контрагент.УдалитьЮридическийАдрес;
		КонецЕсли;
		
		Если ЗначениеЗаполнено(Контрагент.УдалитьПочтовыйАдрес) Тогда
			Контакт = Контрагент.КонтактнаяИнформация.Добавить();
			Контакт.Вид = Справочники.ВидыКонтактнойИнформации.ПочтовыйАдресКонтрагента.Ссылка;
			Контакт.Значение = Контрагент.УдалитьПочтовыйАдрес;
		КонецЕсли;
		
		Контрагент.Записать();
	КонецЦикла;
	
КонецПроцедуры