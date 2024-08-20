//
//  LevelOrderTraversal.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation
// 102. Binary Tree Level Order Traversal
// https://leetcode.com/problems/binary-tree-level-order-traversal/description/

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return []}
    var queue = [root]
    var ans = [[Int]]()
    while !queue.isEmpty {
        var level = [Int]()
        let levelSize = queue.count
        for _ in 0..<levelSize {
            let node = queue.removeFirst()
            level.append(node.val)
            
            if let leftNode = node.left {
                queue.append(leftNode)
            }
            
            if let rightNode = node.right {
                queue.append(rightNode)
            }
        }
        ans.append(level)
    }
    return ans
}



