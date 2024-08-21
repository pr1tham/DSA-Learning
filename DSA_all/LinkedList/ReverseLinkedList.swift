//
//  ReverseLinkedList.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func ReverseLinkedList(head: ListNode?) -> ListNode? {
    var previous: ListNode? = nil
    var current = head
    // previous starts as empty
    while current != nil {
        let next = current?.next
        current?.next = previous
        previous = current
        current = next
    }
    return previous
}
