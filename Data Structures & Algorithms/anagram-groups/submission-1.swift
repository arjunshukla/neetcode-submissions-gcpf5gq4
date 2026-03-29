class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [Array<Int>: [String]] = [:]

        for s in strs {
            var count = Array(repeating: 0, count: 26)

            for c in s {
                count[Int(c.asciiValue!) - 97] += 1
            }

            result[count, default: []].append(s)
        }

        return Array(result.values)
    }
}
