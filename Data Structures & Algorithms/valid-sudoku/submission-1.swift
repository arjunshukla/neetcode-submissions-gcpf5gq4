class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<9 {
            var rowSet = Set<Character>()
            var colSet = Set<Character>()
            var boxSet = Set<Character>()

            for j in 0..<9 {
                // Row check
                let rowVal = board[i][j]
                if rowVal != "." {
                    if rowSet.contains(rowVal) { return false }
                    rowSet.insert(rowVal)
                }

                // Column check
                let colVal = board[j][i]
                if colVal != "." {
                    if colSet.contains(colVal) { return false }
                    colSet.insert(colVal)
                }

                // Box check
                let row = (i / 3) * 3 + (j / 3)
                let col = (i % 3) * 3 + (j % 3)
                let boxVal = board[row][col]

                if boxVal != "." {
                    if boxSet.contains(boxVal) { return false }
                    boxSet.insert(boxVal)
                }
            }
        }

        return true
    }
}