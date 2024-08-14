
Процедура ПередЗаписью(Отказ, Замещение)
	ТекущийСотрудник = ПараметрыСеанса.СотрудникТекущегоПользователя;
	Для Каждого Запись Из ЭтотОбъект Цикл
		Если Не ЗначениеЗаполнено(Запись.Ответственный) Тогда
			Запись.Ответственный = ТекущийСотрудник;	
		КонецЕсли;
	КонецЦикла;
КонецПроцедуры


Процедура ОбработкаЗаполнения(ДанныеЗаполнения, СтандартнаяОбработка)
	ТекущийСотрудник = ПараметрыСеанса.СотрудникТекущегоПользователя;
	Для Каждого Запись Из ЭтотОбъект Цикл
		Запись.Ответственный = ТекущийСотрудник;
	КонецЦикла;
КонецПроцедуры



