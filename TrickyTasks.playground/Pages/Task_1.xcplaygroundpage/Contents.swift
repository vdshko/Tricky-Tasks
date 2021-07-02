func test() {
    var dictionary: [String: Int?] = [
        "one": 1,
        "two": 2,
        "none": nil
    ]
    
    print(dictionary.count)
    
    dictionary["two"] = nil
    dictionary["none"] = nil
    
    print(dictionary.count)
}

test()
