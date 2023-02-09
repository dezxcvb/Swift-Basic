/// 변수와 상수

import Swift

// 상수, 변수의 선언
// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수의 선언
// let 이름 : 타입 = 값

// 변수의 선언
// let 이름 : 타입 = 값

// 값의 타입이 명확하다면 타입은 생략 가능
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다." // 오류 발생

// 상수 선언 후에 나중에 값 할당하기

// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류 발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

// 할당하지 않은/초기화되지 않은 상태에서는 사용할 수 없습니다., 오류 발생
// print(nickName)

nickName = "yagom"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없어요
nickName = "야곰"



/* MARK: - 실습 내용 */

// 생각해보기

// 다음과 같은 경우에 각 값은 상수와 변수 중 어느 것으로 선언하는 것이 더 좋을지 생각해 봅시다.

/*
OOO name = "yagom"

OOO numberToAdd = 5

OOO pi = 3.141592

OOO maxItemCount = 1000
*/

let name = "yagom"
var numberToAdd = 5
let pi = 3.141592
var maxItemCount = 1000
