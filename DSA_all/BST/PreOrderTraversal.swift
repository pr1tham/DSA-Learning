//
//  PreOrderTraversal.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func preOrderTraversal(_ root: TreeNode?) -> [Int]{
    var ans = [Int]()
    guard let root = root else { return ans}
    ans.append(root.val)

    ans.append(contentsOf: preOrderTraversal(root.left)) // Traverse the left subtree
    ans.append(contentsOf: preOrderTraversal(root.right)) // Traverse the right subtree
    return ans
}

func preOrderTraversalIterative(_ root: TreeNode?) -> [Int]{
    var ans = [Int]()
    guard let root = root else { return ans}
    var stack = [root]
    
    while !stack.isEmpty {
        let node = stack.removeLast()
        ans.append(node.val)
        if let right = node.right {
            stack.append(right)
        }
        if let left = node.left {
            stack.append(left)
        }
    }
    return ans
}
