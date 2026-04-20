class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
        let ROWS = grid.count
        let COLS = grid[0].count
        var islands = 0
        var grid = grid

        func bfs(_ r: Int, _ c: Int) {
            var queue: [(Int, Int)] = []
            grid[r][c] = "0"
            queue.append((r, c))

            while !queue.isEmpty {
                let (row, col) = queue.removeFirst()
                for dir in directions {
                    let nr = row + dir[0]
                    let nc = col + dir[1]

                    if nr < 0 || nr >= ROWS || nc < 0 || nc >= COLS || grid[nr][nc] == "0" { continue }
                    queue.append((nr, nc))
                    grid[nr][nc] = "0"
                }
            }
        }

        for r in 0..<ROWS {
            for c in 0..<COLS {
                if grid[r][c] == "1" {
                    bfs(r, c)
                    islands += 1
                }
            }
        }

        return islands
    }
}
