class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var arr = Array(repeating: 0, count: 26)
        let sArr = Array(s)
        let tArr = Array(t)

        for i in 0..<s.count {
            arr[Int(sArr[i].asciiValue!) - 97] += 1
            arr[Int(tArr[i].asciiValue!) - 97] -= 1
        }

        for n in arr {
            if n != 0 { return false }
        }

        return true
    }
}
