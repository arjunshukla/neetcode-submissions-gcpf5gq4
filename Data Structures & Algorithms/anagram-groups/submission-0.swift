class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]

        for s in strs {
            let sortedS = String(s.sorted())
            if var val = dict[sortedS] {
                val.append(s)                
                dict[sortedS] = val
            } else {
                dict[sortedS] = [s]
            }
        }

        return Array(dict.values)
    }
}
