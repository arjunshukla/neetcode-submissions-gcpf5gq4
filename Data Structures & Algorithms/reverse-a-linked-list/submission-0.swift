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
    func reverseList(_ head: ListNode?) -> ListNode? {
        // guard var head = head else { return head }
// [0, 1, 2, 3]
        var prev: ListNode? = nil
        var curr = head // 0 -> 1

        while curr != nil { // 0 | 1
            let temp = curr?.next // 1
            curr?.next = prev // nil
            prev = curr // prev = 0 | 1
            curr = temp // curr = 1
        }

        return prev
    }
}
