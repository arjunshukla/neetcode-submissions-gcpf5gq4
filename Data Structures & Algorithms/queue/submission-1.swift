class Deque {
    private var queue: [Int] = []

    func isEmpty() -> Bool {
        queue.isEmpty
    }

    func append(_ value: Int) {
        queue.append(value)
    }

    func appendleft(_ value: Int) {
        queue.insert(value, at: 0)
    }

    func pop() -> Int {
        queue.popLast() ?? -1
    }

    func popleft() -> Int {
        guard !queue.isEmpty else { return -1 }
        return queue.removeFirst()
    }
}
