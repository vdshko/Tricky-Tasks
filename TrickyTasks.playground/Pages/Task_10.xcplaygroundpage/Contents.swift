let arrayOfInt: [Any] = [1, [2], 3, [4, 5], [6, 7, [8, 9, 10]], 11]

func solution<T>(_ array: [Any]) -> [T] {
    // try to write a code for parsing arrayOfInt to look like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    
    return []
}

func test() {
    print(solution(arrayOfInt) == [Int](1...11))
}

test()














































// Answer:

//func solution<T>(_ array: [Any]) -> [T] {
//    return array.reduce([T]()) { result, item in
//        if let insideArray = item as? Array<Any> {
//            return result + solution(insideArray)
//        }
//
//        if let item = item as? T {
//            return result + [item]
//        }
//
//        return []
//    }
//}
