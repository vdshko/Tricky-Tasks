func test() {
    var language = "C"
    
    var code = { [language] in
        print(language)
    }
    
    code()
    
    language = "Objc"
    
    code()
    
    code = {
        print(language)
    }
    
    code()
    
    language = "Swift"
    
    code()
}

test()
