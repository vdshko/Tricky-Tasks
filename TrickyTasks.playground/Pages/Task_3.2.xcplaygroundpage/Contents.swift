class TestClass {
    
    var language = "Objc"
}

func test() {
    let testClass = TestClass()
    
    let code = { [testClass] in
        print(testClass.language)
    }
    
    code()
    
    testClass.language = "Swift"
    
    code()
}

test()
