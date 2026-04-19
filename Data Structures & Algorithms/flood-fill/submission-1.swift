class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        let orig = image[sr][sc]
        if orig == color { return image }
        let m = image.count, n = image[0].count
        var q = [(sr, sc)]
        var image = image
        image[sr][sc] = color

        let dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]

        while !q.isEmpty {
            let (r, c) = q.removeFirst()
            for (dr, dc) in dirs {
                let nr = r + dr, nc = c + dc
                if nr >= 0 && nr < m && nc >= 0 && nc < n && image[nr][nc] == orig {
                    image[nr][nc] = color
                    q.append((nr, nc))
                }
            }
        }
        return image
    }
}
