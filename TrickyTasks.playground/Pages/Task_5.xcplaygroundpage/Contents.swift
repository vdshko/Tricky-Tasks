enum TestEnum: Int {
    
    case a, b = 1_000, c, d = 5_000, e, f = 234, g
}

func test() {
    print(TestEnum.a.rawValue)
    print(TestEnum.c.rawValue)
    print(TestEnum.e.rawValue)
    print(TestEnum.g.rawValue)
}

test()
