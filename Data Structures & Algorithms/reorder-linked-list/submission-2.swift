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
        var curr = head
        var arr: [ListNode] = []

        while curr != nil {
            arr.append(curr!)
            curr = curr?.next
        }

        var L = 0
        var R = arr.count - 1

        while L < R {
            arr[L].next = arr[R]
            L += 1
            if L == R { break }
            arr[R].next = arr[L]
            R -= 1
        }
        arr[L].next = nil
    }
}
