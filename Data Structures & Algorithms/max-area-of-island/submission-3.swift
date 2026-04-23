class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var rows = grid.count
        var cols = grid[0].count

        func dfs(_ r: Int, _ c: Int) -> Int {
            if r < 0 || c < 0 || r == rows || c == cols || grid[r][c] != 1 {
                return 0
            }
            grid[r][c] = -1

            return 1 + dfs(r + 1, c) + dfs(r - 1, c) + dfs(r, c + 1) + dfs(r, c - 1)
        }

        var res = 0
        for r in 0..<rows {
            for c in 0..<cols {
                res = max(res, dfs(r, c))
            }
        }

        return res
    }
}
