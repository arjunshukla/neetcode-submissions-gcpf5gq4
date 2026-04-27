class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var count = [Character: Int]()
        for c in chars {
            count[c, default: 0] += 1
        }
        var res = 0
        for w in words {
            var curWord = [Character: Int]()
            for c in w {
                curWord[c, default: 0] += 1
            }
            var good = true
            for (c, cnt) in curWord {
                if cnt > (count[c] ?? 0) {
                    good = false
                    break
                }
            }
            if good {
                res += w.count
            }
        }
        return res
    }
}