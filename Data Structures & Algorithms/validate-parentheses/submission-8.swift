class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        var map: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["]
        
        for c in s {
            if let expected = map[c] {
                guard let last = stack.popLast(),
                last == expected else {
                    return false
                }
            } else {
                stack.append(c)
            }
        }

        return stack.isEmpty
    }
}
