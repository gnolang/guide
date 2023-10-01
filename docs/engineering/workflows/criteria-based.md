# Criteria-Based Workflow

This workflow serves projects or tasks that can be evaluated against clear, quantifiable criteria. It's especially beneficial for engagements where the objective is crystal clear, be it fixing a known bug, optimizing performance, or enhancing quality.

## Principles

- **Start with Measurement**: Every task begins with a clear, quantifiable metric, usually in the form of a unit test or benchmark.
- **Visibility**: Integrate benchmarks into the continuous integration system, ensuring that results are easily accessible and automated.
- **Iterative Enhancement**: The workflow is centered on continuous improvement against the defined criteria.
- **Open Collaboration**: Anyone can participate, given the clear and objective nature of the criteria.

## Stages & Steps

1. **Benchmark Creation**:
   * Start by defining the measurable criteria — a unit test, performance benchmark, or quality metric.
   * Integrate this benchmark into the continuous integration system, ensuring it's visible and runs automatically.

2. **Initiate Work**:
   * Open a Pull Request (PR) that includes the new criteria or benchmark.
   * The first commit should ideally show the current status and mark the PR as red, indicating that it does not meet the criteria.

3. **Development & Iteration**:
   * Work on the task aiming to satisfy the set criteria. This could be fixing a known bug, optimizing for better performance, or any other quality improvement.
   * Make incremental commits. Each commit should attempt to get the PR closer to the green status, indicating that the set criteria are being met.

4. **Review & Verification**:
   * Upon meeting the criteria (PR turns green), submit the changes for review.
   * Reviewers should ensure not only that the criteria are met but also that the broader goals of the project remain aligned.

5. **Merge & Documentation**:
   * Once reviewed and approved, merge the PR.
   * Document the improvements, changes, and the benchmark results.

## Recommendations

* **Constant Feedback Loop**: Regularly check the benchmark results to ensure alignment with the set criteria.
* **Engage the Community**: Given the clear nature of criteria, encourage community members to participate, contribute, and provide feedback.
* **Broaden Horizons**: While the focus is on meeting the set criteria, always consider the broader implications of changes to ensure the overall health of the project.
