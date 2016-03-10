/// A helper extension for `Scenario`.

public extension Scenario {
    /// The number of wins expressed as a percentage.
    var percentWon: Float {
        return Float(wins)/Float(playCount) * 100
    }

    /// The number of losses expressed as a percentage.
    var percentLost: Float {
        return Float(losses)/Float(playCount) * 100
    }
}