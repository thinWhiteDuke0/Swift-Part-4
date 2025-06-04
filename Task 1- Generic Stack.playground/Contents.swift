struct Stack<T> {
    var items: [T] = []
    
    mutating func  push(_ element: T) {
        items.append(element)
    }
    
    mutating func pop() -> T? {
        items.popLast()
    }
    
    func size() -> Int {
        return items.count
    }
    
    func printStackContents() -> String {
        return items.map { "\($0)" }.joined(separator: ", ")
    }
}

