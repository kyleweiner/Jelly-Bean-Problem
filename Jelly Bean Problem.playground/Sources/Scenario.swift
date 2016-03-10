public struct Scenario {
    /// The number of choices for the scenario.
    public private(set) var numberOfChoices: Int

    /// The number of times to run the scenario.
    public private(set) var playCount: Int

    /// The number of wins.
    public private(set) var wins = 0

    /// The number of losses.
    public private(set) var losses = 0

    /**
     Initializes a `scenario` with a set `numberOfChoices` and `playCount`;
     at least 2 choices are required for successful initialization.

     - Parameters:
        - numberOfChoices: the number of choices initially offered
        - playCount: the number of times to run the scenario
     */
    public init?(numberOfChoices: Int, playCount: Int) {
        guard numberOfChoices > 1 else { return nil }

        self.numberOfChoices = numberOfChoices
        self.playCount = playCount
    }

    /// Runs the scenario with `numberOfChoices` for the number of `playCount`s.
    public mutating func run() {
        for _ in 1...playCount {
            // Picks a random number for the "good" choice.
            let goodChoiceIndex = Int.random(from: 0, to: numberOfChoices - 1)

            // Picks a random for the first choice.
            let firstChoiceIndex = Int.random(from: 0, to: numberOfChoices - 1)

            // Updates the score based on a second choice always being made.
            // This results in a loss if the first choice was the "good" choice.
            firstChoiceIndex == goodChoiceIndex ? (losses += 1) : (wins += 1)
        }
    }
}