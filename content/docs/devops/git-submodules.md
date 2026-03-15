---
title: Git Submodules
description: A comprehensive guide to Git submodules.
tags: [git, submodules, version control]
categories: [devops]
---

# Demystifying Git Submodules: A Comprehensive Guide

Git submodules allow you to keep one Git repository as a subdirectory of another. This is a powerful feature for managing dependencies while keeping their histories separate.

In this guide, we'll use the terms **Main Project (Parent)** and **Submodule (Child)** to explain the logic.

## 1. What is a Git Submodule?

A submodule is **not** just a copy of a folder. It is a **pointer** to a specific commit in another repository.

- The **Parent** repository does not store the files of the child. It only stores:
    1.  The **URL** of the child repository (in a `.gitmodules` file).
    2.  The **Commit ID** (the specific "snapshot") that the child should be at.
- The **Child** repository remains a fully independent Git repository with its own history, branches, and remotes.

---

## 2. Common Use Cases

Why use submodules instead of just copying files?

1.  **Hugo Themes:** This is a classic example. You keep your website content in the Parent repo and the theme in a Child submodule. This allows you to update the theme easily without mixing its code with your content.
2.  **Shared Libraries:** If you have a library (e.g., a CSS framework or a set of utility functions) used across multiple projects, each project can include it as a submodule.
3.  **Vendor Code:** Keeping third-party code separate from your main application logic makes your repository cleaner and easier to maintain.

---

## 3. Developer Workflows & Commands

This section combines essential commands and the common developer workflows into a single compact reference.

- **Use case 1 — You own both Parent and Child repos:** you can push directly to the child's remote and update the parent pointer locally.
- **Use case 2 — You own the Parent repo but the Child requires review:** changes to the Child go through a PR; the Parent is updated after the Child is merged.

### Workflow

{{< mermaid >}}
flowchart TB
    subgraph RemoteServer [GitHub / Remote Server]
        ChildRemote[Child Remote]
    end

    subgraph Machine [Local Machine]
        direction TB
        subgraph IDE_Window_1 [Window 1: 'Parent' Project ]
            ParentLocal[Parent]
            ChildSub[Child]
            ParentLocal -- "0.References (commit ID)" <--> ChildSub
            ParentLocal -- "1.Edit Child files" --> ChildSub
        end

        subgraph IDE_Window_2 [Window 2: 'Child' Project]
            direction TB
            ChildRemote -- "4.git pull to see edited files" --> ChildStandalone[Child]
        end
    end

    %% Developer flows
    ChildSub -- "2a.Commit & push (owner)" --> ChildRemote
    ChildSub -- "2b.Create PR (contrib)" --> ChildRemote
    ChildRemote -- "3.Update submodule pointer" --> ParentLocal

    style IDE_Window_1 fill:#F0F6F8,stroke:#A7B7BC,stroke-width:1px
    style IDE_Window_2 fill:#F7F9F1,stroke:#A7B7BC,stroke-width:1px
    style RemoteServer fill:#F8F8FB,stroke:#A7B7BC,stroke-width:1px
{{< /mermaid >}}


### Commands

| Action | Command (from Parent Root) | Context |
| :--- | :--- | :--- |
| **Install Submodule** | `git submodule add <url>` | Parent |
| **Clone with Submodules** | `git clone --recursive <url>` | Parent |
| **Pull latest Child updates** | `git submodule update --remote --merge` | Parent |
| **Edit Child code** | `git checkout main` | Inside Child folder |
| **Save Child changes** | `git push origin main` | Inside Child folder |
| **Update Parent pointer** | `git add <child-folder>` | Parent |
