class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // check row
        for row in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<9 {
                let val = board[row][i]
                if val == "." { continue }
                if seen.contains(val) { return false }
                seen.insert(val)
            }
        }

        // check cols
        for col in 0..<9 {
            var seen = Set<Character>()

            for i in 0..<9 {
                let val = board[i][col]
                if val == "." { continue }
                if seen.contains(val) { return false }
                seen.insert(val)
            }
        }

        // check 3x3 box
        for sq in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<3 {
                for j in 0..<3 {
                    let row = (sq / 3) * 3 + i
                    let col = (sq % 3) * 3 + j

                    let val = board[row][col]
                    if val == "." { continue }
                    if seen.contains(val) { return false }
                    seen.insert(val)
                }
            }
        }

        return true
    }
}
