import Cocoa

/*
 //1. Решить квадратное уравнение.


let a,b,c,d: Double
a = 1
b = -9
c = -7
d = (b * b) - (4 * a * c)
if b == 0 && c == 0 {
    print("Уравнение является неполным и имеет один корень = 0")
}   else if b == 0 || c == 0 {
        print("Уравнение является неполным")
        if b == 0 && (-c / a ) >= 0 {
        print("Уравнение имеет два корня")
        print("Первый корень = ", sqrt( -c / a))
        print("Второй корень = ", -sqrt( -c / a))
}   else if b == 0 && (-c / a) < 0 {
        print("Уравнение не имеет корней")
}   else if c == 0 {
        print("Уравнение имеет два корня")
        print("Первый корень = 0")
        print("Второй корень = ", -(b/a))
    }
} else {
print("Дискриминант равен ", d)
if d < 0 {
    print("Уравнение не имеет корней")
} else if d == 0 {
    print("Уравнение имеет один корень")
    print("Корень равен ", (-b + sqrt(d)) / (2 * a))
} else if d > 0 {
    print("Уравнение имеет два корня")
    print("Первый корень = ", (-b + sqrt(d)) / (2 * a))
    print("Второй корень = ", (-b - sqrt(d)) / (2 * a))
    }}
*/
//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
/*
let ab,bc,ca: Int
ab = 3 //катет 1
bc = 4 //катет 2
ca = 10 //гипотенуза
print("Площадь треугольника равна ", ((ab * bc) / 2))
print("Периметр треугольника равен ", (ab + bc + ca)) // Р = сумме длины сторон треугольника
print("Гипотенуза треугольника равна ", (sqrt(pow(Double(ab),2) + pow(Double(bc),2)))) //расчитаем по формуле (ca2 = ab2 + bc2) == корень от суммы квадратов катетов
*/
//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
let depo, percent, year: Int
depo = 10000
percent = 10
year = 5
var summ: Int
// расчет с ежегодной индексацией
summ = depo
for _ in 1...year {
    summ = summ + ((summ * percent) / 100)
}
print("Сумма вклада с процентами при ежегодной индексации составит ", summ)

//расчет с ежемесячной индексацией
let month = year * 12
summ = depo
for _ in 1...month {
    summ = summ + ((summ * percent) / 1000)
}
print("Сумма вклада с процентами при ежемесячной индексации составит ", summ)
//расчет без индексации на весь срок вклада
summ = depo + (depo * percent / 100)
print("Сумма вклада с процентами без индексации на весь период вклада", summ)
