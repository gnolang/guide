# Introduction

The Gno.land core team collaborates primarily on GitHub. [gno.land core team project board](https://github.com/orgs/gnolang/projects/38) is a kanban-style board that serves as a source of truth.

## Overview

Gno.land core team kanban board consists of the following columns:

1. Triage. All items created on the [gnolang/gno](https://github.com/gnolang/gno) repo are automatically added. Team leads will review and optionally move to Backlog.
2. Backlog. Items we want to do, but don't know when. Once we determine priority, we move the item to Todo.
3. Todo. Items are prioritized, and optionally already assigned to a team member. Items in Todo are up for grabs by anyone on the team. Once you start working on it, assign yourself and move it to In Progress
4. In Progress. Items actively worked on. Ideally each team member will have no more than 3 items at the same time. If the item hasn't been worked on for a week, move back to Todo. If you open a PR, move it to In Review. If you close it without a PR, mve it to Done.
5. In Review. For non-draft PRs waiting for 2 reviews (recommendation, not a rule). If a PR is merged or closed, move to Done. If a PR needs more work and moves to draft, move the item to Todo.
6. Done. An item is either merged or closed.

Each item also has priority assigned:
- P0: the project is down and all work stops until this issue is resolved.
- P1: finish this task to unblock someone else, required to be done before other things.
- P2: ordinary flow of work.
- P3: nice to have, but not required.
- P4: informational only.

## How to use the kanban board

When choosing what to do, stick to these principles
1. Right-to-left. When starting your day, check out the In Review board first, and try to review at least one PR. Then move over to your In Progress items. If you don't have anything to work right now, or need to mix it up, pick an item from Todo and start working on it.
2. Top-to-bottom. Sort the columns by priority and start from the top.

Reviewing PRs
1. Prioritize reviews of contributor PRs. We want to demonstrate respect and consideration, and keep them engaged.
2. If you are blocked on an item, leave a comment describing the criteria to unblock it.
3. PR best practices. Ideally each PR in the In Review column should: have enough context in the description, meet all specified requirements and quality standards (CI / lint / code style) 
4. Try to have at least 2 approvals. 3+ if it's a critical PR. For single line changes or non-functional changes 1 approval is enough.

