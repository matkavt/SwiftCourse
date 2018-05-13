//Дополнительные задания по просьбам трудящихся
import UIKit
//Задание 1
//Напишите функцию, которая вычисляет расстояние между двумя точками

func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    let dx = x1 - x2
    let dy = y1 - y2
    return sqrt(dx*dx + dy*dy)
}

//Проверка
let x1: Double = 0
let y1: Double = 0
let x2: Double = 30
let y2: Double = 40
distance(x1: x1, y1: y1, x2: x2, y2: y2)


//Задание 2
//Посчитайте периметр треугольника
func perimeterOfTriangle(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> Double {
    let a = distance(x1: x1, y1: y1, x2: x2, y2: y2)
    let b = distance(x1: x1, y1: y1, x2: x3, y2: y3)
    let c = distance(x1: x3, y1: y3, x2: x2, y2: y2)
    return a + b + c
}

perimeterOfTriangle(x1: 0, y1: 0, x2: 3, y2: 4, x3: 0, y3: 4)

//Задание 3
// Популярная задачка на нахождение остатка от деления:
//Дано число n. С начала суток прошло n минут. Определите, сколько часов и минут будут показывать электронные часы в этот момент. Программа должна вывести два числа: количество часов (от 0 до 23) и количество минут (от 0 до 59). Учтите, что число n может быть больше, чем количество минут в сутках.
func time(minutes: Int) -> (Int, Int) {
    let minutesInDay: Int = 24*60
    let minutesInHour: Int = 60
    return (minutes % minutesInDay / minutesInHour, minutes % minutesInHour)
}

//Проверка (Справа должно быть везде true)
time(minutes: 150) == (2, 30)
time(minutes: 1441) == (0, 1)
time(minutes: 444) == (7, 24)
time(minutes: 180) == (3, 0)
time(minutes: 1439) == (23, 59)
time(minutes: 1440) == (0, 0)
time(minutes: 2000) == (9, 20)
time(minutes: 3456) == (9, 36)
time(minutes: 5678) == (22, 38)
time(minutes: 9876) == (20, 36)


//Задание 4*
//Написать функцию, которая по точкам напишет уравнение прямой, на которой они лежат. Пример: point1 = (0, 1), point2 = (1, 3). Функция: y = 2*x + 1
func equationOf(x1: Double, y1: Double, x2: Double, y2: Double) -> String {
    let dx = x2 - x1
    let dy = y2 - y1
    let k = dy / dx
    let b = y1 - x1*k
    return "y = \(k)*x + \(b)"
}

equationOf(x1: 0, y1: 1, x2: 1, y2: 3)

//Задание 5*
//Найдите ошибки в коде:

let height: Float = 1000 //Высота устройства в пикселах
let width: Float = 1200 //И его ширина

var imageWidth: Float = 1900 //высота картинки
var imageHeight: Float = 1800 //ширина картинки

//Считаю как преобразовать картинку, так, чтобы она целиком влезла на монитор и при этом прижималась плотно хотя бы к двум сторонам и сохранила пропорцию.

let koef1 = width / imageWidth
let koef2 = height / imageHeight
let koef = min(koef1, koef2)

imageWidth = imageWidth * koef //Изменяю размер картинки
imageHeight = imageHeight * koef

print("new width: \(imageWidth), new height: \(imageHeight)")
