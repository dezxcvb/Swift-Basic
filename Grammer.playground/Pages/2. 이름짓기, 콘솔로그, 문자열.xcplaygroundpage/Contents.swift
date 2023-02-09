/// 콘솔로그와 문자열 보간법

import Swift

let age: Int = 10

"안녕하세요! 저는 \(age)살입니다"
// == "안녕하세요! 저는 10살입니다"

"안녕하세요! 저는 \(age + 5)살입니다"
// == "안녕하세요! 저는 15살입니다"

// print("안녕하세요! 저는 \(age + 5)살입니다")

// print("\n####################\n")

class Person {
    var name: String = "yagom"
    var age: Int = 10
}

let yagom: Person = Person()

// print(yagom)

// print("\n####################\n")

// dump(yagom)



/* MARK: - 실습 내용 */

// name 상수를 활용하여 "안녕하세요! 저는 야곰입니다" 라는 문구가 나타내도록 콘솔로그를 출력해보세요.

let name: String = "안녕하세요! 저는 야곰입니다"
// print(name)
// dump(name)
