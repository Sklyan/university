import Cocoa

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
