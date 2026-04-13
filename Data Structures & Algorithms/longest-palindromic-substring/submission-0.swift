class Solution {
    func longestPalindrome(_ s: String) -> String {
        var arr = Array(s)
        var start = 0, end = 0

        for i in 0..<arr.count {
            // Odd
            let (l1, r1) = helper(arr, i, i)

            // Even
            let (l2, r2) = helper(arr, i, i + 1)

            if r1 - l1 > end - start {
                start = l1
                end = r1
            }

            if r2 - l2 > end - start {
                start = l2
                end = r2
            }
        }

        return String(arr[start...end])
    }

    private func helper(_ arr: [Character], _ l: Int, _ r: Int) -> (Int, Int) {
        var L = l
        var R = r
        var res = 0
        let len = arr.count

        while L >= 0 && R < len && arr[L] == arr[R] {
            res = max(res, R - L + 1)
            L -= 1
            R += 1
        }
        return (L + 1, R - 1) // To account for the last updates in the while loop
    }
}
