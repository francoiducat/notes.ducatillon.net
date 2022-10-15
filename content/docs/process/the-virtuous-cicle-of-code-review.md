---
draft: true
---
# The virtuous cycle of Code Reviews

![Photo by Alvaro Reyes on Unsplash](/img/code-review.jpeg)
*https://unsplash.com/license Photo by Alvaro Reyes on Unsplash*


## Introduction

Yet another article dealing with Code Reviews. Indeed it is. But I really believe this is worth it! I have little experience as a developer within Agile teams but enough to be convinced how much benefits and serenity it brings to **people**, **products** and **organisations**.

Let's get straight to the point.

## What are Code Reviews?

Code Reviews are a stage in the software development life cycle where developers check each other’s code for:

- inconsistencies with system and/or business requirements
- bugs
- readability
- sufficient test coverage.
- irregular formatting
- compliance with enterprise coding standards

## Why do Code Reviews?

Because as human beings we make mistakes, don't we? Honestly, do you know any developer that always produces code without any bugs? I don't. Looking at the requirements, are all cases fully implemented? Are the new automated tests sufficient for the new code? Do existing automated tests need to be rewritten to account for changes in the code? Does the new code conform to existing style guidelines?

I let you answer these questions. For me, doing code reviews is a major pillar for the **quality** of the product that is delivered.

In the meantime, in "real" life, doing Code Reviews isn't always a process that flows naturally.

## Why not?

```
10 lines of code = 10 issues.
500 lines of code = “looks fine.”
Code reviews.
— I Am Devloper (@iamdevloper) November 5, 2013
```

First, unless I'm mistaken, the Code Review process isn't learned at school. Moreover, within organisations, the “traditional” approach to Code Reviews is often perceived as:

### Time-consuming
*Instead of doing Code Reviews developers could write more code and deliver very much expected features by end users!*

Sure, it takes time. But that time isn't wasted–far from it. Skipping code reviews is only advisable for trivial changes.

### An Inefficient process

*Code Reviews are just more interruptions while we could, again, deliver more features for our clients.*

### Frustrating

Unfortunately, during Code Reviews, developers don't always give or receive positive and constructive feedback which sometimes leads to some kind of tension and frustration.

## Benefits

To my mind the most important benefits of code reviews are for people:

### People

#### Empowering skills
Code reviews enabled me to become a more skilled developer. This is a great exercise to get used to *reading code*. Your peers don't always code as you do so you discover new methods and techniques.

#### Mentoring
When new members join the team, more seasoned engineers mentor the newer members. Sharing techniques transcend seniority, where every developer is equally able to share, cooperate and improve their skills. I learned a lot from code reviews feedback.

#### Positive peer pressure
When you know that your code will be reviewed by a teammate, you make an extra effort to ensure that all tests are passing and the code is as well-designed. That mindfulness also tends to make the coding process itself go smoother and, ultimately, faster.

#### Collective code ownership
Requiring code review before merging ensures that no code gets in unreviewed and that the whole team takes ownership of the code. Collective code ownership helps not only when new people start with the team, but as well when people go on vacation.

#### Onboarding
Making source code readable by anyone who might be introduced to the project at any given time during development boosts the onboarding of new team members.

#### Transferring knowledge
Code reviews help share knowledge across the team. It also avoids having one single person have the knowledge on some processes (which put the team at risk.)

#### Enabling time off
Nobody likes to be the sole point of contact on a piece of code. Likewise, nobody wants to dive into a critical piece of code they didn’t write–especially during a production emergency. If you find yourself tied to your desk on the version control system, code review is an excellent way to find freedom. Freedom to take that needed vacation, or freedom to spend some time working on a different area of the product.


### Product

Code Reviews bring benefits to the product ensuring consistency, robustness, and sustainability.

#### Consistent Design and Implementation
Code reviews serve as a check and balance against different interpretations of the scope and requirements.
Code reviews facilitate interactions about the codebase. Often, teams have hidden knowledge within the code that surfaces during code reviews. Newer members, with fresh eyes, discover generally areas that need a new perspective. Code reviews also helps ensure new insight is tempered with existing knowledge.

#### Ensuring maintainability
Code reviews are useful in the long run as team members continue to change in projects.

#### Quality & Performance
It gives a fresh set of eyes to identify coding errors that can eventually lead to serious bugs.

- Design – Is the code well designed?
- Naming conventions – Are there readable names for classes, variables, and methods for ease of understanding?
- Comments – Are the comments useful, meaningful, and clear?
- Conciseness - Can we shorten the code? (/!\ less readability!)
- Complexity – Can the code be made simpler? Will it be easy for future developers to understand the code?
- Tests - Are the new automated tests sufficient for the new code?
- Documentation - Is it well-documented?

Eventually, it helps to find bugs early and often.

### Company
I do believe that sereine people and high-quality products serve successful organizations. That's the virtuous cycle of code reviews.

Last but not least, code reviews save the company money.

#### Saving money
Code reviews are best practices, but they take the time that your leadership may have decided is better spent on pushing forward with projects and getting applications to market faster. Have you ever, however, sat down with a calculator and figured out exactly what it’s costing your business not to perform code reviews?

