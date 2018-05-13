//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var completion: () -> () = {
    print("ok")
}

completion

func loadDataAndDo(something: () -> ()) {
    print("Загружаем данные")
    something()
}

loadDataAndDo {
    print("Данные загружены")
}

