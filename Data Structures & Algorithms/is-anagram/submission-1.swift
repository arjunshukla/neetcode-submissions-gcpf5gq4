class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.count == t.count && s.sorted() == t.sorted() // else { return false }
        // let sArray = Array(s).sorted()
        // let tArray = Array(t).sorted()

        // return sArray == tArray
        // for let i = 0 in sArray.enumerated
        
        // return true
    }
}
