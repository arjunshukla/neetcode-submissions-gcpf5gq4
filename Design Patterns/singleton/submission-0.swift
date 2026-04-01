class Singleton {

    public static var shared: Singleton?
    var val: String?

    private init() {}

    static func getInstance() -> Singleton {
        if shared != nil {
            return shared!
        }

        shared = Singleton()
        return shared!
    }

    func getValue() -> String? {
        val
    }

    func setValue(_ value: String) {
        val = value
    }
}
