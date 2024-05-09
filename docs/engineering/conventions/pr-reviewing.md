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

## Preparing the review meeting

Weekly, we hold a ["GitHub review meeting"](https://github.com/gnolang/meetings/issues/18).
The meeting serves as a synchronous space to unblock development of key Pull
Requests, especially those which need consensus from the team to move forward
or a "philosophical check-in" to ensure the PR is aligned with the intended
direction of the project. (ie., assess whether the changes are OK with Jae or
other stakeholders.)

The agenda of the review meeting is prepared by adding a PR to the ["Review
Meeting"](https://github.com/orgs/gnolang/projects/4/views/1) project, in the
"Agenda" column. Anyone can add PRs to this agenda. Who is in charge of [leading
the review meeting](./pr-triage.md) should proceed to prioritise the agenda:

- PRs which need quick rounds of consensus from the core team can be tackled
	first; mostly if it is expected that any arising discussions will take less
	than 5 minutes.
- PRs which need "longer" conversations should be tackled next; but prioritising
	those that are felt as the most pressing and urgent issues, either because
	of a pending deadline or because they're blocking other, significant work.

The point of the meeting is not necessarily to merge PRs, but rather to unblock
further work. The meeting focuses more strictly on PRs to ensure that whatever
we're talking about has already a real, practical code-implementation; for any
general questions about whether an issue should be tackled or not, the Monday
weekly sync is a better place.
