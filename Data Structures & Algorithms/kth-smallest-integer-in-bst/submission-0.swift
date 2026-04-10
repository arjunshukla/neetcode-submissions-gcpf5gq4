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
        var res = 0
        var arr: [Int] = []

        func dfs(_ root: TreeNode?) { // Inorder LNR
            guard let root = root else { return }
            dfs(root.left)
            arr.append(root.val)
            dfs(root.right)
        }
        dfs(root)
        // arr.sorted()
        return arr[k - 1]
    }
}
