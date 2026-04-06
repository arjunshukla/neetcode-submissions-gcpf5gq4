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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var depth = 0 // for root
        var queue: [TreeNode] = [root]

        while !queue.isEmpty {
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
            
                if let left = node.left { 
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }

            depth += 1
            
        }

        return depth
    }
}
