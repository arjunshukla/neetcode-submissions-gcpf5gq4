class Solution {
    func isValid(_ s: String) -> Bool {
        // Stack LIFO
        var stack: [Character] = []
        
        let braceMatching: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]":"["
          ]

          for c in s {
            if let open = braceMatching[c] {
                if !stack.isEmpty && stack.last! == open {
                    stack.popLast()
                } else {
                    return false
                }
            } else {
                stack.append(c)
            }
          }
        
        return stack.isEmpty
    }
}
