class MinStack {
    private var stack: [Int] = []
    private var minStack: [Int] = []

    init() {}

    func push(_ val: Int) {
        stack.append(val)
        let newMin = min(val, minStack.last ?? val)
        minStack.append(newMin)
    }

    func pop() {
        stack.popLast()
        minStack.popLast()
    }

    func top() -> Int {
        stack.last!
    }

    func getMin() -> Int {
        minStack.last!
    }
}
