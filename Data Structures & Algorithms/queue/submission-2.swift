class Node {
    var prev: Node?
    var val: Int
    var next: Node?

    init(_ val: Int) {
        self.val = val
    }
}

class Deque {
    private let head: Node
    private let tail: Node
    private var size: Int

    init() {
        head = Node(0)
        tail = Node(0)

        head.next = tail
        tail.prev = head
        size = 0
    }

    func isEmpty() -> Bool { size == 0 }

    func append(_ value: Int) {
        let node = Node(value)
        let curr = tail.prev
        node.prev = curr
        node.next = tail

        curr?.next = node
        tail.prev = node
        size += 1
    }

    func appendleft(_ value: Int) {
        let curr = head.next

        let node = Node(value)        
        node.next = curr
        node.prev = head

        head.next = node
        curr?.prev = node
        size += 1
    }

    func pop() -> Int {
        // remove from back
        guard size > 0 else { return -1 }
        var curr = tail.prev
        curr?.prev?.next = tail
        tail.prev = curr?.prev
        size -= 1
        return curr!.val
    }

    func popleft() -> Int {
        // remove from front
        guard size > 0 else { return -1 }
        var curr = head.next
        head.next = curr?.next
        curr?.next?.prev = head
        size -= 1
        return curr!.val
    }
}
