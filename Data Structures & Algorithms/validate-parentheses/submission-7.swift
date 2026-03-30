// [,]
// stack = [
// ] -> popLast = [] -> valid
class Solution {
    func isValid(_ s: String) -> Bool { // s="[(])"
        var stack: [Character] = []

        for c in s { // [ ( ] )
            switch c { // [ ( ]
                case "[", "(", "{": // [ (
                    stack.append(c) // stack = [,(
                case "]", ")", "}": // ]
                    let last = stack.popLast() // (
                    switch last {
                        case "(":
                            guard c == ")" else { return false }
                        case "[":
                            guard c == "]" else { return false }
                        case "{":
                            guard c == "}" else { return false }
                        default:
                            return false
                    }
                default:
                 continue
            }
        }
        return stack.isEmpty
    }
}
