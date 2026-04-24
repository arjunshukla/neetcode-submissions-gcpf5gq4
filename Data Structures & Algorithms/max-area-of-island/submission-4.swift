class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let directions = [[1,0], [-1, 0], [0, 1], [0, -1]]
        let rows = grid.count
        let cols = grid[0].count
        var grid = grid
        var area = 0

        func bfs(_ r: Int, _ c: Int) -> Int {
            var queue = [(Int, Int)]()
            grid[r][c] = 0
            queue.append((r, c))
            var res = 1

            while !queue.isEmpty {
                let (row, col) = queue.removeFirst()
                for dir in directions {
                    let nr = row + dir[0]
                    let nc = col + dir[1]
                    if nr < 0 || nc < 0 || nr >= rows || nc >= cols || grid[nr][nc] == 0 {
                        continue
                    }
                    queue.append((nr, nc))
                    grid[nr][nc] = 0
                    res += 1
                }
            }
            return res
        }

        for r in 0..<rows {
            for c in 0..<cols {
                if grid[r][c] == 1 {
                    area = max(area, bfs(r, c))
                }
            }
        }

        return area
    }
}
