# Jelly Bean Problem

"[The Jelly Bean Problem](http://waitbutwhy.com/2016/03/the-jellybean-problem.html)" was published by Tim Urban of [Wait But Why](http://waitbutwhy.com) on March 7, 2016. The problem is mathematically equivalent to the famous [Monty Hall problem](https://en.wikipedia.org/wiki/Monty_Hall_problem) popularized by Marilyn vos Savant in 1990. 

## Summary

You're presented with three jelly beans–one is harmless and two have a lethal poison. You don't know which jelly bean is safe, but you're required to eat one.

Upon making your choice, one of the two remaining jelly beans is removed–you're told it was lethal. Before consuming the jelly bean you initially selected, you're given the option to eat the remaining one instead. 

Which jelly bean do you eat? Does it even matter?

## Conditions

This problem operates under the following conditions:

1. Only one jelly bean is safe to consume. 
2. Two jelly beans will remain after the removal process; this includes the initially selected jelly bean.
3. The removed jelly beans are always lethal.
4. The option to switch the initially selected jelly bean for the remaining one is always provided.

## Playground

The playground proves that your choice does matter–it's better to switch. There was initially a ⅓ probability of making a non-lethal selection. After the removal process, this probability remained the same. However, the probability of making a non-lethal selection by switching is now ⅔.

In the `scenario` below, the remaining choice is always taken (e.g. the remaining jelly bean is consumed–not the one that was initially selected). The `numberOfChoices` represents the number of jelly beans that were initially offered and the `playCount` is the number of times the `scenario` will run.

``` Swift
var scenario = Scenario(numberOfChoices: 3, playCount: 1000)!
scenario.run()
````

The results are printed in the playground's sidebar. For the above `scenario`, it will be similar to the following:

> 😀 Survived by switching 667 times (66.7%).

>💀 Died by switching 333 times (33.3%).