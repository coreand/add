﻿# language: ru

@IgnoreOnCIMainBuild
@SpecialTag

Функционал: Загрузить фичу в vanessa-add
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность загрузить произвольную тестовую фичу в vanessa-add


Сценарий: Возникновение ошибки в ПередНачаломСценария

# Первый шаг не должен выполнится, т.к. должна быть ошибка в процедуре ПередНачаломСценария
	Когда Я уверен что этот шаг не будет выполняться

Сценарий: Продолжение работы
	Когда Возврат в хост систему
