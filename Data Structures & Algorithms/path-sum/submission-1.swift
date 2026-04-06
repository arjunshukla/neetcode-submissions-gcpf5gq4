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
        func dfs(_ node: TreeNode?, _ currSum: Int) -> Bool {
            guard let node = node else { return false }

            let newSum = currSum + node.val

            if node.left == nil && node.right == nil {
                return newSum == targetSum
            }
            return dfs(node.left, newSum) || dfs(node.right, newSum)
        }

        return dfs(root, 0)
    }
}
