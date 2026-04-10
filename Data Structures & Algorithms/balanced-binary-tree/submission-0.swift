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
    func isBalanced(_ root: TreeNode?) -> Bool {
        func dfs(_ root: TreeNode?) -> (Bool, Int) {
            guard let root = root else { return (true, 0)}

            let left = dfs(root.left)
            let right = dfs(root.right)

            let isBalanced = left.0 && right.0 && abs(left.1 - right.1) <= 1

            return (isBalanced, 1 + max(left.1, right.1))
        }

        return dfs(root).0
    }
}
