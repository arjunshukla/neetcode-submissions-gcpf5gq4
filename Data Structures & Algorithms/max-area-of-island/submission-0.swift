class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count
        var visit = Set<[Int]>()
        var grid = grid

        func dfs(_ r: Int, _ c: Int) -> Int {
            if r < 0 || r == rows || c < 0 || c == cols || grid[r][c] == 0 || visit.contains([r, c]) {
                return 0
            }

            visit.insert([r, c])
            return 1 + dfs(r + 1, c) + dfs(r - 1, c) + dfs(r, c + 1) + dfs(r, c - 1)
        }

        var area = 0
        for r in 0..<rows {
            for c in 0..<cols {
                area = max(area, dfs(r,c))
            }
        }
        return area
    }
}
