/// 클래스
/// Class(es)

import Swift

// MARK: - 정의

/*
class 이름 {
    구현부
}
*/

// MARK: 프로퍼티 및 메서드

class Sample {
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
    
    // 재정의 불가 타입 메서드
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드
    class func classMethod() {
        print("type method - class")
    }
}

// MARK: 클래스 사용(활용)

// Sample.instanceMethod() // 오류 발생



// 가변 인스턴스

var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
// mutableReference.immutableProperty = 200 // 오류 발생
// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다.


// 불변 인스턴스

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200
// immutableReference.immutableProperty = 200 // 오류 발생
// 불변 인스턴스는 아무리 가변 프로퍼티라도 인스턴스 생성 후 수정할 수 없습니다.


// immutableReference = mutableReference // 오류 발생 - MARK: 참조 정보를 변경할 수는 없습니다.



// 타입 프로퍼티 및 메서드

Sample.typeProperty = 300
// Sample.typeMethod() /// type method - static
// Sample.classMethod() /// type method - class



// 인스턴스에서는 타입 프로퍼티나 타입 메서드를 사용할 수 없습니다.

// mutableReference.typeProperty = 400 // 오류 발생
// mutableReference.typeMethod() // 오류 발생

// immutableReference.typeProperty = 400 // 오류 발생
// immutableReference.typeMethod() // 오류 발생



// MARK: - Example: 학생 클래스

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
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

jina.name = "jina"
jina.class = "오브젝트씨"

// jina.selfIntroduce() /// 저는 오브젝트씨반 jina입니다.



// MARK: - 실습내용

// SmartPhone 이라는 이름의 클래스를 정의하고, 여러 프로퍼티와 메서드를 구현해 봅시다.

// SmartPhone의 인스턴스를 생성하고 프로퍼티 값을 변경해보고 메서드를 호출해봅시다.

class SmartPhones {
    var mProperty: String = "serialNumber"
    let imProperty: String = "madeCompany"
    
    static var typeproperty = "typeScript"
    
    class func method() {
        print("스마트폰")
    }
    
    /*
    static func typestaticmethod() {
        print("스마트폰")
    }
    */
    
    func method() {
        print("\(imProperty) 사의 \(mProperty)")
    }
}

// SmartPhones

var iPhones: SmartPhones = SmartPhones()
    
iPhones.mProperty = "iPhone"
// iPhones.imProperty = "Apple"

// iPhones.method() /// madeCompany 사의 iPhone

let galaxys: SmartPhones = SmartPhones()

galaxys.mProperty = "Galaxy"
// galaxys.imProperty = "Samsung"

// galaxys.method() /// madeCompany 사의 Galaxy



SmartPhones.typeproperty = "javaScript"
// SmartPhones.method() /// 스마트폰

// iPhones.typeproperty = "" // 오류 발생
// galaxys.typeproperty = "" // 오류 발생
