import UIKit

//Задание 0. Выведите, в каком классе учится Петя
let schools = [
    (number: 1, students: [
        (name: "Вася", class: 4, avarageMark: 3.2),
        (name: "Петя", class: 7, avarageMark: 3.5),
        (name: "Маша", class: 11, avarageMark: 5.0)
    ]),
    (number: 2, students: [
        (name: "Коля", class: 1, avarageMark: 4.5),
        (name: "Света", class: 3, avarageMark: 2.2)
    ])
]

print(schools[1].students[0].class)

// Это - цикл while
//Отличие от условия в том, что условие запускает блок кода ЕСЛИ что-то верно, а цикл запускает блок кода ПОКА что-то верно

//Пример
var i = 0
while i < 10 {
    i = i + 1
    print(i)
}

// Задание 1. С помощью цикла while выведите все элементы массива
let myNumbers = [9,8,7,6,5,4,3,2,1]

// Это цикл for-in - более удобная запись цикла. В основном для работы с массивом
// В новую переменную (в данном случае element) поочередно записываются элементы массива.
let array = ["a", "b", "c", "d"]
for element in array {
    print(element)
}

for element in array {
    print("На данном шаге переменная element равна \(element)")
}

// Задание 2. С помощью цикла for выведите все числа в массиве
let numbers = [10, 20, 30, 25, 15, 0, -10]
for number in numbers {
    print(number)
}

// Задание 3. Как бы вы хранили данные об аудиозаписи? (Длина, название, исполнитель)
// Создайте 4 константы, в которые запишите свой любимые песни
let first = (name: "Smells Like Teen Spirit", author: "Nirvana", seconds: 277)
let second = (name: "Smoke On The Water", author: "Deep Purple", seconds: 340)
let third = (name: "Immigrant Song", author: "Led Zeppelin", seconds: 247)
let forth = (name: "Long And Lonesome Road", author: "Shoking Blue", seconds: 165)

0.45 + 0.45 + 0.15
//Лучше хранить длительность в секундах а уже потом переводить это в красивый вид. Например так
func title(for seconds: Int) -> String {
    let min = seconds / 60
    let sec = seconds % 60
    if sec < 10 {
        return "\(min) : 0\(sec)"
    } else {
        return "\(min) : \(sec)"
    }
}
title(for: third.seconds)
title(for: forth.seconds)

// Задание 4. Как бы вы хранили список аудиозаписей?
// Создайте константу, в которой будет список ваших любимых песен
let songlist = [first, second, third, forth]

// Задание 5*. Напишите функцию, которая по названию песни ищет ее в списке ваших любимых песен и возвращает. Если такой песни нет, вызовите эту функцию - fatalError()
func findAudio(by name: String) -> (name: String, author: String, seconds: Int) {
    for song in songlist {
        if song.name == name {
            return song
        }
    }
    fatalError("Такой песни не найдено")
}

//findAudio(by: "Itck")

// Задание 6. Создайте проект-аудиоплеер. По середине будет название песни, исполнитель, длительность. Справа и слева - кнопки переключения песни вперед и назад. По желанию добавьте туда картинку.

// Задание 7*. Это - функция, выдающая случайное значение от 0 до 100(другого числа). Она работает с типом UInt32
arc4random_uniform(100)
//Напишите функцию, которая будет выдавать случайное число от lower до upper в типе Int. Она нам пригодится
func random(from lower: Int, to upper: Int) -> Int {
    return Int(arc4random_uniform(UInt32(upper - lower))) + lower
}

random(from: 10, to: 13)
random(from: 1000, to: 5000)

// Задание 8*. С помощью цикла создайте массив, в котором будут квадраты натуральных чисел от 1 до 20.
var squareNumbers: [Int] = []
for i in 1...20 {//Можно еще так 1..<21
    squareNumbers.append(i*i)
}
print(squareNumbers)
