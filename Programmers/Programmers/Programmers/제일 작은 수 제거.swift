//
//  제일 작은 수 제거.swift
//  Programmers
//
//  Created by 유저 on 2021/06/04.
//https://min-i0212.tistory.com/17 인덱스값 찾아서 삭제 참고
import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var minArr = arr
    var min = arr.min()

    if minArr.count == 1 {
        return [-1]
    }else{
            minArr.remove(at: arr.firstIndex(of: min!)!)
        }
        return minArr
    }
}
print(solution([10, 1, 2 , 3, 4, 5]))


//   var ans = arr
//   ans.remove(at: ans.firstIndex(of:arr.min()!)!)
//   return ans.isEmpty ? [-1] : ans
