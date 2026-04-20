class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard !grid.isEmpty else { return 0 }
        let dirs = [[1, 0], [-1, 0], [0, 1], [0, -1]]
        let rows = grid.count
        let cols = grid[0].count
        var islands = 0
        var grid = grid

        func dfs(_ r: Int, _ c: Int) {
            if r < 0 || r >= rows || c < 0 || c >= cols || grid[r][c] == "0"  { return }

            grid[r][c] = "0"
            for dir in dirs {
                dfs(r + dir[0], c + dir[1])
            }
        }

        for r in 0..<rows {
            for c in 0..<cols {
                if grid[r][c] == "1" {
                    dfs(r, c)
                    islands += 1
                }
            }
        }

        return islands
    }
}
