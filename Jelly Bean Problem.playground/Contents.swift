/*:
- important:
Use Xcode 7.3 beta 3 or later for an enhanced presentation.

# Jelly Bean Problem

This playground attempts to model "[The Jelly Bean Problem](http://waitbutwhy.com/2016/03/the-jellybean-problem.html)" as outlined by Tim Urban on [Wait But Why](http://waitbutwhy.com). This problem is based on the famous [Monty Hall problem](https://en.wikipedia.org/wiki/Monty_Hall_problem), which was popularized by Marilyn vos Savant in 1990.

## Summary

You've been sentenced to death, but you have a chance at redemption. You're presented with 3 jelly beans–one is harmless and two have a lethal poison. You must pick one and eat it, but you don't know which one isn't poisonous.

Upon making your choice, one of the two remaining jelly beans is removed–it was lethal. You're then given the option to eat the jelly bean you initially chose or the remaining one.

## Problem

Which jelly bean do you eat? Does it even matter? What if you were initially presented with 1000 jelly beans instead of 3?

## Code
 
The code attempts to prove that the best strategy is always to discard the initial jelly bean for the final one.
 
In the `scenario` below, the final choice is always taken; the wins and losses (e.g. times lived or died) are calculated accordingly.

See the `Sources` directory for more details.

- experiment:
Adjust the `playCount` and `numberOfChoices` to calculate different scenarios.

`numberOfChoices` represents the number of jelly beans to choose from; `playCount` is the number of times the scenario is run.
*/
var scenario = Scenario<JellyBean>(numberOfChoices: 3, playCount: 1000)
scenario.run()
//: ### Results: Wins & Losses
let score = scenario.score
score.formattedWins
score.formattedLosses
