import UIKit

//: ## Home Work 2

/*:
 ### Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
 */
let firstProperty: Float = 3.14
let secondProperty: Float = 42.0

/*:
 1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
 */

let sum: Double = Double(firstProperty) + Double(secondProperty)

/*:
 1.3 Выведите результат при помощи `print()`
 */

print(sum)

/*:
 ### Задание 2
 2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
 */

var numberOne: Int = 21

/*:
 2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
 */

var numberTwo: Int = 15

/*:
 2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
 */

let result: Int = numberOne / numberTwo

/*:
 2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
 */

let remainder: Int = numberOne % numberTwo

/*:
 2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 */

print("При делении \(numberOne) на \(numberTwo) результат равен \(numberOne / numberTwo), остаток равен \(remainder)»")

/*:
 2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
 */


print("Результат деления \(numberOne) на \(numberTwo) равен \(numberOne / numberTwo) \(numberOne - numberTwo)/\(numberTwo)")

/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 */

let dayOfBirth: Int = 12

/*:
 3.2 Объявите константу `mothOfBirth` и присвоейте ей месяц вашего рождения
 */

let mothOfBirth: Int = 4

/*
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 */

let yearOfBirth = 2000

/*
 3.4 Подсичтайте количество полных лет, полных месяцев, дней и секунд с момента вашего рождения, по текущее время. За текущее время возьмите сегодняшнуюю дату и 0 часов 0 минут. Високосные года можете не учитывать. Пусть среднее количество дней в месяце будет 30. Создайте необходимы для решения данной задачи константы и переменные самостоятельно используя базовые операторы
 */

let daysOfMonth: Int = 30
let minutesInHour = 60
let secondsInMinute = 60
let currentDay: Int = 1
let currentMonth: Int = 11
let currentYear: Int = 2023
let years: Int = currentYear - yearOfBirth
let months: Int = (currentMonth - mothOfBirth) * years
let days: Int = ((currentDay + currentMonth * daysOfMonth) - (dayOfBirth + mothOfBirth * daysOfMonth)) * months
let minutes: Int = (days * minutesInHour) * days * 24
//let seconds: Int = minutes * secondsInMinute * minutes

/*
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст
 */

print("\(years) years, \(months) months, \(days) days and  have passed since my birth")

//\(seconds) seconds
/*
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */

let myMonthBirth = 4
if myMonthBirth == 1 || myMonthBirth == 2 || myMonthBirth == 12 {
    print("I was born in first quarter")
} else {
    if myMonthBirth == 3 || myMonthBirth == 4 || myMonthBirth == 5 {
        print("I was born in second quarter")
    } else {
        if myMonthBirth == 6 || myMonthBirth == 7 || myMonthBirth == 9 {
            print("I was born in third quarter")
        } else {
            if myMonthBirth == 9 || myMonthBirth == 10 || myMonthBirth == 11 {
                print("I was born in fourth quarter")
            }
        }
    }
}


/*:
 ### Задание 4
 Задание на вашу способность гуглить. Необходимо вычислить синус от числа 1 и округлить результат до тысячных.
 > Подсказка: в результате должно получиться 0.841
 */


var sinForNumberOne: Double = sin(1)
sinForNumberOne = (sinForNumberOne * 1000).rounded() / 1000
print(sinForNumberOne)
