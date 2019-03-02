/*
 Given a singly linked list, determine if it is a palindrome.
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        if head?.next == nil { return true }
//        var h = head
//        var arr = [Int]()
//        while h != nil {
//            arr.append(h!.val)
//            h = h!.next
//        }
//        var j = arr.count
//        for i in 0..<j/2 {
//            if arr[i] != arr[j-1] {
//                return false
//            }
//            j -= 1
//        }
//        return true
//    }
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil, head?.next == nil { return true }
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }// slow指针指向链表中间
        
        var cur:ListNode? //用于反转后半段链表
        slow = slow?.next //后半段链表的头结点
        
        while slow != nil {
            let next = slow?.next
            slow?.next = cur
            cur = slow
            slow = next
        }
        
        // 此时cur指针指向反转后的后半段链表头结点
        var h = head
        while cur != nil {
            if cur?.val != h?.val {
                return false
            }
            cur = cur?.next
            h = h?.next
        }
        
        return true
    }
}
