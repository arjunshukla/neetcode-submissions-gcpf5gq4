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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2
        let dummy = ListNode(0)
        var node = dummy 

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                node.next = l1
                l1 = l1?.next
            } else {
                node.next = l2
                l2 = l2?.next
            }

            node = node.next!
        }

        // Check if any elements remain in l1 or l2
        node.next = l1 ?? l2

        return dummy.next
    }
}
