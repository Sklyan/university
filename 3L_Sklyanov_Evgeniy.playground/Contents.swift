import UIKit
//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
//
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum WindowOpen {
    case open
    case close
    func windowPrint() -> String {
        switch self {
        case .open:
            return "окно открыто"
        case .close:
            return "окно закрыто"
        }
    }
}
enum MotorSt {
    case start
    case stop
    func motorStPrint() -> String {
        switch self {
        case .start:
            return "запущен"
        case .stop:
            return "заглушен"
        }
    }
}
enum TrankVbusy {
    case load
    case unload
}

struct car {
    let carMark: String
    let year: Int
    var vTrunk: Int
    var motorStart: MotorSt
    mutating func startMotor() {
        motorStart = .start
    }
    mutating func stopMotor() {
        motorStart = .stop
    }
    
    var window: WindowOpen
    mutating func closeWindow() {
        window = .close
    }
    mutating func openWindow() {
        window = .open
    }
    var vTrunkBusy: Int
    
}
struct truck {
    let carMark: String
    let year: Int
    let vTrunk: Int
    var motorStart: MotorSt
    mutating func startMotor() {
        motorStart = .start
    }
    mutating func stopMotor() {
        motorStart = .stop
    }
    var window: WindowOpen
    mutating func closeWindow() {
        window = .close
    }
    mutating func openWindow() {
        window = .open
    }
    var vTrunkBusy: Int
    
}
var car1 = car(carMark: "BMW", year: 2008, vTrunk: 420, motorStart: .start, window: .close, vTrunkBusy: 20)
var car2 = car(carMark: "Mercedes", year: 2017, vTrunk: 370, motorStart: .stop, window: .open, vTrunkBusy: 30)
var truck1 = truck(carMark: "Toyota", year: 2013, vTrunk: 3000, motorStart: .start, window: .close, vTrunkBusy: 2500)
var truck2 = truck(carMark: "Toyota", year: 2011, vTrunk: 6000, motorStart: .stop, window: .open, vTrunkBusy: 0)
print("Двигатель автомобиля", (car2.carMark), (car2.year), "года выпуска", (car2.motorStart.motorStPrint()))
car2.startMotor()
print("Двигатель автомобиля", (car2.carMark), (car2.year), "года выпуска", (car2.motorStart.motorStPrint()))
car1.openWindow()
print("Двигатель автомобиля", (car1.carMark), (car1.year), "года выпуска", (car1.motorStart.motorStPrint()))
print(car1.window.windowPrint())
