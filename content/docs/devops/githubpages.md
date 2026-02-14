---
title: Github Pages
categories: [ DevOps & Automation, Static Site Engineering ]
tags: [ github-pages, hugo, mkdocs, ci-cd, automation ]
bookToc: false
---

## Static content hosting with GitHub Pages

Let's review the nuances between site types and how to automate their deployment.

### GitHub Pages Site Types

| Feature | User Site | Organization Site | Project Site |
| :--- | :--- | :--- | :--- |
| **Primary Intent** | Personal portfolio, resume, or central hub. | Brand, company, or collective identity. | Documentation or landing page for a specific repo. |
| **Repo Naming** | `username.github.io` | `orgname.github.io` | `any-repo-name` |
| **Default URL** | `https://username.github.io` | `https://orgname.github.io` | `https://username.github.io/repo/` |
| **Apex Domain** | **Supported** (e.g., `domain.com`). | **Supported** (e.g., `company.com`). | **Supported** (e.g., `project.com`). |
| **Subdomain** | **Supported** (e.g., `user.domain.com`). | **Supported** (e.g., `org.domain.com`). | **Supported** (e.g., `docs.domain.com`). |
| **Capacity** | One (1) per account. | One (1) per organization. | Unlimited per account/org. |
| **Permissions** | Individual ownership. | Shared team administrative access. | Inherited from the project repository. |

### Deployment Workflow Strategies

Static site generators (SSGs) like Hugo or MkDocs require a build step to turn source files into HTML. How you handle that build defines your workflow.

| Strategy | Manual (Branch-Based) | GitHub Actions (Recommended) |
| :--- | :--- | :--- |
| **Mechanism** | Build locally and push the `public/` folder to a `gh-pages` branch. | Remote build triggered automatically by a `git push` to `main`. |
| **Automation** | None (requires manual commands or local scripts). | **Fully Automated on Push.**  |
| **Main Branch Health** | **Clean.** Source on `main`, build on `gh-pages`. | **Superior.** No deployment branch needed if using Actions as the Source. |
| **Reliability** | Risk of local environment drift. | Deterministic and repeatable in the cloud. |
| **Maintenance** | Local scripts break if folder paths change. | Logic is versioned as code in `.github/workflows/`. |

### Deep Dive: The GitHub Actions Workflow

#### The Power of GitHub Actions

While a manual **Branch-Based** approach *can* keep the `main` branch clean of generated files, **GitHub Actions** makes that cleanliness effortless and systematic.

#### Why this is better

* **True Separation of Concerns**: The `main` branch focuses on the source code. The **GitHub Action**  handles the rendering.
* **No Local Dependencies**: No need for Hugo or MkDocs installation locally to fix a typo. Edit a file on GitHub, and the Action deploys the fix 🚀
* **No Repo Bloat**: You aren't committing thousands of lines of generated HTML to your history.
* **Consistency**: The site is built exactly the same way every time.

#### Behind the scene

By using GitHub Actions, the deployment logic is stored as code. When you push to `main`, a virtual container:
1.  **Checkouts** your source markdown/code.
2.  **Sets up** the environment (Python for MkDocs, Go for Hugo).
3.  **Builds** the site into a temporary directory.
4.  **Deploys** only the final results to the `gh-pages` branch, keeping your source repository lean and professional.
  

#### Example: Strata Documentation

For my **Strata** project, I use a GitHub Action to handle the build requirements of the Material theme and Mermaid diagrams. Strata Documentation is always in sync with the latest code changes without manual intervention.