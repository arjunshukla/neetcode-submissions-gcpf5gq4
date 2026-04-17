class Solution {
    func addBoldTag(_ s: String, _ words: [String]) -> String {
        let sArr = Array(s)
        let len = sArr.count
        var boldArr = Array(repeating: false, count: len)

        // Step1: Mark bold positions
        for i in 0..<len {
            for word in words {
                let wordLen = word.count
                if (i + wordLen) <= len { // Checking array bounds safety
                    let subStr = String(sArr[i..<i+wordLen])
                    if subStr == word { // Mark all indices in this range
                        for j in i..<i+wordLen {
                            boldArr[j] = true
                        }

                    }
                }
            }
        }
        
        // Step2: Build result
        var res = ""
        var i = 0
        while i < len {
            if boldArr[i] { // Start of bold section
                res += "<b>"
                // Inser the regular string
                while i < len && boldArr[i] {
                    res.append(sArr[i])
                    i += 1
                }
                res += "</b>"
            } else { // Add non-bold string character
                res.append(sArr[i])
                i += 1
            }
        }
        return res
    }    
}
