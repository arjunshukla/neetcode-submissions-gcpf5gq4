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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var count = 0

        func dfs(_ node: TreeNode?) -> Int? {
            guard let node = node else { return nil }

            if let left = dfs(node.left) {
                return left
            }
            count += 1
            if count == k {
                return node.val
            }

            return dfs(node.right)
        }
        return dfs(root)!
    }
}
