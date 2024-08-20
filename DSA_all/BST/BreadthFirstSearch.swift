//
//  BreadthFirstSearch.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func breadthFirstSearch(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return []}
    var queue = [root]
    var ans: [Int] = .init()
    while !queue.isEmpty {
        let node = queue.removeFirst()
        ans.append(node.val)
        if let left = node.left {
            queue.append(left)
        }
        if let right = node.right {
            queue.append(right)
        }
    }
    return ans
}
