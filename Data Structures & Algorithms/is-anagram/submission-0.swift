class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let sArray = Array(s) //.sorted
        let tArray = Array(t) //.sorted


        // return sArray === tArray

        var dictS: [Character: Int] = [:]

        for c in sArray {
            if let val = dictS[c] {
                dictS[c] = val + 1
            } else {
                dictS[c] = 1
            }
        }

        var dictT: [Character: Int] = [:]
        for c in tArray {
            if let val = dictT[c] {
                dictT[c] = val + 1
            } else {
                dictT[c] = 1
            }
        }

        for key in dictS.keys {
            if dictS[key] != dictT[key] {
                return false
            }
        }

        return true
    }
}
