/// 컬렉션 타입
/// Array, Dictionary, Set

import Swift

/*
Array - 순서(인덱스)가 있는 리스트 콜렉션
Dictionary - 키와 값(value)의 쌍으로 이루어진 컬렉션
Set - 순서(인덱스)가 없고, 멤버가 유일한 콜렉션
*/



// MARK: - Array

var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(50)
integers.append(100)
// intergers.append(101.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeFirst()
integers.removeLast()
integers.removeAll()

integers.count

// integers[0]

// Array<Double>와 [Double]은 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
var characters: [Character] = [] // []는 새로운 빈 Array

// var을 사용하여 Array를 생성하면 가변 Array
let mutableArray = [1, 2, 3]

// let을 사용하여 Array를 생성하면 불변 Array
let immutableArray = [1, 2, 3]

// immutableArray.append(4)
// immutableArray.removeAll()



// MARK: - Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "Dictionary"

anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil

anyDictionary

// var을 사용하여 Dictionary를 생성하면 가변 Dictionary
var emptymutableDictionary: Dictionary<String, String> = [String: String]()
var mutableDictionary: [String: String] = ["name": "zxcvb", "gender": "male"]

// mutableDictionary["name"] = "value"

// var someValue: String = mutableDictionary["name"]

// let을 사용하여 Dictionary를 생성하면 불변 Dictionary
let emptyDictionary: [String: String] = [:] // [:]는 새로운 빈 Dictionary
let immutableDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// emptyDictionary["key"] = "value"

// let someValue: String = immutableDictionary["name"]



// MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet

integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count



let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)

let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)

let subtracting: Set<Int> = setA.subtracting(setB)



// MARK: 실습 내용

// 생각해보기

"영어 알파벳 소문자를 모아두는 컬렉션" // Array

"책의 제목과 저자 정리를 위한 컬렉션" // Dictionary

"우리반 학생 명부 작성을 위한 컬렉션" // Set
