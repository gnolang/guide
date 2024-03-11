## Background

- We have a linearly-growing number of PRs. We are not doing enough to catch up on the work that is being done; as such, a lot of high-quality code gets stuck in review forever.
- When code is stuck in review for long, many PRs are "dropped" by the author due to lack of interest or shift of focus. This is exasperated when looking at external contributions.
- The work of reviewing PRs is not evenly distributed among the team
    - This is not so much an issue per se (some enjoy more the discussions, some more drilling on code), but the imbalance is very large and the onus of reviewing is felt more like a chore even by those who actively engage in it.

### Some stats

These are ideas for useful stats which illustrate the problem right now; I know of no tool which would let me pick them up, but I'm trying to figure out to get them because it would also help us see the difference after imlpementing this process.

- (open PRs - draft - closed PRs over time)
- weekly PRs done per team member (anonymised)
- average/median time for first and second review
- number of reviews received per PR (internal / external)
- time-to-completion internal/external percentiles
- feedback loop (time between author event (create / ready_for_review, commit, force-push) --> review/close) percentiles

---

# Pull Request Triage

> A process to organise the incoming reviews of PRs and create a system to effectively manage, week after week, all of our open work and efficiently review it.

## Objective

- Lower the time required for the feedback loop to at most 1 week for the biggest PRs, and 3-4 days for the regular ones.
- Steadily work through our backlog of open PRs
- Reduce merge conflicts
- Prepare to scale for an open source community

## Process

