/// Tracks the number of wins and losses.

public struct Score {
    /// The number of wins. Default = 0.
    public var numberOfWins = 0

    /// The number of losses. Default = 0.
    public var numberOfLosses = 0

    /// The total number of plays.
    public var numberOfPlays: Int {
        return numberOfWins + numberOfLosses
    }

    /// Increments the `numberOfWins` by 1.
    public mutating func addWin() {
        numberOfWins += 1
    }

    /// Increments the `numberOfLosses` by 1.
    public mutating func addLoss() {
        numberOfLosses += 1
    }
}