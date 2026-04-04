class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""

        for s in strs {
            res += "\(s.count)#\(s)"
        }

        return res
    }

    func decode(_ str: String) -> [String] { // 1#I4#code
        var res: [String] = []
        let chars = Array(str)
        var i = 0

        while i < chars.count {
            // find full number before #
            var j = i
            while chars[j] != "#" {
                j += 1
            } // after loop ends, j is at #
            let len = Int(String(chars[i..<j]))! // gives full number
            
            // Move i to starting of word
            i = j + 1
            let end = i + len // where word ends
// 012345678
// 1#I4#code | i 
            let word = String(chars[i..<end])
            res.append(word)

            // Move i to next word
            i = end
        }

        return res
    }
}