Well, I suggest you have a look at [SmartBear Code Review ROI calculator](https://smartbear.com/product/collaborator/roi-calculator/). The tool, based on data from SmartBear’s customers as well as industry benchmarks, allows you to see what code reviews could save your business – and what it costs if you forego them.

Here is an example:

![code-review-roi-calculator](/img/code-reviews-roi.png)

## Prerequisites

In order to be efficient, several prerequisites to codes reviews should be implemented.

### Coding style
Decide and implement a [coding style](https://medium.com/swlh/configuring-google-style-guide-for-java-for-intellij-c727af4ef248) that every developer follows to avoid reviewing old codebase unnecessarily.

### Code review tools
Use a source code repository (like [github.com](https://github.com)) that usually gives you the possibility to perform code reviews.

### Respectful and constructive feedback
Even though it reads like a no-brainer, code reviews do put the code author in a vulnerable position, so you must be considerate of that. Your job is to give constructive and valuable feedback but also to do so in a respectful manner. It is just so easy to hurt someone's feelings – especially in written form. Too often time pressure might make you give a sloppy answer that can be misinterpreted.
Giving constructive feedback and being positive as we receive feedback could be yet another long article ;-)

### Be open to suggested changes
Receiving unexpected comments might make you tense and defensive. Try to prepare yourself mentally and work on your ability to be open to suggestions and different viewpoints. Always start with the assumption that the reviewer had the best intention. If some feedback made you uncomfortable try to sort things out as soon as possible.

### Go and talk in person if necessary
Code review tools and chat tools allow us to communicate with our peers in an asynchronous and effortless way. Sometimes it is a good idea to have more personal face-to-face conversations to resolve some complex issues.

### Ensure traceability for decisions
Even though less traceable conversations, such as face-to-face or video calls can make a big difference in team dynamics, it is important to document the discussion. Especially the code review outcome should be tracked for future reference by using traceable tools such as the code review tool.
The code review tool is the right communication channel for all simple matters, as it allows the whole team to follow along, and enables to look up decisions and understand code development after the fact.


## Best Practices
Having prerequisites in place, you may also adopt a few best practices to smooth code reviews.
### CI checks
Once a pull request is triggered, you can set up your code repository to check if the branch is "mergeable."
For example : 2 peers approbations required before merge.
### Be fast
If you are not in the middle of a focused task, you should do a code review shortly after it comes in.
One business day is the maximum time it should take to respond to a code review request
At Google, they optimize for the speed at which a team of developers can produce a product together, as opposed to optimizing for the speed at which an individual developer can write code. The speed of individual development is important, it’s just not as important as the velocity of the entire team.
When code reviews are slow, several things happen:
The velocity of the team as a whole is decreased. Yes, the individual who doesn’t respond quickly to the review gets other work done. However, new features and bug fixes for the rest of the team are delayed by days, weeks, or months as each CL waits for review and re-review.
Developers start to protest the code review process. If a reviewer only responds every few days, but requests major changes to the CL each time, that can be frustrating and difficult for developers. Often, this is expressed as complaints about how “strict” the reviewer is being. If the reviewer requests the same substantial changes (changes which really do improve code health), but responds quickly every time the developer makes an update, the complaints tend to disappear. Most complaints about the code review process are actually resolved by making the process faster.
### Focus on core issues, less nit-picking
Your goal as a reviewer should be to help with core issues, such as bugs, architectural problems, structural problems or problems that will lead to maintainability issues.
Obviously, if you see typos, badly named variables or styling issues, you might also point that out. Still, this is not your main tasks and, understandably, over discussing minor issues isn’t valuable to code authors.
### Speed vs. Interruption
There is one time where the consideration of personal velocity trumps team velocity. If you are in the middle of a focused task, such as writing code, don’t interrupt yourself to do a code review. Research has shown that it can take a long time for a developer to get back into a smooth flow of development after being interrupted. So interrupting yourself while coding is actually more expensive to the team than making another developer wait a bit for a code review.
Instead, wait for a break point in your work before you respond to a request for review. This could be when your current coding task is completed, after lunch, returning from a meeting, coming back from the breakroom, etc.
### Integrate code review into your daily routine
### Reduce task switching as it kills productivity
### Review frequently not in a big bang fashion
### Give feedback in a timely manner


## Conclusion

Resistance to change always leads to a status quo for which there is a long way to go before progress can be made.

Peer reviews are a defining principle of Agile, playing a critical role in creating consistency in the source code and setting the stage for better QA testing and smoother integration.

Not only do code reviews help make me a better developer, but it ensures the long-term success and proper development of our product.


Sources:

https://www.brightspot.com/learn/articles/5-reasons-why-the-code-review-process-is-critical-for-developers
https://smartbear.com/learn/code-review/agile-code-review-process/
https://www.browserstack.com/guide/code-review-benefits
https://smartbear.com/learn/code-review/why-review-code/
https://google.github.io/eng-practices/review/reviewer/speed.html
https://workplace.stackexchange.com/questions/98250/slowed-down-by-code-reviews
https://www.michaelagreiler.com/code-review-best-practices/
https://www.atlassian.com/agile/software-development/code-
https://www.devprojournal.com/software-development-trends/how-much-money-do-code-reviews-save-software-developers/
https://smartbear.com/product/collaborator/roi-calculator/
