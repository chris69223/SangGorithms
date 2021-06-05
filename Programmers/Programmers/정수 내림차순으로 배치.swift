//
//  정수 내림차순으로 배치.swift
//  Programmers
//
//  Created by 유저 on 2021/06/04.
/*
 풀이법 : 일단 정수 받은 것을 각각 문자열로 바꾸고 문자열을 각각 인트형 배열로 넣고 sorted해서
 다시 join해서 출력해주기?
 //이럴 필요 없고 그냥 바로 String에서 정렬이 된다?
 */
 
import Foundation

func solution(_ n:Int64) -> Int64 {
    let t = String(n)
    let arr = String(t.sorted(by: >)) // 내림차순 정렬 //오름차순은 <이거나 걍 암것도 안쓰면 됨 sorted()
    
    return Int64(arr)!
}
print(solution(1293842))
