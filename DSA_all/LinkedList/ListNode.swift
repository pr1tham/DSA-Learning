//
//  ListNode.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    var previous: ListNode?
    
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
