class Solution {
    /*
    - Loop from back
    - track maxVal
    - compare current element with maxVal and swap if maxVal is greater
    - update maxVal
    - return the array
    */
    func replaceElements(_ arr: [Int]) -> [Int] {
        var resultArr = arr
        var maxVal = -1
        for i in stride(from: arr.count - 1, through: 0, by: -1) {
            let current = arr[i]
            resultArr[i] = maxVal
            maxVal = max(maxVal, current)
        }

        return resultArr
    }
}
