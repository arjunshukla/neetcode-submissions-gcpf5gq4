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
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return TreeNode(val) }

        var curr: TreeNode? = root

        while let node = curr {
            if val > node.val { // go right
                if node.right == nil { // insert here
                    node.right = TreeNode(val)
                    break
                }
                curr = node.right
            } else { // go left
                if node.left == nil {
                    node.left = TreeNode(val)
                    break
                }
                curr = node.left
            }
        }
        return root
    }
}
