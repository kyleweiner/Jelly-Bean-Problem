/*:
- important:
Use Xcode 7.3 beta 3 or later for an enhanced presentation.

# Jelly Bean Problem

This playground models "[The Jelly Bean Problem](http://waitbutwhy.com/2016/03/the-jellybean-problem.html)" as outlined by Tim Urban on [Wait But Why](http://waitbutwhy.com). The problem is mathematically equivalent to the famous [Monty Hall problem](https://en.wikipedia.org/wiki/Monty_Hall_problem) popularized by Marilyn vos Savant in 1990.

See the `Sources` directory for more details.

- experiment:
Adjust the `numberOfChoices` and `playCount` to calculate different scenarios; 2 or more choices are required. The `numberOfChoices` represents the number of jelly beans that were initially offered (e.g. 3, 1000, etc). The `playCount` is the number of times the scenario is run.

In the scenario below, the remaining jelly bean is always consumed–not the one that was initially selected.
*/
if var scenario = Scenario(numberOfChoices: 3, playCount: 1000) {
    scenario.run()

    "😀 Survived by switching \(scenario.wins) times (\(scenario.percentWon)%)."
    "💀 Died by switching \(scenario.losses) times (\(scenario.percentLost)%)."
}