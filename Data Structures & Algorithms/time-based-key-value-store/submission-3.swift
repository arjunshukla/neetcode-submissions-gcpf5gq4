class TimeMap {
    private var map: [String : [(Int, String)]] = [:]
    init() {}

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if map[key] != nil {
            map[key]!.append((timestamp, value))
        } else { // Add new value
            map[key] = [(timestamp, value)]
        }
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let values = map[key] else { return "" }
        var res = ""
        var l = 0
        var r = values.count - 1

        while l <= r {
            let m = (l + r) / 2
            if values[m].0 <= timestamp {
                res = values[m].1
                l = m + 1
            } else {
                r = m - 1
            }
        }

        return res
    }
}
