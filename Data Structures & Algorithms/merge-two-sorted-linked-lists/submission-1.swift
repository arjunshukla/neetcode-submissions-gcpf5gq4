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
        let dummy = ListNode(0)
        var node = dummy

        var l1 = list1
        var l2 = list2

        while let n1 = l1, let n2 = l2 {
            if n1.val <= n2.val {
                node.next = n1
                l1 = l1?.next
            } else {
                node.next = n2
                l2 = l2?.next
            }

            node = node.next!
        }

        // attach remaining nodes from l2 or l2
        node.next = l1 ?? l2

        return dummy.next
    }
}
