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
/*
    Input: head = [0,1,2,3]
    Output: [3,2,1,0]

    Head -> 0 -> 1 -> 2 -> 3 -> nil
    prev   cur  temp
    nil <- 0 <- 1 <- 2 <- 3 <- Head
*/
    func reverseList(_ head: ListNode?) -> ListNode? {
        // Traverse the list
        var curr = head
        var prev: ListNode? = nil

        while curr != nil {
            var temp = curr?.next
            curr?.next = prev
            prev = curr
            curr = temp
        }        

        return prev
    }
}
