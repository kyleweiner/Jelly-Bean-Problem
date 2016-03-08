/// Manages a generic stack of `Choice`s.

public struct ChoiceStack<T: Choice> {
    /// An array of `Choice`s.
    public private(set) var choices = [T]()

    /// The first choice that was made.
    public private(set) var firstChoice: T?

    public init(numberOfChoices: Int) {
        assert(numberOfChoices > 1, "\(self.dynamicType): There should be at least 2 choices.")

        // Picks a random number from `0..<numberOfChoices` to use as the `goodChoiceIndex`.
        let goodChoiceIndex = Int.randomNumber(from: 0, to: numberOfChoices - 1)

        for i in 0..<numberOfChoices {
            if T.self is JellyBean.Type {
                let choice = JellyBean(isGood: i == goodChoiceIndex)
                choices.append(choice as! T)
            }
        }
    }

    /// Removes the first choice from `choices` and returns its value.
    /// Subsequent calls will return `firstChoice`.
    public mutating func makeFirstChoice(atIndex index: Int) -> T? {
        // Prevents multiple `firstChoice`s.
        guard firstChoice == nil else { return firstChoice }

        // Removes the first choice from `choices` and returns its value.
        return choices.removeAtIndex(index)
    }
}