- Every week, 2 members of [gno tech staff](https://github.com/orgs/gnolang/teams/tech-staff) are assigned to do PR triage for that week.
- **REQUIRED:** Triage and first-review each incoming PR (= new, or moved from draft to ready, without a review):
    - Place it in the correct milestone
    - Make corrections for clarity in the title, description and label
    - **Make a first PR review**, as in-depth as you can but deferring where you lack the expertise.
        - If the PR lacks context, needs more explanation to understand what it's doing, lacks tests or documentation, **feel free to request it and defer reviewing to after that is done.**
        - The objective here is to ensure the PR doesn't have any major problems and can be handed off for finer-grained review by a codeowner.
        - Defer reviews on Draft PRs, unless the author has specifically requested an initial review (but be broad, in these cases).
    - For ready PRs, add any review requests which are not already requested by CODEOWNERS.
    - Place the PR in the correct column in the Pull Requests board.
    - _Prioritise community pull requests,_ because they are not paid they lose interest 10x faster.
    - **Prioritise this part of the process over any software development for the duration of the triage week.**
- Work through the backlog and merge PRs
    - Prioritise the following:
        - Open PRs over Draft PRs
        - PRs that don't have any reviews yet
        - PRs by "least recently updated"
    - For each of these, ensure that they are in the correct column for the "Pull Requests" column.
    - Ping any reviewers that are blocking the PR (you are also encouraged to batch these with other requests if possible, see the "Ping team members" section later).
    - Don't be afraid to merge if all outstanding issues are solved.
        - For most PRs, we follow the convention of "requiring 2 approvals". (If, however, the PR is so minor and obviously correct, e.g. typo fixes, don't wait for a second reviewer).
        - If a PR has a stale (2mo+) "changes required" review which has been entirely acted upon, you can always _dismiss it_ through the GitHub UI (try contacting the reviewer, first).
- Prepare the review meeting and lead it
    - The review meeting has the primary purpose of acting upon the following kind of PRs:
        - Those that need a "philosophical", collective or executive decision in order to move forward.
        - Those that can be easily unblocked by the meeting (ie. gathering knowledge / checking with the team nothing has been missed)
    - Before the GitHub review meeting, work through the PRs you've discussed and viewed this week, both incoming and the ones in the backlog.
    - Add them to the "Review Meeting" column on GitHub and re-order them to make sure that the most important ones are at the top.
        - This serves as the "agenda" for the meeting; anyone can add items, but it is your responsibility to ensure to prioritize them. (If you're up to speed on most PRs, this can take as little as 15 minutes, before the call)
    - Make sure to know the context for the PRs in the review column, so that you can briefly introduce the changes via voice before kicking off its discussion.
- Ping team members
    - Ping each team member with 2 PRs each week where their review is requested (preferring those which seem more adequate depending on the teammate's expertise area). Do this _individually, in Direct Messages_.
    - You are encouraged to do this on Thursdays, where you'll have seen most of the incoming PRs for the week and have had time to go through the backlog, and team members can be encouraged to review PRs ahead of the meeting. (If you're in the US, consider doing this Wednesday afternoon)
        - NOTE: following comments, this may be switched up to monday/tuesday (and the other day as a consequence)
    - A summary of reviews requested for each team member should be posted on the [review meetings minutes](https://github.com/gnolang/meetings/issues/18); then cross-posted on Gno-Tech-Staff on Signal/Slack, for visibility among the team members.
    - You are also encouraged to send a reminder on Monday for any outstanding PR reviews requested by the triagers the previous week which are still pending.
    - If a team member still has to address review comments on their own PRs, remind them, too.

### A typical week

Use this as a practical example of how things could work. This is not authoritative and meant as an example to organise the week and triaging work with your colleague :)

- **The friday before the triage week**, Alice and Bob message each other, deciding on mansions:
    - Alice will read through the incoming PRs, and judge what she can review and send to Bob what he should review. She will also ping the team members on Monday for any pending reviews for the previous week.
    - Bob will read through the backlog of existing PRs, check out what needs love and care and send to Alice what she should review. He will also be drafting the new round of PR suggestions to be sent off on Thursday.
- **Monday**
    - Bob kicks off in the morning with his coffee and reading through some of the current open PRs in the backlog. To his surprise, he founds some that have been opened 3 months earlier and have gotten no response yet. He finds a relatively small one involving a new feature on the `gnokey` client, and one on a refactoring of the GnoVM test suite; he sends off the `gnokey` one to Alice, as she generally has good taste for command-line UX and clients, and takes on the refactoring for the day.
    - Alice goes through the `gnokey` PR, and after checking it through, she posts some comments but otherwise looks good to her. She approves it. The changes require a bit of attention from its codeowners as they change the CLI design, so makes a comment on the PR pinging them.
    - Just ahead of the weekly, Alice sends off DMs to three team members which have pending reviews from the previous week's batch, going through the posted PRs of the previous week and checking which ones were reviewed.
    - Bob finishes going through the refactor and notices several areas which could be improved with additional comments, and requests the author to add a bit more context to the reasons.
- **Tuesday**
    - Overnight, a new PR came up from an overeseas team member, which adds a new endpoint to the Tendermint2 RPC node. Alice sees it and decides to take care of it.
    - While going through the backlog, Bob notices there's a PR by a community member where Carl and James commented, disagreeing on how the PR author should fix it, which has been awaiting Carl's reply for a while. He pings Carl to take another look, and pre-emptively places it in the "Review Meeting" column in case Carl doesn't manage to get around to it before Thursday.
    - The Tendermint2 PR looks good. She sends it off to Bob so he can take a second look. Bob takes a look at it. It's good to go, and merges it!
    - In the afternoon, two new PRs come through, one is a typo fix on the docs, and the other one is a GnoVM bugfix. Alice goes through the typo fix and immediately approves and merges it, while the GnoVM bugfix seems a little bit more complex to go through. Being currently doing other work, she sends it off to Bob.
- **Wednesday**
    - Bob had some trouble going through the GnoVM bugfix. He asks for a bit of context, but cross-checks with Alice to see what she thinks of it. Alice seems to have a clearer picture, and requests a few changes while also answering some of Bob's clarification requests.
    - A couple PRs were made by a team member fixing some text on the r/demo/boards and r/demo/microblog realms, and a draft PR was made by an external contributor that proposes some changes to the VM keeper (sdk/vm).
    - Alice hands off the small fixes to Bob, to take a look at the sdk/vm PR. The changes look a bit tricky, and not necessarily beneficial. She makes a comment thanking the contributor, and pinging the relative codeowner for an opinion on how to proceed. She adds some labels, and places it in the "Review meeting" column pre-emptively.
    - The testing suite refactor from monday has had fixes applied by the author. Bob sees the notification, asks Alice to take a second look. It's now good. Merged!
- **Thursday**
    - Alice sees a new PR adding a new `p/` package. It looks good to her,  but it's  probably best if James takes a second look.
    - Bob goes through more backlog in the morning. There are 3 PRs that have been awaiting feedback by Jae. One of them is by an external contributor -- he comments that the PR will be reviewed later in the day. He adds the three of them to the review meeting column.
    - Bob fills out an initial draft list of PRs that he's seen in the past week. He has some blanks on some team members, but sends it off to Alice to see what she has to add.
    - Sure enough, Alice adds the `p/` package PR, and some more that she thinks need some love. They post it on the meetings repository and send off a message on Slack and Signal.
    - An hour before the call, Alice and Bob huddle together to figure out how to prioritize the review meeting. The PRs by outside contributors pending collective decisions are pushed to the top, and they ping some team members to clarify why they added their PRs so they can prioritize accordingly.
    - The review meeting: Alice does the screensharing, Bob does the talking and writing (on the meeting minutes). All in all, a productive one: managed to go through 6 PRs, and merge 3 of them!
- **Friday**
    - It has been a long week. A couple PRs rolled in from an Asian partner; Alice sends one to Bob and reviews the other. They are still in draft, so they do mostly a preliminary review, and make sure to understand what the partners are trying to accomplish.
    - Aside from that, Alice and Bob spend the rest of the day writing some good ol' code, and looking forward to the weekend.

### Planning the rotation

- Managers are in charge of planning the rotation. Two weeks before the end of each "full cycle", managers will post the rotation for the following N/2 weeks (the "full cycle", where N = number of team members).
    - At the time of writing, the number of weeks in a full cycle is likely to be 5/6.
- Team members must mark their calendars or request a change in the rotation if they have other commitments in their assigned week. (Holidays, conferences, ...)
- Prefer same timezones (communication is key)
- Prefer knowledge sharing (mix tm2 <> gnovm, or strong pr culture <> weak pr culture)

## Tools

There are a good amount of existing tools you can use to oversee incoming PRs.

- The [**Pull Requests**](https://github.com/orgs/gnolang/projects/4) board is a good default that should work as a baseline tool for most.
    - [The "Triage" view](https://github.com/orgs/gnolang/projects/4/views/2) on the Pull Requests board is probably the best starting point for performing reviews.
    - Unfortunately it has no options for "last updated" of "created". GitHub PR/issue search can be a good substitute.
- Setting up notifications (and making sure they are always enabled for participating conversations)
    - Some prefer the GitHub UI, some emails. GitHub has fine-grained settings you can [set up](https://github.com/settings/notifications) (Custom Routing is a useful feature if you use emails).
    - Enabling notifications can help you be up-to-speed with any replies being posted on your triage week.
- GitHub PR/Issue search sorting
    - There are some good sorting filters when looking at the [pull requests tab on GitHub](https://github.com/gnolang/gno/pulls)
    - You can use "Least recently updated" to see the most "stale" conversations on the repostory.
    - But "recently updated" too can be effective as well, to see what PRs have been updated and can likely move forward.
    - You can use the `-is:draft` query to filter out draft PRs.
- Make sure to communicate regularly with your co-triager. Suggestions:
    - Check out the above example for an example of a "workflow" with your co-triager.
    - If you need a hand figuring out the agenda for the review meeting, ping Morgan.
- Graphite
    - Graphite is a tool for PR reviews, suggested by Guillhem. You may enjoy it for its UI in reviewing PRs; however, it can prove useful also to have something similar to a UI for the "Incoming" and "Backlog" PRs.
    - Some WIP configurations: [Triage (Incoming)](https://app.graphite.dev/?new-section=eyJvciI6W3siYW5kIjpbeyJub3R0ZWQiOmZhbHNlLCJvciI6eyJyYXdFeHBycyI6W3sia2luZCI6IkNPTlNPTElEQVRFRF9QUl9TVEFUVVNfSVMiLCJzdGF0dXMiOiJPUEVOIn0seyJraW5kIjoiQ09OU09MSURBVEVEX1BSX1NUQVRVU19JUyIsInN0YXR1cyI6IkRSQUZUIn1dfX0seyJub3R0ZWQiOnRydWUsIm9yIjp7InJhd0V4cHJzIjpbeyJraW5kIjoiUkVWSUVXX1NUQVRVU19JUyIsInN0YXRlIjoiSEFTX0NIQU5HRVNfUkVRVUVTVEVEIn0seyJraW5kIjoiUkVWSUVXX1NUQVRVU19JUyIsInN0YXRlIjoiT05FX09SX01PUkVfQVBQUk9WQUxTIn0seyJraW5kIjoiUkVWSUVXX1NUQVRVU19JUyIsInN0YXRlIjoiSEFTX1VOQUREUkVTU0VEX0NIQU5HRVNfUkVRVUVTVEVEIn0seyJraW5kIjoiUkVWSUVXX1NUQVRVU19JUyIsInN0YXRlIjoiSVNfRlVMTFlfQVBQUk9WRUQifSx7ImtpbmQiOiJSRVZJRVdfU1RBVFVTX0lTIiwic3RhdGUiOiJIQVNfQUNUSVZFX1JFVklFVyJ9LHsia2luZCI6IlJFVklFV19TVEFUVVNfSVMiLCJzdGF0ZSI6IkFQUFJPVkVEX0dJVEhVQiJ9XX19LHsibm90dGVkIjp0cnVlLCJvciI6eyJyYXdFeHBycyI6W3sia2luZCI6IkNPTlNPTElEQVRFRF9QUl9TVEFUVVNfSVMiLCJzdGF0dXMiOiJDTE9TRUQifSx7ImtpbmQiOiJDT05TT0xJREFURURfUFJfU1RBVFVTX0lTIiwic3RhdHVzIjoiTUVSR0VEIn0seyJraW5kIjoiQ09OU09MSURBVEVEX1BSX1NUQVRVU19JUyIsInN0YXR1cyI6Ik1FUkdJTkcifV19fV19XX0%3D) | [Backlog](https://app.graphite.dev/?new-section=eyJvciI6W3siYW5kIjpbeyJub3R0ZWQiOmZhbHNlLCJvciI6eyJyYXdFeHBycyI6W3sia2luZCI6IkNPTlNPTElEQVRFRF9QUl9TVEFUVVNfSVMiLCJzdGF0dXMiOiJPUEVOIn1dfX0seyJub3R0ZWQiOnRydWUsIm9yIjp7InJhd0V4cHJzIjpbeyJraW5kIjoiQ09OU09MSURBVEVEX1BSX1NUQVRVU19JUyIsInN0YXR1cyI6IkNMT1NFRCJ9LHsia2luZCI6IkNPTlNPTElEQVRFRF9QUl9TVEFUVVNfSVMiLCJzdGF0dXMiOiJNRVJHRUQifSx7ImtpbmQiOiJDT05TT0xJREFURURfUFJfU1RBVFVTX0lTIiwic3RhdHVzIjoiTUVSR0lORyJ9LHsia2luZCI6IkNPTlNPTElEQVRFRF9QUl9TVEFUVVNfSVMiLCJzdGF0dXMiOiJEUkFGVCJ9XX19LHsibm90dGVkIjp0cnVlLCJvciI6eyJyYXdFeHBycyI6W3sia2luZCI6IlJFVklFV19TVEFUVVNfSVMiLCJzdGF0ZSI6IkhBU19BQ1RJVkVfUkVWSUVXIn1dfX1dfV19)
        - Please feel free to improve them and suggest changes!

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
