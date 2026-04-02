class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var dict = [0:0, 1:0]

        for s in students {
            dict[s]! += 1
        }

        for s in sandwiches {
            if dict[s]! == 0 {
                break
            }
            dict[s]! -= 1
        }

        return dict[0]! + dict[1]!
    }
}