# Summary

@kouteki 

April 5, 2024

## Objective

As a new Technical Project Manager, understand how the Gno.land Core team operates, and provide a list of improvements to be implemented.

The audit has reviewed the following:
1. Effectiveness of project processes
2. Clarity and efficiency of communication channels
3. Team's strengths and areas of improvements

Methodology
1. Interview the Core team and external stakeholders
2. Observe the team communication and meetings
3. Review documentation, comm channels and project management tools 

## Results

The main gaps and opportunities for improvement identified in the audit
1. PR triage and reviews creating backlog and blockers
2. Lack of roadmap
3. Context switching
4. Meeting ownership
5. Jae's bandwidth for reviews and approval
6. Communication gap between technical and non-technical personnel

Based on the findings, the list of proposed improvements we should focus on is the following:
1. Improve the PR review process
2. Introduce the roadmap
3. Own the meetings

# Audit

## Communication

**Comm Tool Inventory & effectiveness**
- GitHub is the primary communication and collaboration platform tool for the Core team. It serves great as a way to track engineering progress, discuss ideas and collaborate. There is a strong inclination to put on GitHub every idea, assets, findings (like this audit) as a way to run a fully open sourced project.
- Signal is used internally by the Core team when communicating with Manfred and Jae. In rare instances Signal is used to contact Core team members outside working hours.
- Slack is used internally for more structured communication between Core team members, as well as communication with the rest of the org. There's a plan to phase out Slack in favor of [Matrix](https://matrix.org/), which will allow us to move most Signal conversations to Matrix; no ETA for this at the moment.
- Notion is used for cross-team project collaboration, and serves as a primary project board for non-technical teams.
- Email is used rarely, primarily for company wide collaboration.
- Hack.md is used primarily for document drafts before being published permanently on GitHub. Both being in markdown, it's a relatively straightforward transition.
- Google Meet is where most of the internal meetings happen.
- Discord is used for public meetings which are open to the public.

**Gaps and bottlenecks in information flow**
- GitHub is hard to track for non-technical collaborators within the company. We're forced to compromise and by keeping cross-team efforts in Notion, as well as logging top level OKR in Notion. This created overhead and potential disparity in the info on Notion and GitHub (at least until we find a way to automate this)
- Notion, on the other hand, is unsuitable tool for project management for the Core team because GitHub offers way more value with less effort. It's also against the open source philosophy of this project.
- The Core team does not effectively communicate their progress/milestones to non-technical people in the company in a way they would understand.
- Signal is a chat tool, and inefficient when trying to have multiple conversations, but is essential since it's the main comms channel to Jae and Manfred. In all other scenarios Slack is the de facto online collaboration tool for the Core team.
- HackMD VS GitHub - there are no hard rules when to use one over another.

## Current Processes

### Ideation

Ideation is primarily done async (GitHub issues, HackMD docs). Alternatively in online workshops and meetings.
1. When a team member has an idea, they create a GitHub issue to explain the challenge and how they plan to solve it.
2. If the issue doesn't get peer feedback, team member pings peers on one of the comms channels.
3. If the issue still doesn't get peer feedback, it's consigned indefinitely to the GitHub backlog.

### Development

1. Every team member is more or less free to pick what they are working on. 
2. Once the work is started, the owner reports progress on a weekly basis.
3. If the progress is not reported, however, the task drops off our radar, and there's no accountability.

### PR reviews

