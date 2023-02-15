/// 구조체
/// Structure

import Swift

// MARK: - 정의

/*
struct 이름 {
    구현부
}
*/

// MARK: - 프로퍼티 및 메서드

struct Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100
    
    // 불변 프로퍼티
    let immutableProperty: Int = 100
    
    // 타입 프로퍼티
    static var typeProperty: Int = 100
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드
    static func typeMethod() {
        print("type method")
    }
}



// MARK: 구조체 활용(사용)

// Sample.instanceMethod() // 오류 발생



// 가변 인스턴스

var mutable: Sample = Sample()

// mutable.mutableProperty = 200
// mutable.immutableProperty = 200 // 오류 발생
// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다.



// 불변 인스턴스

let immutable: Sample = Sample()

// immutable.mutableProperty = 200 // 오류 발생
// immutable.immutableProperty = 200 // 오류 발생
// 불변 인스턴스는 아무리 가변 프로퍼티라도 인스턴스 생성 후 수정할 수 없습니다.



// 타입 프로퍼티 및 메서드

Sample.typeProperty = 300
// Sample.typeMethod() /// type method



// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없습니다.

// mutable.typeProperty = 400 // 오류 발생
// mutable.typeMethod() // 오류 발생

// immutable.typeProperty = 400 // 오류 발생
// immutable.typeMethod() // 오류 발생



// MARK: - Example: 학생 구조체

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

// Student.selfIntroduce() /// 학생타입입니다.

var yagom: Student = Student()

yagom.name = "yagom"
yagom.class = "스위프트"

// yagom.selfIntroduce() /// 저는 스위프트반 yagom입니다.

let jina: Student = Student()

// jina.name = "jina" // 오류 발생
// jina.class = "오브젝트씨" // 오류 발생
// 불변 인스턴스이므로 프로퍼티 값 변경 불가

// jina.selfIntroduce() /// 저는 Swift반 unknown입니다.



// MARK: - 실습내용

// SmartPhone 이라는 이름의 구조체를 정의하고, 여러 프로퍼티와 메서드를 구현해 봅시다.

// SmartPhone의 인스턴스를 생성하고 프로퍼티 값을 변경해보고 메서드를 호출해봅시다.

struct SmartPhone {
    var mProperty: String = "serialNumber"
    let imProperty: String = "madeCompany"

    static var typeproperty = "typeScript"
    
    static func typemethod() {
        print("스마트폰")
    }
    
    func typemethod() {
        print("\(imProperty) 사의 \(mProperty)")
    }
}

// SmartPhone.typemethod() /// 스마트폰

var iPhone: SmartPhone = SmartPhone()

iPhone.mProperty = "iPhone"
// iPhone.imProperty = "Apple"

// iPhone.typemethod() /// madeCompany 사의 iPhone



let galaxy: SmartPhone = SmartPhone()

// galaxy.mProperty = "Galaxy"
// galaxy.imProperty = "Samsung"

// galaxy.typemethod() /// madeCompany 사의 serialNumber
