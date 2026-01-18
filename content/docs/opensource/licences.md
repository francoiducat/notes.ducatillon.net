# Software Licences Explained

Licenses are responses to historical pressures, not abstract ideologies.
👉 It's basically choosing a social contract, not a legal detail.

## TLDR

- **MIT** → *Freedom without obligations*
- **Apache 2.0** → *Freedom with legal safety*
- **GPL** → *Freedom with reciprocity*

## Licence summary

| License | Birthdate | Creator / Origin | Mental model | Commercial use? | Closed-source allowed? | What must be shared | Famous examples | Who profits |
|--------|-----------|------------------|--------------|-----------------|------------------------|--------------------|----------------|-------------|
| **Unlicense** | ~2010 | Public domain attempt | *Do literally anything.* | ✅ Yes | ✅ Yes | Nothing | — | Anyone |
| **MIT** | 1988 | MIT (academia) | *Take it and run.* | ✅ Yes | ✅ Yes | Keep license notice | NumPy, Flask, Requests | Everyone |
| **BSD (2/3-Clause)** | 1988 | UC Berkeley | *Open code, no strings.* | ✅ Yes | ✅ Yes | Keep copyright notice | FreeBSD, OpenSSH | Apple, Juniper |
| **Apache 2.0** | 2004 | Apache Software Foundation | *Open, but legally safe.* | ✅ Yes | ✅ Yes | Preserve notices + patent peace | Kubernetes, Spark, Kafka | Google, Confluent |
| **MPL 2.0** | 1998 | Netscape / Mozilla | *Open files, closed products.* | ✅ Yes | ⚠️ Except MPL files | Modified MPL files | Firefox | Mozilla |
| **LGPL** | 1991 | Free Software Foundation | *Share the core, not the app.* | ✅ Yes | ⚠️ App yes, library no | Changes to LGPL library | glibc, FFmpeg | Red Hat, IBM |
| **GPL (v2/v3)** | 1989 (v1) | Richard Stallman (FSF) | *Take it, but give back.* | ✅ Yes | ❌ No (if distributed) | Full source + same license | Linux kernel, WordPress, Git | Automattic, Red Hat, Canonical, GitLab |
| **AGPL** | 2007 | FSF + Affero Inc. | *SaaS must share too.* | ✅ Yes | ❌ No (incl. SaaS) | Source, incl. network use | Nextcloud, Mastodon | Nextcloud GmbH |
| **Proprietary** | — | Vendor-defined | *You rent, not share.* | ⚠️ Limited | ✅ Yes | Fees, data, compliance | Windows, macOS | Microsoft, Apple |

## How do companies monetize open source?

Most organizations and individuals make money with open-source software through:

- Hosting, support, subscriptions, enterprise services, and trademarks (GPL, AGPL, LGPL)
- Cloud services and managed platforms (Apache 2.0, BSD, MIT)
- Support, dual licensing, enterprise contracts (LGPL)
- Products, hardware, internal use (BSD)
- Licenses, subscriptions, lock-in (Proprietary)

The monetization model is often similar across licenses, focusing on added value, services, or proprietary extensions rather than direct software sales.

## How to choose a license?

Ask yourself **one simple question first**:

> ❓ *Am I okay with someone taking my code, improving it, and never contributing back?*

- **Yes** → choose **MIT**  
  *Maximum adoption, zero friction. Your code can go anywhere.*

- **Yes, but I want legal & patent safety** → choose **Apache 2.0**  
  *Same freedom as MIT, with stronger protections for companies.*

- **No** → choose **GPL**  
  *You allow commercial use, but improvements must stay open.*

There is no “best” license — only a license that matches **your values and goals**.

## License philosophy and intent

| License | Philosophy | Intent |
| ------- | ------------ | -------- |
| **GPL (v2/v3)** | Strong copyleft / reciprocity | Ensure that all distributed modifications remain open-source under the same license, protecting user freedoms and preventing private capture of community code. |
| **Apache 2.0** | Permissive with legal safety | Promote broad collaboration and commercial adoption while providing explicit patent protections and requiring preservation of notices. |
| **MIT** | Ultra-permissive | Maximize reuse and adoption by imposing minimal restrictions, allowing selling, re-licensing, and closed-source derivatives. |
| **LGPL** | Weak copyleft (library-focused) | Allow proprietary applications to link against open libraries while ensuring improvements to the library itself remain open. |
| **AGPL** | Network copyleft | Close the SaaS loophole by requiring source code disclosure to users who interact with the software over a network. |
| **BSD (2/3-Clause)** | Permissive and business-friendly | Enable nearly unrestricted use, including proprietary and commercial use, as long as copyright notices are retained. |
| **MPL 2.0** | File-level copyleft | Require sharing of modified MPL-licensed files while allowing combination with proprietary code in larger systems. |
| **Unlicense / Public Domain** | No philosophy enforced | Remove all restrictions entirely, placing the code effectively in the public domain for unrestricted reuse. |
