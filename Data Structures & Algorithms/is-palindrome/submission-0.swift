class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var i = 0
        var j = str.count - 1

        // print(str)
        while i < j {
            if str[i] == str[j] {
                i += 1
                j -= 1
            } else {
                return false
            }
        }

        return true
    }
}
