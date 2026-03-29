class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for n in nums {
            dict[n, default: 0] += 1
        }
        
        let sortedKeys = dict.keys.sorted { dict[$0]! > dict[$1]! }
        var result: [Int] = []
        
        for i in 0..<k {
            result.append(sortedKeys[i])
        }

        return result
    }
}
