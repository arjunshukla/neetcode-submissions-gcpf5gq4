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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var res: [[Int]] = []
        var queue: [TreeNode] = [root]
        var index = 0

        while index < queue.count {
            var temp: [Int] = []
            let size = queue.count - index
            for _ in 0..<size {
                let node = queue[index]
                index += 1 // to simulate removal
                temp.append(node.val)
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            res.append(temp)
        }
        return res
    }
}
