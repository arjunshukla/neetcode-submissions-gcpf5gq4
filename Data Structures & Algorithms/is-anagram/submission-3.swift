class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var freq = Array(repeating: 0, count: 26)

        for (c1, c2) in zip(s, t) {
            freq[Int(c1.asciiValue! - 97)] += 1
            freq[Int(c2.asciiValue! - 97)] -= 1
        }

        return freq.allSatisfy { $0 == 0}
    }
}
