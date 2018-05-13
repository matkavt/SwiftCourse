 import UIKit // подгружаем новый код (UIKit - библиотека или модуль)
// Новая функция
sqrt(25)

//Цвет
let red: UIColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)

print(red)


//Новые типы данных

//Базовый тип - Bool

true
false

let myNameIsMat: Bool = true
let myNameIsMax: Bool = false

let iAmDeveloper = true

//Булевые операции

myNameIsMat && myNameIsMax //И
myNameIsMat && iAmDeveloper
myNameIsMax && false

//Таблица истинности
true && true
true && false
false && true
false && false

//ИЛИ
myNameIsMat || myNameIsMax
myNameIsMat || true
myNameIsMax || false

//Таблица истинности
true || true
true || false
false || true
false || false

//НЕ (отрицание)
!true
!false

//УСЛОВИЕ - if

if true { //если (Bool)
    print("ok")
} else { //иначе
    print("not ok")
}

let x: Int = -1298120398

if x > 0 {
    print("x больше нуля")
} else {
    print("x не больше нуля")
}

// Cтрогое сравнение
4 > 1
5 < 2
5 < 5

// ЭТО НЕ ОПЕРАТОР СРАВНЕНИЯ
var a = 10
a = 9
a = 8

// ЭТО ОПЕРАТОР СРАВНЕНИЯ
3 == 3
3 == 0

// Нестрогое сравнение
3 >= 3
5 >= 2
10 <= 2

abs(10)
abs(-10)

func module(of number: Double) -> Double {
    if number > 0 { // число больше 0
        return number
    } else { // число меньше 0 или равно
        return -number
    }
}

module(of: 20)
module(of: -20)

