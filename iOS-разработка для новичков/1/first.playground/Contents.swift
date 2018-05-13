//1 занятие по swift

//Тип данных строка
"qwerty"

//Тип данных дробное число
10.5

//Команда (Функция) print - она выводит что-то в консоль
print("Hello, world!")
print("Hello, Swift!")

//Оператор сложения
print(1012 + 1234)
print(1.2 + 1.3)

//Другие операторы
print(12 * 12 + 12 - 12 / 12)
print(12 % 5)


//Переменные и константы
//Это сохраненные (в оперативную память) данные, которым мы даем какое-то имя

//Ключевое слово для создания константы - let
let const = 10

//Используем нашу константу
print(const*10)
print(const + 12)

//Константа-строка
let myName = "Matvey"
//Строки можно склеивать (конкатенация)
print("Hello, " + myName + "!")

//Константу поменять нельзя (после присваивания)
//myName = "Maxim"

//Ключевое слово для задания переменной - var
var x = 0

//Используем нашу переменную
print(x)
print(x+200)

//Поменял значение переменной
x = 1

//Используем нашу переменную
print(x)
print(x+200)

//Отличия переменной и константы
//Констатнты надёжны и работают быстро!

//Как канонично создать переменную или константу
let someName: String = "Steve"
var number: Int = 42
let pi: Double = 3.1415926
let e: Float = 2.7

//String - строка, Int - целое число
//Double - дробное число (2 Int через точку)
//Float - Число с плавающей точкой


//Функции

//Вызов функции
print(1, 2, 3)

max(1024, 1000)

print(max(1, 10))

//"Ловим" результат выполнения функции
let maximum = max(0, 1)
print(maximum)

let minimum = min(-10, 10)
print(minimum)


//Создаем свою функцию
func square(number: Double) -> Double {
    let result: Double = number*number
    return result
}
//func имяФункции (параметр: Тип) -> ТипВозвращаемогоЗначения {
//    ваш код (тело функции, блок кода)
//}

//Вызов функции
square(number: 10)

square(number: 3.5)

//"Ловим" возвращаемое значение
let squareOfPi = square(number: pi)
print(squareOfPi)

func hello() {
    print("Hello!")
}

hello()
hello()
hello()

func doublePrint(text: String) {
    print(text)
    print(text)
}

doublePrint(text: "This message will be printed 2 times.")

func getValueOfPi() -> Double {
    return 3.1415926
}

let myPi = getValueOfPi()
print(myPi)

