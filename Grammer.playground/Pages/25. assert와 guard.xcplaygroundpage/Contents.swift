/// assert와 guard
/// Assertion & Guard

// 애플리케이션이 동작 도중에 생성하는 다양한 연산 결괏값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

import Swift

// MARK: Assertion

// assert(_:_:file:line:) 함수를 사용합니다. ( assert(_:_:file:line:) 과 같은 역할을 하지만 실제 배포 환경에서도 동작하는 precondition(_:_:file:line:) 함수도 있습니다. 함께 살펴보세요. )
// assert 함수는 디버깅 모드에서만 동작합니다.
// 배포하는 애플리케이션에서는 제외됩니다.
// 주로 디버깅 중 조건의 검증을 위하여 사용합니다.

var someInt: Int = 0

// 검증 조건에 부합하므로 지나갑니다.
assert(someInt == 0, "someInt != 0")

someInt = 1
// assert(someInt == 0) // 동작 중지, 검증 실패
// assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26


func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
    print("당신의 나이는 \(age!)세입니다.")
}

// functionWithAssert(age: 50) /// 당신의 나이는 50세입니다.
// functionWithAssert(age: -1) /// 동작 중지, 검증 실패
// functionWithAssert(age: nil) /// 동작 중지, 검증 실패



// MARK: - Early Exit

// guard를 사용하여 잘못된 값의 특정한 전달 시 특정 실행구문을 빠르게 종료합니다.
// 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다.
// guard와 else 블럭 내부에는 특정 코드블럭을 종료하는 지시어(return, break 등)이/가 꼭 있어야 합니다.
// 타입 캐스팅, 옵셔널과도 자주 사용됩니다. ( 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다. )

/*
func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    guard unwrappedAge < 100 else {
        return
    }
    
    // if else return 형식과 유사
    /*
    if unwrappedAge < 100 {
    
    else {
        return
    }
    */
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}
*/

/*
var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
/// 1
/// 2
*/

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
    
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
// someFunction(info: ["name": "yagom", "age": 10]) /// yagom: 10



// MARK: - 실습내용

// assert는 디버깅에 강력한 무기입니다. 꼭 잘 활용해보세요.

// guard는 오류가 발생할 여지를 줄여주는 무기가 될 수 있습니다.

// 두 개념 모두 잘 연습해 두세요.
