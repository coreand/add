﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


// контекст фреймворка Vanessa-ADD
Перем Ванесса;


// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;


// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-ADD.
Перем КонтекстСохраняемый Экспорт;


// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;

	ВсеТесты = Новый Массив;

	//описание параметров
	//пример вызова Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВызываюВложеннуюСтруктуруСценарияДляПроверкиМетодаШаг()","ЯВызываюВложеннуюСтруктуруСценарияДляПроверкиМетодаШаг","Когда Я вызываю вложенную структуру сценария для проверки метода шаг","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВызываюВложенныйСценарийДляПроверкиМетодаШаг()","ЯВызываюВложенныйСценарийДляПроверкиМетодаШаг","Когда я вызываю вложенный сценарий для проверки метода шаг","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСвоёмМетодеЯВызовуСлужебныйШагДляПроверкиЗагрузкиСнипетовМетодаШаг()","ВСвоёмМетодеЯВызовуСлужебныйШагДляПроверкиЗагрузкиСнипетовМетодаШаг","Когда в своём методе я вызову служебный шаг для проверки загрузки снипетов метода шаг","","");

	Возврат ВсеТесты;
КонецФункции


// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции


// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////


// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт

КонецПроцедуры


// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт

КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


//Когда в своём методе я вызову служебный шаг для проверки загрузки снипетов метода шаг
//@ВСвоёмМетодеЯВызовуСлужебныйШагДляПроверкиЗагрузкиСнипетовМетодаШаг()
Процедура ВСвоёмМетодеЯВызовуСлужебныйШагДляПроверкиЗагрузкиСнипетовМетодаШаг() Экспорт
	Ванесса.Шаг("Когда я вызываю служебный шаг для проверки загрузки снипетов метода шаг");
КонецПроцедуры


//Когда я вызываю вложенный сценарий для проверки метода шаг
//@ЯВызываюВложенныйСценарийДляПроверкиМетодаШаг()
Процедура ЯВызываюВложенныйСценарийДляПроверкиМетодаШаг() Экспорт
	Ванесса.Шаг("Когда Это вложенный сценарий для проверки метода шаг");
КонецПроцедуры


//Когда Я вызываю вложенную структуру сценария для проверки метода шаг
//@ЯВызываюВложеннуюСтруктуруСценарияДляПроверкиМетодаШаг()
Процедура ЯВызываюВложеннуюСтруктуруСценарияДляПроверкиМетодаШаг() Экспорт
	Ванесса.Шаг("Когда Это вложенная структура сценария для проверки метода шаг");
КонецПроцедуры
