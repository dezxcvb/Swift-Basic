/// 값 타입과 참조 타입
/// Class Vs Struct / Enum

import Swift

// MARK: - Class Vs Struct/Enum

class ReferenceType {
    var property = 1
}

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

// print("first class reference property : \(firstClassReference.property)") /// 2
// print("second class reference property : \(secondClassReference.property)") /// 2

// 단순히 하나의 인스턴스를 가지고 두 참조가 모두 인스턴스를 가르킨다.
// 값이 전달될 때 (복사되는 것이 아니고) 참조 값이 복사되어 가는 것이다.



struct ValueType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

// print("first struct instance property : \(firstStructInstance.property)") /// 1
// print("second struct instance property : \(secondStructInstance.property)") /// 2

// 두 참조가 각각 다른 두 인스턴스를 가르킨다.
// 값이 전달될 때 복사되어 가는 것이다.



// MARK: - Reference Type Vs Value Type

class SomeClass {
    var someProperty: String = "Property"
}

var someClassInstance: SomeClass = SomeClass()

func someFunction(classInstance: SomeClass) {
    var localVar: SomeClass = classInstance
    localVar.someProperty = "ABC"
}

someFunction(classInstance: someClassInstance)
// print(someClassInstance.someProperty) /// ABC



struct SomeStruct {
    var somePropertys: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.somePropertys = "ABC"
}

someFunction(structInstance: someStructInstance)
// print(someStructInstance.somePropertys) /// Property



// MARK: - 실습내용

// 값 타입과 참조 타입이 어떻게 다른 동작을 보이는지 확실히 이해해 봅시다.
