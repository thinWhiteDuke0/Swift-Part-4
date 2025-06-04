protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}



class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
    
    func perimeter() -> Double {
        return 2 * .pi * radius
    }
    
    deinit {
            print("Circle deallocated")
        }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
    
    func perimeter() -> Double {
        return 2 * (width + height)
    }
    
    deinit {
            print("Recteangle deallocated")
        }
}


func generateShape() -> some Shape {
    return Circle(radius: 5)
}

func calculateShapeDetails(for shape: some Shape) -> (area: Double, perimeter: Double) {
    return (shape.area(), shape.perimeter())
}


do {
    let shape = generateShape()
    let result = calculateShapeDetails(for: shape)
    print("Area: \(result.area)")
    print("Perimeter: \(result.perimeter)")
} 
