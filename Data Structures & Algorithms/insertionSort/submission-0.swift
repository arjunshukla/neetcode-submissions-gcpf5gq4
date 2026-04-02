// Definition for a pair
// class Pair {
//     var key: Int
//     var value: String
//     init(_ key: Int, _ value: String) {
//         self.key = key
//         self.value = value
//     }
// }

class Solution {
    func insertionSort(_ pairs: inout [Pair]) -> [[Pair]] {
        var res: [[Pair]] = []
        
        for i in 0..<pairs.count {
            var j = i - 1

            while j >= 0 && pairs[j+1].key < pairs[j].key {
                let temp = pairs[j+1]
                pairs[j+1] = pairs[j]
                pairs[j] = temp
                j -= 1
            }

            res.append(pairs)
            // res.append(pairs.map {
            //     Pair($0.key, $0.value)
            // })
        }

        return res
    }
}
