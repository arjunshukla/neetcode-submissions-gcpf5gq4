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
    func reorderList(_ head: ListNode?) {
        // 1. find the middle
        var slow = head
        var fast = head

        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        } // at end of this loop we have the middle of the linked list

        // 2. Reverse the second half of list
        // 3 -> 4 -> 5 ==> 4 <- 5
        // ^slow* at 3
        // Need to cut 3.next link to 4, but first save it so we don't loose reference to seond half
        var prev: ListNode? = nil 
        var curr = slow?.next // 4
        slow?.next = nil // cuts link of first half to second half

        // Now proceed to reverse the pointers from 4 -> 5 to 4 <- 5
        while curr != nil {
            let next = curr?.next // save 4's reference to 5
            curr?.next = prev // change 4.next to prev node
            prev = curr // prev cjanges from nil to 4
            curr = next // curr changes to 5
        } // at the end of this loop, prev points to 5 (last node) or the new head of the second half

        // 3. Merge the two halves one by one
        var first = head
        var second = prev

        while second != nil {
            let temp1 = first?.next
            let temp2 = second?.next

            first?.next = second
            second?.next = temp1

            first = temp1
            second = temp2
        }
    }
}
