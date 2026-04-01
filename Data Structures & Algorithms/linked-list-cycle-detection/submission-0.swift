/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var visited = Set<ObjectIdentifier>()
        var curr = head

        while curr != nil {
            // Check visited flag in map
            let nodeId = ObjectIdentifier(curr!)
            if visited.contains(nodeId) {
                return true
            }
            
            visited.insert(nodeId)
            curr = curr?.next
        }

        return false
    }
}
