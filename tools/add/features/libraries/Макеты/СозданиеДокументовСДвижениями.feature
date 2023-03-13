﻿# language: ru

@IgnoreOnWeb

Функционал: Проверка создания fixtures
	Как Разработчик
	Я Хочу чтобы чтобы я мог создавать fixtures по макетам документов с движениями по регистрам

Сценарий: Создание документов с движениями по регистрам сведений

	Когда в метаданных есть РегистрСведений "РСПодчиненРегистраторуПериодический"
	И я удаляю все записи РегистрСведенийПодчиненРегистратору "РСПодчиненРегистраторуПериодический"
	И в базе нет записей РегистрСведений "РСПодчиненРегистраторуПериодический"
	И Я создаю fixtures по макету "ДокументСДвижениямиПоРегистрамСведений"
	Тогда В базе появилась хотя бы одна запись РегистрСведений "РСПодчиненРегистраторуПериодический"
	И В базе есть записи РегистрСведений "РСПодчиненРегистраторуПериодический"
	
Сценарий: Создание документов с движениями по регистрам накопления

	Когда в метаданных есть РегистрНакопления "РегистрНакопленияОбороты"
	И я удаляю все записи РегистрНакопления "РегистрНакопленияОбороты"
	И в базе нет записей РегистрНакопления "РегистрНакопленияОбороты"
	И в метаданных есть РегистрНакопления "РегистрНакопленияОстатки"
	И я удаляю все записи РегистрНакопления "РегистрНакопленияОстатки"
	И в базе нет записей РегистрНакопления "РегистрНакопленияОстатки"
	И Я создаю fixtures по макету "ДокументСДвижениямиПоРегистрамНакопления"
	Тогда В базе появилась хотя бы одна запись РегистрНакопления "РегистрНакопленияОбороты"
	И в базе появилась хотя бы одна запись РегистрНакопления "РегистрНакопленияОстатки"
	И В базе есть записи РегистрНакопления "РегистрНакопленияОстатки"

Сценарий: Создание документов с движениями по регистрам бухгалтерии
	Когда в метаданных есть РегистрБухгалтерии "РегистрБухгалтерии1"
	И я удаляю все записи РегистрБухгалтерии "РегистрБухгалтерии1"
	И в базе нет записей РегистрБухгалтерии "РегистрБухгалтерии1"
	И Я создаю fixtures по макету "ДокументСДвижениямиПоРегистрамБухгалтерии"
	Тогда В базе появилась хотя бы одна запись РегистрБухгалтерии "РегистрБухгалтерии1"
	И В базе есть записи РегистрБухгалтерии "РегистрБухгалтерии1"

Сценарий: Создание документов с движениями по регистрам расчета
	Когда в метаданных есть РегистрРасчета "РегистрРасчета1"
	И я удаляю все записи РегистрРасчета "РегистрРасчета1"
	И в базе нет записей РегистрРасчета "РегистрРасчета1"
	И Я создаю fixtures по макету "ДокументСДвижениямиПоРегистрамРасчета"
	Тогда В базе появилась хотя бы одна запись РегистрРасчета "РегистрРасчета1"
	И В базе есть записи РегистрРасчета "РегистрРасчета1"


	
