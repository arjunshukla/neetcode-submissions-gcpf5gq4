class DynamicArray {
    var size = 0
    var capacity: Int
    var arr: [Int]

    init(_ capacity: Int) {
        self.capacity = capacity
        self.arr = Array(repeating: 0, count: capacity)
    }

    func get(_ i: Int) -> Int {
        arr[i]
    }

    func set(_ i: Int, _ n: Int) {
        arr[i] = n
    }

    func pushback(_ n: Int) {
        if size == capacity {
            resize()
        }

        arr[size] = n
        size += 1
    }

    func popback() -> Int {
        if size > 0 {
            size -= 1
        }

        return arr[size]
    }

    private func resize() {
        capacity *= 2
        var newArr = Array(repeating: 0, count: capacity)

        for i in 0..<size {
            newArr[i] = arr[i]
        }

        arr = newArr
    }

    func getSize() -> Int {
        size
    }

    func getCapacity() -> Int {
        capacity
    }
}
