//
//  PostOrderTraversal.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func PostOrderTraversal(_ root: TreeNode?) -> [Int]{
    var ans = [Int]()
    guard let root = root else { return ans}
    ans.append(contentsOf: preOrderTraversal(root.left)) // Traverse the left subtree
    ans.append(contentsOf: preOrderTraversal(root.right)) // Traverse the right subtree
    // visit the node
    ans.append(root.val)
    return ans
}

func PostOrderTraversalIterative(_ root: TreeNode?) -> [Int] {
    // no guard return needed as we check current
    var ans = [Int]()
    guard let root = root else { return ans}
    var stack1 = [TreeNode]()
    var stack2 = [TreeNode]()
    stack1.append(root)
    while !stack1.isEmpty {
        // pop from stack
        let node = stack1.removeLast()
        // add node to stack2
        stack2.append(node)
        // add left to stack1
        if let left = node.left {
            stack1.append(left)
        }
        // add right to stack1
        if let right = node.right {
            stack1.append(right)
        }
    }
    
    while !stack2.isEmpty {
        let node = stack2.removeLast()
        ans.append(node.val)
    }
    return ans
}
