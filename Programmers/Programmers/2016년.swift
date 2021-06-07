//
//  main.swift
//  Programmers
//
//  Created by 유저 on 2021/06/05.
//

//import Foundation
//
//func solution(_ n:Int64) -> [Int] {
//    //어캐 푸냐 생각하면?
//    var t = String(n)
//    let arr:[Character] = []
//    for i in t{
//        arr.append[i]
//    }
//    // let arr:[Int] = []
//    return Int64(arr.reversed())
//}
//func solution(_ n:Int) -> String {
//    var str = ""
//    for i in 1...n {
//      if i%2 == 0{
//          str + "박"
//      }else{
//          str + "수"
//            }
//    }
//    return str
//}
//print(solution(4))

import Foundation

func solution(_ s:String) -> Bool
{
    var pCount = 0
    var yCount = 0
    var ans:Bool = false
    var str = s.uppercased()
    for i in str{
        if i == P{
            pcount += 1
        }else if i == Y{
            yCount += 1
        }
    }
    return pCount == yCount ? true : false
}

print(solution("ppyyPY"))
