// O(n) S, T
class Solution {

    /*
    Input: ops = ["1","2","+","C","5","D"]
    Output: 18
    */
    func calPoints(_ operations: [String]) -> Int {
        var sum: [Int] = []
        var total = 0

        for op in operations { // 1 | 2 | + | C | 5 | D
            switch op {
                case "D":
                    if let last = sum.last {
                        sum.append(last * 2) // sum = [1, 2, 5, 10]
                        total += sum.last! // total = 0 + 10 = 10
                    }
                case "+": // +
                    if let last = sum.last,
                    sum.count > 1 {
                    let secondLast = sum[sum.count - 2]
                    sum.append(last + secondLast) // sum = [1, 2, 3]
                    total += sum.last! // total = 3
                }
                case "C": // C
                    if !sum.isEmpty {
                        let last = sum.removeLast() // sum = [1, 2]
                        total -= last // total = 3-3 = 0
                    }
                default: // 1 | 2 | 5
                    sum.append(Int(op) ?? 0) // sum = [1, 2, 5]
                    total += Int(op) ?? 0 // total = 1 | 3 | 8
            }
        }

        return total
    }
}
