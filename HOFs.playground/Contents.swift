import UIKit


var number = Array(1..<100)



// Filter

///Set

let nameSet: Set = ["trivan", "mary", "larns", "tria"]

var resultSet: Set<String> = []

nameSet.forEach { (element) in
    if element.count == 5 {
        resultSet.insert(element)
    }
}
print(resultSet)

//let resultNames = nameSet.filter { $0.count == 5 }

let resultNames = nameSet.filter { (value) -> Bool in
    return value.count == 5
}
resultNames



/// String
let myString = "Ananth"
//let myNumbers = myString.filter { "Ananth Krishnan".contains($0) }
let myNumbers = myString.filter { (a) -> Bool in
    return "Ananth Krishnan".contains(a)
}
print(myNumbers)

/// Dictionary
let myDictionary = ["Ananth":26, "Roy": 27, "Laila":23, "Louise":28,"Nova":25]


//let resultDic = myDictionary.filter{$1 < 25}
let resultDic = myDictionary.filter { (name,age) -> Bool in

    return age < 25
}
print(resultDic)


// Map

/// array of Strings

var nameArray =  ["trivan", "mary", "larns", "tria"]

//let resultNames1 = nameArray.map{$0.replacingOccurrences(of: "a", with: "ii")}

let resultNames1 = nameArray.map { (element) -> String in
    return element.replacingOccurrences(of: "a", with: "ii")
}
resultNames1


/// Dictionary

var myDictionary1 = ["Ananth":26, "Roy": 27, "Laila":23, "Louise":28,"Nova":25]
let tupleArray = myDictionary1.map{ ($0,$1+1)}

/*let tupleArray = myDictionary1.map { (key: String, value: Int) in
    return (key, value + 1)
}*/

 myDictionary1 = Dictionary(uniqueKeysWithValues: tupleArray)

myDictionary1


/// String

let myString1 = "ananth"
print(myString1.replacingOccurrences(of: "a", with: "A"))
let newString = myString1.map{$0.description == "a" ? $0.description.uppercased() : $0.description}
//let newString = myString1.map { (char) in
//
//    return char.description == "a" ?  char.description.uppercased() : char.description
//}

print(newString.joined())


// compactMap

let nameArray1:[String?] =  ["trivan", nil,"mary", "larns", "tria"]


let filteredNilArray = nameArray1.compactMap{$0?.replacingOccurrences(of: "a", with: "A")}
print(filteredNilArray)
    

//reduce

let nameArray3:[String?] =  ["trivan","mary", "larns", "tria"]

let nameReduce = nameArray3.reduce("",{$0!.count > $1!.count ? $0 : $1 })
nameReduce

print("\n\n\n")

let nameDic23 = ["Ananth":29, "Roy": 40, "Laila":23, "Louise":28,"Nova":25]

let name = nameDic23.reduce((key:"",value:0),  {
    return $0.value > $1.value ? $0 : $1
})
name


let name1 = nameDic23.reduce((key:"",value:0)) { (res, arg1) in
    
    return res.value > arg1.value ? res : arg1
}
name1


//sorted

var numberArr = [4,6,3,1,6,8,9,0,4]
var newArr = numberArr.sorted(by: {$0 > $1})
newArr = numberArr.sorted(by: >)
newArr = numberArr.sorted(by: <)
newArr = numberArr.sorted{$0 < $1}
newArr = numberArr.sorted { (a, b ) -> Bool in
    return a < b
}
newArr


var stringValue = "Ananth"
var stringV = stringValue.sorted()
String(stringV)

stringV = stringValue.sorted(by:<)

String(stringV)

stringV = stringValue.sorted(by:>)

String(stringV)

stringV = stringValue.sorted{$0 > $1}

String(stringV)


let nameDic24 = ["Ananth":29, "Roy": 40, "Laila":23, "Louise":28,"Nova":25]

let sortedKeysAndValues = nameDic24.sorted{ $0.1 < $1.1 }
print(sortedKeysAndValues)
