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

        let remaining = targetSum - root.val

        return hasPathSum(root.left, remaining) ||
        hasPathSum(root.right, remaining) ||
        (remaining == 0 && root.left == nil && root.right == nil)
    }
}
