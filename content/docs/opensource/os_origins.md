# OS Origins

*Where did Linux / Windows / macOS come from?*

A concise overview of how modern operating systems evolved — from early UNIX systems to Linux distributions, Windows NT, macOS, Android, and Chrome OS.

{{% hint info %}}
**💡Tip💡**  
👉Zoom in anywhere on the graph
{{% /hint %}}

{{< mermaid >}}
graph TB

%% ========= USAGE COLOR DEFINITIONS =========
classDef desktop fill:#E8EEF3,stroke:#777;
classDef server fill:#F3EFEA,stroke:#777;
classDef hybrid fill:#E9F1EC,stroke:#777;

%% ========= LEGEND =========
subgraph LEGEND["Legend"]
    direction TB
    D1[Desktop / User-facing]:::desktop
    D2[Server / Infrastructure]:::server
    D3[Hybrid usage]:::hybrid
    D4[Solid arrow → Direct code lineage]
    D5[Dashed arrow → Influence / POSIX / UNIX-like]
end

%% ========= EARLY SYSTEMS =========
subgraph EARLY["Early Systems"]
    direction TB
    CP[CP/M<br/>1974<br/>Gary Kildall]:::server
    DOS[MS-DOS<br/>1981<br/>Microsoft]:::desktop
    CP --> DOS
end

%% ========= UNIX ROOT =========
subgraph UNIX["UNIX Family"]
    direction TB
    U[UNIX<br/>1969<br/>Bell Labs]:::server
    BSD[BSD Unix<br/>1977<br/>Berkeley]:::server
    SYSV[System V<br/>1983<br/>AT&T]:::server
    U --> BSD
    U --> SYSV
end

%% ========= BSD DERIVATIVES =========
subgraph BSD_SYS["BSD-derived Systems"]
    direction TB
    DARWIN[Darwin / XNU<br/>2000<br/>Apple]:::hybrid
    MAC[macOS<br/>2001]:::desktop
    IOS[iOS / iPadOS<br/>2007]:::desktop
    BSDOS[FreeBSD / OpenBSD / NetBSD<br/>1993–1996]:::server
    BSD --> DARWIN
    DARWIN --> MAC
    DARWIN --> IOS
    BSD --> BSDOS
end

%% ========= CLASSIC MAC =========
CLASSIC[Classic Mac OS<br/>1984<br/>Apple]:::desktop
CLASSIC -.-> MAC

%% ========= MINIX =========
MINIX[MINIX<br/>1987<br/>Andrew S. Tanenbaum]:::server

%% ========= LINUX KERNEL =========
subgraph LINUX["Linux Kernel"]
    direction TB
    LINUXK[Linux Kernel<br/>1991<br/>Linus Torvalds]:::server
end

%% ========= LINUX DISTRIBUTIONS CALLOUT =========
subgraph LINUXDIST["Linux Distributions"]
    direction TB
    NOTE[Linux is a kernel.<br/>Distributions combine it with<br/>userland, package managers,<br/>and policies.]:::hybrid
end
LINUXK --> NOTE

%% ========= EARLY LINUX DISTROS =========
subgraph EARLYDIST["Early Linux Distributions"]
    direction TB
    SLACK[Slackware<br/>1993]:::server
    DEB[Debian<br/>1993]:::server
    RH[Red Hat Linux<br/>1994]:::server
    LINUXK --> SLACK
    LINUXK --> DEB
    LINUXK --> RH
end

%% ========= DEBIAN FAMILY =========
subgraph DEBFAM["Debian Family"]
    direction TB
    UB[Ubuntu<br/>2004<br/>Canonical]:::hybrid
    MINT[Linux Mint<br/>2006]:::desktop
    KALI[Kali Linux<br/>2013]:::server
    DEB --> UB
    UB --> MINT
    DEB --> KALI
end

%% ========= RED HAT FAMILY =========
subgraph RHF["Red Hat Family"]
    direction TB
    FED[Fedora<br/>2003]:::hybrid
    RHEL[RHEL<br/>2002]:::server
    CLONES[RHEL Clones<br/>CentOS / Alma / Rocky<br/>2004–2021]:::server
    RH --> FED --> RHEL --> CLONES
end

%% ========= INDEPENDENT DISTROS =========
subgraph INDEP["Independent Linux Distributions"]
    direction TB
    ARCH[Arch Linux<br/>2002]:::hybrid
    GENTOO[Gentoo<br/>2002]:::hybrid
    LINUXK --> ARCH
    LINUXK --> GENTOO
end

%% ========= MOBILE / SPECIALIZED =========
subgraph MOBILE["Mobile / Specialized Linux"]
    direction TB
    AND[Android<br/>2008<br/>Google]:::desktop
    CHROMIUM[Chromium OS<br/>2009]:::hybrid
    CHROME[Chrome OS<br/>2011]:::desktop
    LINUXK --> AND
    LINUXK --> CHROMIUM --> CHROME
end

%% ========= WINDOWS =========
subgraph WINDOWS["Windows NT Family"]
    direction TB
    NT[Windows NT<br/>1993]:::server
    W2K[Windows 2000 / XP<br/>2000–2001]:::hybrid
    W7[Windows 7<br/>2009]:::hybrid
    W10[Windows 10 / 11<br/>2015–2021]:::desktop
    NT --> W2K --> W7 --> W10
end

%% ========= INFLUENCE LINKS =========
U -.->|POSIX / UNIX concepts| LINUXK
MINIX -.->|UNIX-like| LINUXK
DOS --> NT

%% ========= SUBGRAPH STYLING =========
style UNIX fill:#FBF2EA,stroke:#B85C38,stroke-width:2.5px
style BSD_SYS fill:#EEF3F8,stroke:#4A6FA5,stroke-width:2.5px
style LINUX fill:#F6F1E7,stroke:#9C8A4D,stroke-width:2.5px
style EARLYDIST fill:#EDF4EF,stroke:#5C8A72,stroke-width:2px
style DEBFAM fill:#EAF3F1,stroke:#4F8F8B,stroke-width:2px
style RHF fill:#F4EEE9,stroke:#9A6B4F,stroke-width:2px
style INDEP fill:#F1F3F3,stroke:#6B7280,stroke-width:2px
style MOBILE fill:#FAF0EB,stroke:#C97C5D,stroke-width:2px
style WINDOWS fill:#EEF2F7,stroke:#3A5F8C,stroke-width:2.5px
style EARLY fill:#F4F4F2,stroke:#7A7A7A,stroke-width:2px
style LEGEND fill:#F6F6F6,stroke:#999,stroke-width:1.8px
style LINUXDIST fill:#EDF2F7,stroke:#5A6F8E,stroke-width:2px
{{< /mermaid >}}