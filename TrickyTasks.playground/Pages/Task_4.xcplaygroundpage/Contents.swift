enum TestEnum: RawRepresentable {
    
    case one, two, none
    
    init?(rawValue: Int) {
        switch rawValue {
        case 1: self = .one
        case 2: self = .two
        default: self = .none
        }
    }
    
    var rawValue: Int {
        return 1
    }
}

func test() {
    // 1
    print(TestEnum.one == TestEnum.two)
    
    let first = TestEnum(rawValue: 1)
    let second = TestEnum(rawValue: 3)
    
    // 2
    print(first == second)
    
    // 3
    if case .one = second {
        print(true)
    } else {
        print(false)
    }
    
    // 4
    let someValue: TestEnum? = TestEnum.two
    
    switch someValue {
    case .two: print(true)
    default: print(false)
    }
}

test()
