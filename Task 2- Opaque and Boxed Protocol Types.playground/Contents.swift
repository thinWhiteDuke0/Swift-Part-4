protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}



struct Circle: Shape {
    var radius: Double

    func area() -> Double {
        return .pi * radius * radius
    }

    func perimeter() -> Double {
        return 2 * .pi * radius
    }
}

struct Rectangle: Shape {
    var width: Double
    var height: Double

    func area() -> Double {
        return width * height
    }

    func perimeter() -> Double {
        return 2 * (width + height)
    }
}

func generateShape() -> some Shape {
    return Circle(radius: 5)
}

func calculateShapeDetails(for shape: some Shape) -> (area: Double, perimeter: Double) {
    return (shape.area(), shape.perimeter())
}
