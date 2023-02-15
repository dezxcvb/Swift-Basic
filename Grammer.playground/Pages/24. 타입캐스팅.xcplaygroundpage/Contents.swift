/// 타입캐스팅
/// Type Casting

// 스위프트의 타입캐스팅은 인스턴스의 타입을 확인하는 용도 또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인하는 용도로 사용합니다.
// is, as를 사용하여 타입을 확인합니다.

import Swift

// 타입캐스팅이 아닌 예 (인스턴스를 이니셜라이저를 통해 새로 생성하는 것)

/*
let someInt: Int = 100
let someDouble: Double = Double(someInt)
*/

// MARK: - 타입 캐스팅을 위한 클래스 정의

class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다.")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다.")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}

var yagom: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()



// 타입 확인

// 연산자 is를 사용하여 타입을 확인합니다.

var result: Bool

result = yagom is Person /// true
result = yagom is Student /// false
result = yagom is UniversityStudent /// false

result = hana is Person /// true
result = hana is Student /// true
result = hana is UniversityStudent /// false

result = jason is Person /// true
result = jason is Student /// true
result = jason is UniversityStudent /// true

/*
if yagom is UniversityStudent {
    print("yagom은 대학생입니다.")
} else if yagom is Student {
    print("yagom은 학생입니다.")
} else if yagom is Person {
    print("yagom은 사람입니다.")
} /// yagom은 사람입니다.

switch jason {
case is Person:
    print("jason은 사람입니다.")
case is Student:
    print("jason은 학생입니다.")
case is UniversityStudent:
    print("jason은 대학생입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} /// jason은 사람입니다.

switch jason {
case is UniversityStudent:
    print("jason은 대학생입니다.")
case is Student:
    print("jason은 학생입니다.")
case is Person:
    print("jason은 사람입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} /// jason은 대학생입니다.
*/



// MARK: -  업 캐스팅

// as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입정보를 전환해줍니다.
// Any 혹은 AnyObject로도 타입정보를 변환할 수 있습니다.
// 암시적으로 처리되므로 생략해도 무방합니다.

var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
// var jina: UniversityStudent = Person() as UniversityStudent // 오류 발생
var jina: Any = Person()
// var jina: Any = Person() as Any // as Any 생략가능


// MARK: - 다운 캐스팅

// as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 인스턴스의 타입정보를 전환해줍니다.

// 조건부 다운 캐스팅

// as?

var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil

// 강제 다운 캐스팅

// as!

var forcedCasted: Student

optionalCasted = mike as! UniversityStudent
// optionalCasted = jenny as! UniversityStudent // 오류 발생
// optionalCasted = jina as! UniversityStudent // 오류 발생
// optionalCasted = jina as! Student // 오류 발생



// MARK: - 활용

// switch 구문 보다는

func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

// doSomethingWithSwitch(someone: mike as Person) /// 멤버쉽 트레이닝을 갑니다 신남!
// doSomethingWithSwitch(someone: mike) /// 멤버쉽 트레이닝을 갑니다 신남!
// doSomethingWithSwitch(someone: jenny) /// 등교를 합니다.
// doSomethingWithSwitch(someone: yagom) /// 숨을 쉽니다.

// if let 구문이 더 적합

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

// doSomething(someone: mike as Person) /// 멤버쉽 트레이닝을 갑니다 신남!
// doSomething(someone: mike) /// 멤버쉽 트레이닝을 갑니다 신남!
// doSomething(someone: jenny) /// 등교를 합니다.
// doSomething(someone: yagom) /// 숨을 쉽니다.



// MARK: - 실습내용

// 타입에 굉장히 엄격한 스위프트에서 타입캐스팅은 굉장히 중요한 개념입니다. 꼭 잘 익혀두세요.

/*
TIP.

타입캐스팅 전의 강의들에서 print함수를 사용하여 옵셔널 인스턴스를 출력하고 했을 때 경고(warning)가 출력되었던 것을 보셨나요? 타입캐스팅을 활용하여 말끔히 해결해 줄 수도 있습니다.
*/

/*
let someInstance:Int? = 100
// print(someInstance as Any) /// Optional(100)
*/

// 이런식으로 말이죠. 이전 강의를 복습하는 차원에서 경고를 모두 없애보는 것은 어떨까요?

// 더불어 팁을 드리자면, nil 병합 연산자로도 그것을 해결해 볼 수 있습니다. 두 방법 모두 고민해 보세요:)
