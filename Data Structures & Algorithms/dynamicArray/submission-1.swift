protocol DynamicArrayProtocol {
    associatedtype Element

    init(_ capacity: Int) throws

    func get(_ i: Int) throws -> Element
    func set(_ i: Int, value: Element) throws

    mutating func pushback(_ value: Element)
    mutating func popback() throws -> Element

    func getSize() -> Int
    func getCapacity() -> Int
}

enum DynamicArrayError: Error {
    case indexOutOfBounds
    case emptyArray
    case invalidCapacity
}

final class DynamicArray<T>: DynamicArrayProtocol {
    typealias Element = T
    private var size = 0
    private var capacity: Int
    private var buffer: UnsafeMutablePointer<T>

    init(_ capacity: Int) throws {
        guard capacity > 0 else {
            throw DynamicArrayError.invalidCapacity
        }

        self.capacity = capacity
        self.buffer = UnsafeMutablePointer<T>.allocate(capacity: capacity)
    }

    deinit {
        buffer.deinitialize(count: size)
        buffer.deallocate()
    }

    func get(_ i: Int) throws -> T {
        guard i >= 0 && i < size else {
            throw DynamicArrayError.indexOutOfBounds
        }
        return buffer[i]
    }

    func set(_ i: Int, value: T) throws {
        guard i >= 0 && i < size else {
            throw DynamicArrayError.indexOutOfBounds
        }

        buffer[i] = value
    }

    func pushback(_ value: T) {
        if size == capacity {
            resize()
        }

        buffer[size] = value
        size += 1
    }

    func popback() throws -> T {
        guard size > 0 else {
            throw DynamicArrayError.emptyArray
        }

        size -= 1
        return buffer[size]
    }

    private func resize() {
        let newCapacity = capacity * 2

        let newBuffer = UnsafeMutablePointer<T>.allocate(capacity: newCapacity)
        newBuffer.initialize(from: buffer, count: size)

        // Cleanup
        buffer.deinitialize(count: size)
        buffer.deallocate()

        buffer = newBuffer
        capacity = newCapacity
    }

    func getSize() -> Int {
        size
    }

    func getCapacity() -> Int {
        capacity
    }
}
