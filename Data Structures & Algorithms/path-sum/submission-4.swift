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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false }
        
        var queue: [(TreeNode, Int)] = [(root, targetSum - root.val)]

        while !queue.isEmpty {
            let (node, currSum) = queue.removeFirst()

            if node.left == nil && node.right == nil && currSum == 0 {
                return true
            }

            if let left = node.left {
                queue.append((left, currSum - left.val))
            }

            if let right = node.right {
                queue.append((right, currSum - right.val))
            }
        }
        return false
    }
}
