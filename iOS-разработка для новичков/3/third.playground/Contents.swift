//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Сложные данные. Это когда несколько протых типов данных объединяют

// 1 тип сложных данных
// Кортеж - tuple. Пример = (0, 0)
let bookTitle = "Как программировать на C++"
let numberOfPagesInBook = 100000000

//Кортеж
let book: (String, Int, UIColor) = (bookTitle, numberOfPagesInBook, #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
//Как с ним работать

book.0
book.1
book.2

let book2: (title: String, pages: Int, color: UIColor) =
(title: "Как программировать на C++", pages: 100500, color: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
let book3 = (title: "Как программировать на Swift", pages: 100, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))

book2.title
book2.color
book2.pages
//Мы группируем данные в пару/тройку/n-ку.

let petya = (name: "Петя", age: 10, height: 152.5)

petya.age
petya.height
petya.name

// 2 тип - массив (array, list)
// Это список похожих данных (одинаковых по типу). Причем нефиксированной длины

let numbers = [1,2,3,4,5,6,5,3,2,3,4,3,2,1,4,5,6,7,9,10]

//Сколько всего элементов
numbers.count

//как доставать элементы из массива
numbers[1]
numbers[10]
numbers[12]
numbers[0]

let students = ["Anton", "Alexander", "Matroskin"]
students[0]
students[2]

//Обращаемся к несуществующему индексу
students[20] //ошибка

let array: [Int] = []

let library = [book3, book2]

library[0].color
let firstBook = library[0]
firstBook.pages


//3 тип сложных данных
//Словарь (Dictionary)

//Словарь - множество пар (ключ: значение)

let dict = ["key": "value", "q": "another value"]

var dict2 = ["qwerty": 12, "q": 13, "w": 15]

dict2["q"]
dict2["w"]
dict2["qwertyuiop[]"]
dict2["new key"] = 20


