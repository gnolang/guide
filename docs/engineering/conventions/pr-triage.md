# Pull Request Triage

> A process to organise the incoming reviews of PRs and create a system to
> effectively manage, week after week, all our ongoing work and ensure a swift
> feedback loop.

## Background

- We have a linearly-growing number of PRs. We are not doing enough to catch up on the work that is being done; as such, a lot of high-quality code gets stuck in review forever.
- When code is stuck in review for long, many PRs are "dropped" by the author due to lack of interest or shift of focus. This is exasperated when looking at external contributions.
- The work of reviewing PRs is not evenly distributed among the team
    - This is not so much an issue per se (some enjoy more the discussions, some more drilling on code), but the imbalance is very large and the onus of reviewing is felt more like a chore even by those who actively engage in it.

---

## Objective

- Lower the time required for the feedback loop to at most 1 week for the biggest PRs, and 3-4 days for the regular ones.
- Steadily work through our backlog of open PRs
- Reduce merge conflicts
- Prepare to scale for an open source community

## Process

- Every week, 2 members of [gno tech staff](https://github.com/orgs/gnolang/teams/tech-staff) are assigned to do PR triage for that week.
- Triage and first-review each incoming PR (= new ready PR, or moved from draft to ready):
    - Place it in the correct milestone
    - Make corrections for clarity in the title, description and label
    - **Make a first PR review**, as in-depth as you can but deferring where you lack the expertise.
        - If the PR lacks context, needs more explanation to understand what it's doing, lacks tests or documentation, **feel free to request it and defer reviewing to after that is done.**
        - The objective here is to ensure the PR doesn't have any major problems and can be handed off for finer-grained review by a codeowner.
        - Defer reviews on Draft PRs, unless the author has specifically requested an initial review (but be broad, in these reviews; no need to be specific if the code is not finalised).
    - For ready PRs, add any review requests which are not already requested by CODEOWNERS.
    - Place the PR in the correct column in the Pull Requests board.
    - _Prioritise community pull requests,_ because they are not paid they lose interest 10x faster.
    - **Prioritise this part of the process over any software development for the duration of the triage week.**
- Prepare the agenda for the review meeting
	- See the adjacent [Reviewing PRs](./pr-reviewing.md) document for some indications on how to best prepare and structure the review meeting.
    - Before the GitHub review meeting, work through the PRs you've discussed and viewed this week.
    - Add them to the "Agenda" column on GitHub and re-order them to make sure that the most important ones are at the top.
        - On the agenda, anyone can add items, but it is your responsibility to ensure to prioritize them. (If you're up to speed on most PRs, this can take as little as 15 minutes, before the call)
    - Make sure to know the context for the PRs in the review column, so that you can briefly introduce the changes via voice before kicking off its discussion.
	- Morgan and Nemanja are available as alternative leads if neither of the tragers is comfortable with leading it. However, preparing the agenda and being available to give context on the discussed PRs is still the responsibility of those on rotation.
- Push development of existing PRs along
	- There are often important PRs which are blocked for weeks awaiting reviews or feedback from the existing reviewers.
	- Use the Core Team board to see the status on other PRs and ongoing work, coordinate with Nemanja on which ones to ask for status updates.
	- Use our main internal communication channels (Signal Gno-Tech-Staff; Slack #gno-core-tech) to publicly ping team members on what should be tackled.
	- If the team members are lagging behind on providing status update, please go ahead and ask status updates individually

### Planning the rotation

- Managers are in charge of planning the rotation. Two weeks before the end of each "full cycle", managers will post the rotation for the following N/2 weeks (the "full cycle", where N = number of team members).
    - At the time of writing, the number of weeks in a full cycle is likely to be 5/6.
- Team members must mark their calendars or request a change in the rotation if they have other commitments in their assigned week. (Holidays, conferences, ...)
- Prefer same timezones (communication is key)
- Prefer knowledge sharing (mix tm2 <> gnovm, or strong pr culture <> weak pr culture)

## Tools

There are some existing tools you can use to oversee incoming PRs.

- Setting up notifications (and making sure they are always enabled for participating conversations)
    - Some prefer the GitHub UI, some emails. GitHub has fine-grained settings you can [set up](https://github.com/settings/notifications) (Custom Routing is a useful feature if you use emails).
    - Enabling notifications can help you be up-to-speed with any replies being posted on your triage week.
- GitHub PR/Issue search sorting
    - There are some good sorting filters when looking at the [pull requests tab on GitHub](https://github.com/gnolang/gno/pulls)
	- The default view is a good option to see newly created PRs.
    - You can use "Least recently updated" to see the most "stale" conversations on the repostory.
    - But "recently updated" too can be effective as well, to see what PRs have been updated and can likely move forward.
    - You can use the `-is:draft` query to filter out draft PRs.
- Make sure to communicate regularly with your co-triager. Suggestions:
    - Check out the above example for an example of a "workflow" with your co-triager.
    - If you need a hand figuring out the agenda for the review meeting, ping Morgan.

Unfortunately, at the time of writing, no tool properly encapsulates a feed for
the "incoming PRs" (= new ready PR, or moved from draft to ready). Eventually,
we'll develop one and this section will be updated.

### TODO: Stats

These are ideas for useful stats which illustrate the problem right now; I know of no tool which would let me pick them up, but I'm trying to figure out to get them because it would also help us see the difference after imlpementing this process.

Proposed tool for stats: https://github.com/change-metrics/monocle

- (open PRs - draft - closed PRs over time)
- weekly PRs done per team member (anonymised)
- average/median time for first and second review
- number of reviews received per PR (internal / external)
- time-to-completion internal/external percentiles
- feedback loop (time between author event (create / ready_for_review, commit, force-push) --> review/close) percentiles
