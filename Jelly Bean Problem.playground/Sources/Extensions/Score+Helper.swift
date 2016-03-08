/// A helper extension for `Score`.

public extension Score {
    /// A formatted `numberOfWins` string.
    var formattedWins: String {
        return "😀 = \(self.numberOfWins)"
    }

    /// A formatted `numberOfLosses` string.
    var formattedLosses: String {
        return "💀 = \(self.numberOfLosses)"
    }
}