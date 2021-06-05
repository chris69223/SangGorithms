//
//  4949.swift
//  BOJ
//
//  Created by 유저 on 2021/05/27.
//

//2. 좌측 괄호('(', '[')인지 검사한다.
//만약 좌측 괄호라면 스택에 넣어준다.
//
//3. 우측 괄호인지(')', ']') 검사한다.
//만약 우측 괄호라면 스택의 원소와 비교하여 괄호의 균형이 맞는지 검사한다.
//
//4. 입력받은 문자열이 종료 문자 '.'라면 종료를, 아니라면 문제에서 원하는 출력을 수행한다
//
import Foundation

while true{
    let input:String = readLine()!
    var stack:[Character] = []
    var flag = 1
    
    if input == "."{
        break
    }
    for n in input{
        if n == "(" || n == "["{
            stack.append(n)
        }else if n == ")"{
            if stack[stack.startIndex] == "("{
                stack.removeLast()
            }else{
                flag == 0
                break
            }
        }else if n == "]"{
            if stack[stack.startIndex] == "("{
                stack.removeLast()
            }else{
                flag == 0
                break
            }
        }
    }
    if stack.isEmpty && flag == 0{
        print("yes")
    }else{
        print("no")
    }
}

