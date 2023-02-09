/// 반복문

import Swift

var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

// MARK: - for-in

/*
for item in items {
    code
}
*/

for integer in integers {
    // print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다.
for (name, age) in people {
    // print("\(name): \(age)")
}



// MARK: - while

// while condition

/*
while condition {
    code
}
*/

while integers.count > 1 {
    integers.removeLast()
}



// MARK: - repeat-while

/*
repeat {
    code
} while condition
*/



// MARK: - 실습내용

// 자유롭게 반복문을 활용해 봅시다.

// 이전에 배웠던 컬렉션 타입을 다양하게 활용해 보아도 좋습니다.
