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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res: [Int] = []
        
        func inorder(_ node: TreeNode?) {
            guard let node = node else { return }
            inorder(node.left)
            res.append(node.val)
            inorder(node.right)
        }

        inorder(root)
        return res
    }
}
