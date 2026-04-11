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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var res: [Int] = []
        var queue: [TreeNode] = [root]
        var index = 0

        while index < queue.count {
            let size = queue.count - index
            var rightMost: TreeNode? = nil
            for _ in 0..<size {
                let node = queue[index]
                index += 1
                rightMost = node // last node in this level
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            res.append(rightMost!.val)
        }
        return res
    }
}
