//
//  1926.swift
//  BOJ
//
//  Created by 유저 on 2021/06/03.
//

import Foundation


let num = readLine()!.split(separator: " ").map{Int($0)!}
let N = num[0]
let M = num[1]
//행렬 생성
var draw = [[Int]]()
var cnt = 0
var res = [Int]()

for _ in 0..<N {
    let q = readLine()!.split(separator: " ").map{Int(String($0))!}
    draw.append(q)
}

func dxdy(_ x:Int, _ y:Int) -> Bool{
    if x<0 || y<0 || x >= N || y >= M {
        return false
    }
    if draw[x][y] == 1 {
        draw[x][y] = 2
        cnt += 1
        dxdy(x+1, y)
        dxdy(x-1, y)
        dxdy(x, y+1)
        dxdy(x, y-1)
        return true
    }
    return false
}

for i in 0..<N {
    for j in 0..<M {
        cnt=0
        if dxdy(i, j) {
            res.append(cnt)
        }
    }
}
print(res.count)
print(res.max()!)
