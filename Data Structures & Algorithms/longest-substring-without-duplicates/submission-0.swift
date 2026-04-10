class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        /* Sliding window approach
        - Use Set to identify presence of repeating char
        - maxLen var to keep track of longest subsequence
        - Use two pointers: left, right
        - if char in set
          - left += 1
          else 
            - compute maxLen
        - return maxLen
        */
        var arr = Array(s)
        var set = Set<Character>()
        var res = 0
        var l = 0

        for r in 0..<arr.count {
            while set.contains(arr[r]) {
                set.remove(arr[l])
                l += 1
            }

            set.insert(arr[r])
            res = max(res, r - l + 1)
        }
        
        return res
    }
}
