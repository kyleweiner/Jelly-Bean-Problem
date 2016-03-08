/// Models a scenario with a set `numberOfChoices` and `playCount`.

public struct Scenario<T: Choice> {
    /// The number of times to run the scenario.
    public var playCount: Int

    /// The number of choices for the scenario.
    public var numberOfChoices: Int

    /// Keeps track of the wins and losses.
    public private(set) var score = Score()

    public init(numberOfChoices: Int, playCount: Int) {
        self.numberOfChoices = numberOfChoices
        self.playCount = playCount
    }

    /// Runs the scenario with `numberOfChoices` for the number of `playCount`s.
    public mutating func run() {
        for _ in 1...playCount {
            // Makes a `ChoiceStack` with the `JellyBean` type.
            var choiceStack = ChoiceStack<T>(numberOfChoices: numberOfChoices)

            // Makes a random first choice.
            let firstChoiceIndex = Int.randomNumber(from: 0, to: numberOfChoices - 1)
            let firstChoice = choiceStack.makeFirstChoice(atIndex: firstChoiceIndex)!


            // Second choices result in a loss if `isGood` is `true` for `firstChoice`.
            // Updates the score based on always making a second choice.
            firstChoice.isGood == true ? score.addLoss() : score.addWin()
        }
    }
}