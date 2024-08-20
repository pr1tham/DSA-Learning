//
//  RightSIdeView.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation
// 199. Binary Tree Right Side View
// https://leetcode.com/problems/binary-tree-right-side-view/description/

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return []}
    var ans = [Int]()
    var queue = [root]
    while !queue.isEmpty {
        let levelSize = queue.count
        var level = [Int]()
        for _ in 0..<levelSize {
            let node = queue.removeFirst()
            level.append(node.val)
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
        ans.append(level.removeLast())
    }
    return ans
}
