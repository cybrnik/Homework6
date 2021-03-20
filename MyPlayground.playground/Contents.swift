import UIKit

struct Stack<T> {
    var queue = [T]()
    mutating func push(_ element: T){
        queue.append(element)
    }
    
    mutating func pop() -> T?{
        guard queue.count > 0 else {return nil}
        return queue.removeLast()
    }
    
}
extension Stack{
    subscript(index: Int) -> T? {
        guard index < queue.count else{return nil}
        return queue[index]
    }
}
var myStack = Stack<Int>()
myStack.push(1)
myStack.push(2)
myStack.push(3)
myStack.push(4)
myStack.push(5)
myStack.push(6)

myStack.pop()

print(myStack[2] ?? "This element dosen't exist!")
print(myStack[200] ?? "This element dosen't exist!")

func map(array: [Int], toWhatReplace: (Int) -> Int) -> [Int] {
    var tmpArr = [Int]()
    
    for element in array {
        tmpArr.append(toWhatReplace(element))
    }
    
    return tmpArr
}

var array: [Int] = [1,2,3,4,5]


var newArray = map(array: array, toWhatReplace: { $0 * 2 })
print(newArray)

