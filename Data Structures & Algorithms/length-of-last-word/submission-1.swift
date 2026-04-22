class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var res = 0
        var arr = Array(s)

        var j = arr.count - 1

        while j >= 0 {
            if res > 0 && arr[j] == " " { break }
            if arr[j] == " " {
                j -= 1
                continue
            }
            res += 1
            j -= 1
        }
        return res
    }
}
