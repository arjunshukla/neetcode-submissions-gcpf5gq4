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
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard let root = root else { return nil }

        if key < root.val {
            root.left = deleteNode(root.left, key)
        } else if key > root.val {
            root.right = deleteNode(root.right, key)
        } else { // Found the node to delete
            // Case 1: no left child
            if root.left == nil {
                return root.right
            }

            // Case 2: no right child
            if root.right == nil {
                return root.left
            }

            // Case 3: two children
            let successor = findMin(root.right!)
            root.val = successor.val
            root.right = deleteNode(root.right, successor.val)
        }
        return root
    }

    private func findMin(_ node: TreeNode) -> TreeNode {
        var curr = node
        while let left = curr.left {
            curr = left
        }

        return curr
    }
}
