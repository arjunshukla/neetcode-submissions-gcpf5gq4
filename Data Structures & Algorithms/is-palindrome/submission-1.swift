class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str = ""

        for c in s {
            if c.isLetter || c.isNumber {
                str += c.lowercased()
            }
        }

        return str == String(str.reversed())
    }
}
