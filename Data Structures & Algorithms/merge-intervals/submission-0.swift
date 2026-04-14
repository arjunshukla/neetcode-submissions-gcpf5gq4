class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var res: [[Int]] = [intervals[0]]

        for interval in intervals {
            let start = interval[0]
            let end = interval[1]
            var lastEnd = res.last![1]

            if start <= lastEnd {
                res[res.count - 1][1] = max(lastEnd, end)
            } else {
                res.append([start, end])
            }
        }
        return res
    }
}
