class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var dict = [0: 0, 1: 0]

        for s in students {
            dict[s] = dict[s]! + 1
        }

        for s in sandwiches {
            if let val = dict[s] {
                if val == 0 {
                    break
                }
                dict[s] = val - 1
            }
        }

        var result = 0
        for key in dict.keys {
            result += dict[key]!
        }

        return result

    }
}