//
//  1406.swift // 연결리스트 구현
//  YoungSang
//
//  Created by 유저 on 2021/04/22.
//

import Foundation
// 제너릭 관련해서 공부하고 정리해보기!!! 확실하게 아는게 중요하다!!
// 노드 구현
// 제너릭 형식으로 구현해주면 값 형식에 상관없이 데이터를 설정 가능!
class Node<T>{
    var value: T
    var next: Node?
    
    init(value: T, next: Node? = nil){ // 뒤에 아무노드도 없으면 nill 저장
        self.value = value
        self.next = next
    }
}


// 기본 구조
//Equatable 프로토콜 채택해주면 == 비교 가능
class LinkedList<T: Equatable>{
    var head: Node<T>?
    var tail: Node<T>?

    init(head: Node<T>? = nil) {
        self.head = head
        self.tail = head
    }
    // node가 head랑 같지 않으면 0 반환?
    func size() -> Int {
        guard var node = self.head else{
            return 0
        }
        var count = 0
        while node.next != nil{
            count += 1
            node = node.next!
        }
        return count
    }
    func findNode(at index: Int) -> Node<T> {
        <#function body#>
    }
    // node.next가 nil일 때까지 순회하면서 가장 마지막 노드를 찾아준다
    // 가장 마지막 노드는 연결 할 다음 노드가 없기 때문에
    func append(value: T?){
        if head == nil {
            head = Node(value: value)
            return
        }
        var node = head
        while node?.next != nil{
            node = node?.next
        }
        node?.next = Node(value: value)
    }
    
    func insert(value: T?, at index: Int){
        <#function body#>
    }
    
    func remove
    
    func contains
    
    func firstIndex
}

/*
 연결리스트의 기능들
* size() 연결리스트의 크기를 구한다.

* findNode(at:) 특정 위치에 있는 노드를 반환한다. (찾고자 하는 위치가 리스트의 크기보다 클 경우 nil 반환)

*append(_:) 연결리스트의 맨 뒤에 새로운 노드를 추가한다.

* insert(_: at:) 특정 위치에 새로운 노드를 삽입한다. (삽입하고자 하는 위치가 리스트의 크기보다 클 경우 맨 뒤에 추가)

* remove(at:) 특정 위치에 있는 노드를 삭제한다.(삭제하고자 하는 위치가 리스트의 크기보다 클 경우 아무 동작하지 않음)

* contains(_:) 특정 값을 가지는 노드를 포함하고 있는지 탐색하여 Bool 값을 반환한다.

* firstIndex(of:) 특정 값을 가지는 노드의 인덱스 Int? 값을 반환한다.
*/
