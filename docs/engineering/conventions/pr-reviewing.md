# Reviewing PRs

> Some guidelines and pointers on how to review PRs effectively.

## A culture for reviewing

A few tips to review effectively:

- **Proposals > Discussions > Feelings**
    - Use this hierarchy to decide how to best make a PR review comment.
    - A proposal shares the work of "figuring it out" with the author. If using GitHub's ["suggestions" feature](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/incorporating-feedback-in-your-pull-request), the changes can be applied immediately by the author.
- **Don't take reviews personally,** and make reviews on the code rather than the author.
- It's OK to ask for clarification when things are unclear.
    - Don't feel that you need to make a fully in-depth review and that you are stupid because you don't understand it at first glance. Giving the full context of the pull request is the responsibility of the author, together with writing documentation and tests.
    - If a PR lacks sufficient explanation of what has been changed, asking the author to explain themselves is perfectly acceptable.
- Prefer reaching consensus over voting.
    - Adopting the "Proposals > Discussions > Feelings", try to reach consensus when in conflict over a code change. This means either trying to convince each other using objective metrics, or trying to find a middleground solution that can satisfy both point of views.
- Don't [bikeshed](https://bikeshed.com/).
    - Creating long-winded discussions on trivial topics is really common. Try to recognise when the change you're requesting relates to an objective impact or is purely esthetical.
    - For code formatting and practices, prefer introducing linters and formatting rules separately rather than discussing them in a PR.
- Reviews are a way to learn.
    - Don't be afraid to review components of code you don't have full knowledge about. It can help you get better knowledge of how that component works.
    - Learning what other people are doing and how they are doing it can give you new insights into solving problems. It can also help you build a better mental map of how the whole system works.
- Prefer asking for asking an in-depth description, rather than scheduling a call.
    - Other reviewers might have your same doubts. It's good if the answers you're given are as such out for everyone to see.
    - Documentation and tests are also good places to put long-term information!
- [Humanizing Reviews](https://www.processimpact.com/articles/humanizing_reviews.pdf) is a nice read.
