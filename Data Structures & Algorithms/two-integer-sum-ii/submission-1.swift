class Solution {
    // 1. Hash map approach 
    // - store elements in hashmap

    // 2. Two pointer sliding indow approach
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        let len = numbers.count
        var j = len - 1

// numbers = [1,2,3,4], target = 7
        while i < j {
            let sum = numbers[i] + numbers[j] // a = 1 , b = 2 sum = 3
            if sum < target {  // 3 < 7 
                i += 1
            } else if sum > target {
                j -= 1
            } else {
                return [i+1, j+1]
            }
        }
        return []
    }
}
