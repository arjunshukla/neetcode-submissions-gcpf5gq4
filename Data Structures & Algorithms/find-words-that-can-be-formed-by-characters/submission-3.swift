class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var res = 0
        var charsMap : [Character: Int] = [:]

        for c in chars {
            charsMap[c, default: 0] += 1
        }

        for word in words {
            var wordMap: [Character: Int] = [:]
            for w in word {
                wordMap[w, default: 0] += 1
            }

            var isValid = true
            for (c, n) in wordMap {
                guard let charsCount = charsMap[c],
                charsCount >= n else {
                    isValid = false
                    break
                }
            }

            if isValid {
                res += word.count
            }
        }

        return res
    }
}