1. When a PR is ready for a review, the whole team is automatically added as reviewers
2. There's no process on who reviews what. Team members choose randomly (~200 PRs are currently in the repo), or stick to familiar code.
3. High priority PRs are mentioned in the comm channels, and put on agenda for the [weekly PR review](https://github.com/orgs/gnolang/projects/4/views/1) board.
4. At least 2 reviews are generally needed, including at least 1 Core team member.
5. If an issue needs Jae's approval, he is notified via comm channels, as well as on the weekly PR review.
6. There is no special case handling for external contributors.

### Documentation 

- [docs.gno.land](https://docs.gno.land/) is the public technical documentation repository that's regularly maintained.
- HackMD is used to document weekly status updates, which are then deposited on [GitHub](https://github.com/gnolang/meetings/issues/36)
- HackMD is used to update implementation partners on a biweekly basis, which are then deposited on [GitHub](https://github.com/gnolang/meetings/issues/37)
- Town Hall updates are collected biweekly and posted on Notion, along with the town hall videos.

## Team Dynamics

### Team Structure

- Cross-functional team, with individual members serving as silos of knowledge
- Composed exclusively of seniors
- Geographically distributed between US (Ray) and EU (Miloš)
- EU team reports to Manfred, US to Jae

### Communication

- Async: GitHub (issues and PRs), HackMD (private discussions), Slack, Signal (with Jae, Manfred)
- Sync: Core team worldwide sync (weekly), Developer Call (biweekly), Gno dev chat (weekly), GitHub review session (weekly), 1:1 (weekly/biweekly)

### Conflict Resolution

Conflicts are resolved in a civil manner between participants. Escalations were needed solely for technical topics, and those escalations went to either Manfred or Jae, depending on the impact of the decision.

### Meetings

**Gno weekly world staff sync**

Result: a document containing progress done in the past 7 days
Cycle: weekly
Length: 1h
Participants: Core team, DevRel
Engagement rate (percentage of Core team attendees who actively participate vs those who just listen): 100%
Optimal: Yes

**Gno dev chat**

Result: open ended discussion (coffee session)
Cycle: weekly
Length: 30min
Participants: Euro Core team, DevRel
Engagement rate: 30%
Optimal: Yes

**Gno.land Developer Call (Core)**

Result: Progress update given by the Core team to the community, questions and concerns addressed
Cycle: biweekly
Length: 1h
Participants: Core team, DevRel
Engagement rate: 30-50%
Optimal: Yes

**Gno.land Developer Call (Contributors)**

Result: Progress update given by contributors to the Core team and the community, questions and concerns addressed
Cycle: biweekly
Length: 1h
Participants: Core team, DevRel
Engagement rate: 30-50%
Optimal: Yes

**Gno GitHub Review Session**

Result: Discussions and decisions made on specific PRs
Cycle: weekly
Length: 1h
Participants: Core team, DevRel, Jae
Engagement rate: 10-20%
Optimal: No

___

**Observations**

- Overall the meeting frequency and length are optimum
- There is opportunity to further improve the focus of some meetings. An example given by the team is the Developer Call; it has been restructured and agenda prepared ahead of time, resulting in better conversations and less time spent by the team.
- The only immediate issue is the Gno GitHub review session. Participation rate is very low, more often than not the agenda put forward is not followed, and the meeting derails into conversation on 1-2 topics that may or may not be related to the agenda.
   
# Conclusions

## Pain Points and Areas for Improvement:

Based on the observations and interviews with the team members, I've put together a list of pain points and areas of improvement that I've identified as priority (in no particular order)
1. **PR triage and reviews are creating a backlog and blockers.** Triage process exists, but it's not enforced. Reviews aren't prioritized by impact. Some engineers are reluctant to review code they aren't very familiar with. As a result, the team often randomly selects PRs to review, or chooses based on the zone of comfort. 
2. **Lack of roadmap**. The team wants to map their work against the roadmap, so they could understand which contributions are more relevant. The current roadmap is too high level and the feature set hasn't been locked in. 
3. **Context switching**. Overlaps with the PR issue & lack of roadmap. When a PR is reviewed after a 4-month delay, the PR author needs time to recall the context and resume the effort. And the lack of roadmap forces engineers to treat most issues equally, spending effort on trivial topics.
4. **Meeting ownership**. The team is strongly against unstructured meetings and bike shedding. This mostly happens in ad-hoc meetings.
5. **Jae's bandwidth for reviews and approval**. Overlaps with PR triage and reviews. The team feels it's hard to get Jae to approve or engage certain topics, and we need to be more effective with the time we have.
6. **Communication gap between technical and non-technical personnel**. Core team's internal communication is optimal, as well as communication with other technical teams like DevX. However, most of the non-technical teams reported difficulty understanding the tech lingo. This also manifests in being unable to properly understand, track and prioritize requests to and from the Core team. 

## Strengths

During the audit a number of team strengths were manifested. We'd want to reinforce these strengths as much as possible, or at the very least not harm them.

- **High sense of agency**. Core team members aren't just waiting to be told what to do; they pursue their own ideas to contribute to the project.
- **Balance between tasks relevant to business and passion projects**. The team understands that we need to deliver business value and they are keeen on having a roadmap that would help them prioritize their work.
- **Well organized despite a lack of project framework**. This is a great indicator of the Core team's motivation and seniority.
- **Good async collaboration**. Almost everything happens on GitHub. Online meetings serve as checkpoints. No DMs. Almost no unconstructive criticism.


# Action Plan
   
## Improve the PR review process

Goal: Reduce the PR review loop to a state where there aren't any blockers to ongoing development and external contributors feel recognized.

**Short term**

Success metric: Reduce the non-draft PR backlog by 50% (Mar 26: 94 open non-draft PRs)

Week 1
1. Each team member reviews their current non-draft PRs
	1. Close PRs that are no longer relevant
	2. If needed, update relevant PRs
	3. For blocked PRs leave a comment explaining the unblock criteria

Week 2

1. Set aside 2-3 days in the week for the whole team to review the non-draft PRs
2. Take inventory of the remaining non-draft PRs at the end of the week

**Long term**

Success metric: PR review loop is <2 weeks for the initial review (surface scan, no deep dive into the code) for Core PRs, <1 week for external contributors

1. Define and implement the new PR review process, with special consideration for bugs vs new features, as well as priority.
3. TPM takes ownership over the PR triage process, incl. getting Jae's reviews
4. Update the PR Review Session agenda & take ownership of the meeting

### Introduce the roadmap

Goal: Align the Core team's development effort toward a common goal. Make stakeholders confident that were making progress and building something of value

**Short term**

Success metric: All Core team members and key stakeholders have signed off on the roadmap.

Testnet4 roadmap
1. Align with the Core team on the Testnet4's feature set
2. Define drivers for each Testnet4 deliverable
3. Build and maintain a DAG-based roadmap that's able to inform all internal and external stakeholders of the progress, both on the strategic (epic) and tactical (issue/PR) level
4. Communicate out the Testnet4 roadmap and its progress regularly
5. Track the engineer progress against the roadmap, and help prioritize work relevant to the roadmap

**Long term**

Success metric: All Core team members and key stakeholders have signed off on the roadmap.

The road to mainnet
1. Align with leadership and the Core team on what the next era/milestone should be on the road to mainnet launch
2. Build and maintain a DAG-based roadmap that's able to inform all internal and external stakeholders of our plan on a strategic (epic) level
3. Communicate out the road to mainnet on a regular basis

### Bridge the technical communication gap

Goal: Everyone knows what the Core team is building

Success metric: all stakeholders understand our roadmap, how they need to contribute, and feel they are regularly updated 

1. Transfer ownership of meetings to TPM wherever it makes sense
2. Reduce the number of input requirements from the Core team to a single document
3. Maintain the Notion project board with a strategic Gno.land roadmap and external dependencies, and look for opportunities to automate the process
4. Write and maintain artifacts that simplify technical information