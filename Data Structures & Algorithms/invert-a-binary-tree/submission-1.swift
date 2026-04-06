/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        // Iterative DFS
        guard let root = root else { return nil }
        var stack: [TreeNode] = [root]
        
        while !stack.isEmpty {
            let node = stack.removeLast()
            (node.left, node.right) = (node.right, node.left)

            if let left = node.left {
                stack.append(left)
            }

            if let right = node.right {
                stack.append(right)
            }
        }
        return root
    }
}
