func test() {
    let number = 5
    var result = 0
    
    switch number {
    case 1...5:
        result = 1
        fallthrough
    case 2:
        result = 2
    case 5:
        result = 5
        fallthrough
    default:
        break
    }
    
    print(result)
}

test()
