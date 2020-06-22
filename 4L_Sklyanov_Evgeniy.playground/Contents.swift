import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.

class car {
    enum WindowOpen {
        case open
        case close
    }
    
    var color: UIColor
    var carMark: String
    var year: Int
    var window: WindowOpen
    
    init(color:UIColor, carMark: String, year: Int, window: WindowOpen) {
        self.color = color
        self.carMark = carMark
        self.year = year
        self.window = window
    }
}
    var car1 = car(color: .red, carMark: "BMW", year: 2018, window: .close)
    print("Год выпуск автомобиля = \(car1.year)")

class superCar: car {
    enum SunRoof {
        case open
        case close
    }
    var sunRoof: SunRoof
    func sunRoofOpen() {
        sunRoof = .open
    }
    func sunRoofClose() {
        sunRoof = .close
    }
    init(color:UIColor, carMark: String, year: Int, window: WindowOpen, sunRoof: SunRoof) {
    self.sunRoof = sunRoof
        super.init(color: color, carMark: carMark, year: year, window: window)
    }
//    init (sunRoof: SunRoof) {
//        self.sunRoof = sunRoof
//    }
}

var car2 = superCar(color: .black, carMark: "Toyota", year: 1972, window: .close, sunRoof: .open)
print("Люк спорткара \(car2.sunRoof)")
car2.sunRoofClose()
print("Люк спорткара \(car2.sunRoof)")

class trunkCar: car {
    enum Kuzov {
        case open
        case close
    }
    var kuzov: Kuzov
    func kuzovOpen() {
        kuzov = .open
    }
    func kuzovClose() {
        kuzov = .close
    }
    init(color:UIColor, carMark: String, year: Int, window: WindowOpen, kuzov: Kuzov) {
    self.kuzov = kuzov
        super.init(color: color, carMark: carMark, year: year, window: window)
    }
}

var car3 = trunkCar (color: .gray, carMark: "МАЗ", year: 2015, window: .close, kuzov: .close)
print("Кузов грузовика \(car3.kuzov)")
car3.kuzovOpen()
print("Кузов грузовика \(car3.kuzov)")
