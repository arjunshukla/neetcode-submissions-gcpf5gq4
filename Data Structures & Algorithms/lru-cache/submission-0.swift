class LRUCache {
    class Node {
        var prev: Node?
        var key: Int
        var val: Int
        var next: Node?

        init(_ key: Int, _ val: Int) {
            self.key = key
            self.val = val
        }
    }

    var head = Node(0, 0)
    var tail = Node(0, 0)
    var size = 0
    var capacity: Int
    var map: [Int: Node] = [:]

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        if let node = map[key] {
            remove(node)
            insertAtHead(node)
            return node.val
        }

        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = map[key] { // update existing
            node.val = value
            remove(node)
            insertAtHead(node)
            return
        }

        if size < capacity { // can insert at head
            insertAtHead(Node(key, value))
        } else {
            remove(tail.prev!) // remove LRU node
            insertAtHead(Node(key, value))
        }
    }

    private func insertAtHead(_ node: Node) {
        size += 1
        let curr = head.next
        head.next = node
        node.next = curr
        node.prev = head
        curr?.prev = node
        map[node.key] = node
    }

    private func remove(_ node: Node) {
        let prev = node.prev
        let next = node.next
        prev?.next = next
        next?.prev = prev
        map.removeValue(forKey: node.key)
        size -= 1
    }

    // private func moveToHead(_ node: Node) {
    //     let temp = head.next
    //     head.next = node
    //     node.prev = head
    //     node.next = temp
    //     temp?.prev = node
    // }
}
