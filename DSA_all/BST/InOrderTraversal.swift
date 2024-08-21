//
//  InOrderTraversal.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func InOrderTraversal(_ root: TreeNode?) -> [Int]{
    var ans = [Int]()
    guard let root = root else { return ans}
    ans.append(contentsOf: preOrderTraversal(root.left)) // Traverse the left subtree
    ans.append(root.val)
    ans.append(contentsOf: preOrderTraversal(root.right)) // Traverse the right subtree
    return ans
}

func InOrderTraversalIterative(_ root: TreeNode?) -> [Int]{
    // no guard return needed as we check current
    var ans = [Int]()
    var stack = [TreeNode]()
    var current = root
    while current != nil || !stack.isEmpty {
        // loop till you get left most
        while let node = current {
            stack.append(node)
            current = node.left
        }
        // get th left most node from stack
        current = stack.removeLast()
        ans.append(current!.val)
        // set current to right
        current = current?.right
    }
    return ans
}
