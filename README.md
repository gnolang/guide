## All in Bits Guide

Welcome to the internal All in Bits Guide repository! 

This project is dedicated to our staff members, contributors, and anyone who wishes to contribute more frequently with us. 
The purpose of this repository is to provide a centralized space for collaboration, sharing ideas, 
and fostering a strong community within our organization.

### Purpose

The main goal of this repository is to encourage active participation from our internal team. By maintaining this hub, we aim to streamline the process of onboarding to our projects, encourage knowledge sharing, and foster a culture of collaboration.

### Who can contribute?

- Staff members: If you're a member of our organization, feel free to actively participate in discussions, propose new ideas, and contribute code to the projects hosted here.
- Contributors: We value external contributions and welcome anyone from the community who wishes to join our efforts. Whether it's through code contributions, bug reporting, or feature suggestions, your input is highly appreciated.

### Project Scope

Please note that while we encourage contributions and engagement from everyone, this repository primarily serves as an internal project hub. It means that we may have specific goals and focus areas we don't intend to change.

### Goals and Focus

Our project's objectives and areas of concentration have been carefully established to align with our organization's vision and mission. We aim to maintain a clear direction to achieve these goals efficiently.

### How to Contribute

To contribute to this repository, follow these general guidelines:

- Fork the repository to your GitHub account.
- Create a new branch for your contribution.
- Make your changes, improvements, or additions.
- Submit a pull request, detailing the changes you've made.

Our team will review your contribution as soon as possible. We value constructive feedback, bug reports, and any other suggestions that can help enhance our projects.

We rely on MkDocs to structure our onboarding guides. To run the documentation locally, you need to have `Docker` installed.
Once done, run:
```bash
make serve
```

If you are running a Windows machine, consider installing `Docker` directly, and running:
```bash
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

Otherwise, you can also use `WSL2` on Windows, and run the `make` command mentioned above.

Thank you for your interest in contributing to our All in Bits guide!

*Note*: If you have any questions or need further clarification about the project, feel free to reach out to our team through GitHub issues or other communication channels provided in the project documentation.
