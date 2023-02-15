/// 클로저 기본
/// Closure 기본

import Swift

// 코드의 블럭
// 일급 시민(first-citizen)
// 변수, 상수 등으로 저장, 전달인자로 전달이 가능
// 함수 : 이름이 있는 클로저

// MARK: - 정의

/*
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
*/

// 매개변수가 필요 없는 경우

/*
{ () -> 반환타입 in
    실행 코드
}
*/

// 반환타입이 없는 경우

/*
{ (매개변수 목록) -> Void in
    실행 코드
}
*/

// 함수의 사용

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)

print(sumResult) /// 3



// 클로저의 사용

var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum(1, 2)
// print(sumResult) /// 3

// 함수는 클로저의 일종이므로
// sum 변수에는 당연히 함수도 할당할 수 있습니다.

sum = sumFunction(a:b:)

sumResult = sum(1, 2)
// print(sumResult) /// 3



// MARK: - 함수의 전달인자로서의 클로저

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

// print(calculated) /// 60

calculated = calculate(a: 50, b: 10, method: substract)

// print(calculated) /// 40

calculated = calculate(a: 50, b: 10, method: divide)

// print(calculated) /// 5

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

// print(calculated) /// 500

// 클로저의 타입은 (Type, Type) -> (Type) 이다.



// MARK: - 실습내용

// 스위프트의 클로저는 굉장히 중요합니다. 눈과 손에 잘 익혀두시기 바랍니다.
