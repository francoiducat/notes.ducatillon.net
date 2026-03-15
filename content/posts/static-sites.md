---
title: Evolution of Static Sites
date: 2026-03-13
description: A technical comparison of modern web frameworks
categories: [ Web Architecture ]
tags: [Astro, Hugo, Islands Architecture, Partial Hydration, Performance]
---

# Why "Islands Architecture" is Changing the Web in 2026

## The Shift in Strategy

For many years WordPress set the bar: easy installs, editorial workflows, and server-rendered pages that worked out of the box for blogs and small sites. That period (the "WordPress era") taught us the value of simple publishing and immediate functionality.

Later came the SSG era (Hugo and similar): performance from pre-built HTML and tiny hosting footprints.

Now we're in a third phase where frameworks (Next.js, Docusaurus, Astro) balance server rendering, partial hydration, and selective client-side interactivity. The key question today is when and where JavaScript runs (hydration), not just whether a site is SSG or SSR.

## Why Hydration Matters

Large JS bundles delay interactivity. Islands-style or partial hydration keeps pages fast by activating only the components that need JS.

## 2026 Framework Comparison



| Feature | WordPress 📝 | Hugo 🐹 | Next.js ⚛️ | Docusaurus 📚 | Astro 🏝️ |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Created** | 2003 | 2013 | 2016 | 2017 | 2021 |
| **Intent** | General-purpose CMS | High-scale static sites | Full-stack web apps | Documentation sites | Content sites with selective JS |
| **Philosophy** | CMS-first, editorial workflows | Minimal runtime, fast builds | Server-first React, RSC | Docs-as-code, React | Zero-JS-by-default, Islands |
| **Engine** | PHP / Node | Go | Node (Turbopack/Vite) | Node (Vite) | Node (Vite) |
| **Primary Library** | PHP/JS | None | React | React | Agnostic (any) |
| **Architecture** | MPA (server-rendered) | SSG / MPA | Hybrid (SSG + SSR) | SPA | SSG (MPA by default) + Islands (partial hydration) |
| **Hydration** | Depends (plugins/themes) | None | Selective (RSC) | Full-page React | **Partial / surgical** ✅ |
| **Content** | Posts/DB | Markdown/TOML | Markdown/API/CMS | Markdown/MDX | Markdown/MDX/API |
| **Templating** | PHP/templating | Go templates | JSX | JSX | Astro components |
| **Build performance** | Varies | **Fast builds** ⚡ | Medium | Good | Good |
| **Run performance** | Varies by host/config | Excellent for static pages | High if optimized | Good for docs | **Excellent at runtime** ✅ |
| **Hosting** | PHP hosts | Cloud hosts | Cloud hosts | Cloud hosts | Cloud hosts |

## Common Cloud hosts

| Host | Notes |
| :--- | :--- |
| GitHub Pages | Simple, free for static sites and docs; great for SSG projects |
| Vercel | Optimized for Next.js and edge functions; supports serverless and RSC patterns |
| Netlify | Static hosting with serverless functions, deploy previews and CI integration |
| Cloudflare Pages & Workers | CDN-first static hosting plus edge runtimes for dynamic logic |

## Conclusion

Hugo stays best when you want tiny builds and simple hosting. Next.js is the go-to for complex web apps, WordPress remains strong for editorial sites, and Astro leads when you need content-first pages with surgical interactivity.

## Glossary

| Term | Description |
| :--- | :--- |
| **SSG** (Static Site Generation) | HTML pages are pre-built at build time. Fast serving and simple hosting, ideal for mostly-static content. |
| **SSR** (Server-Side Rendering) | Pages are rendered on the server per request (or cached). Good for personalized or frequently changing content. |
| **RSC** (React Server Components) | React components that render on the server and stream content to the client, reducing client-side JS. |
| **JSX** | JavaScript syntax extension for writing UI markup in React-style components. |
| **MDX** | Markdown with embedded JSX — lets you include interactive components inline. |
| **Hydration** | Attaching client-side JavaScript behaviour to server-rendered or static HTML to make components interactive. |
| **Partial Hydration / Islands** | Activate JS only for specific components (islands) rather than the whole page, reducing client JS. |
| **CSR** (Client-Side Rendering) | Browser fetches JS and renders the UI client-side; initial load may be slower but navigation can be fast. |
| **ISR** (Incremental Static Regeneration) | (Next.js) Rebuilds or refreshes static pages on demand or at intervals to keep content up to date. |
| **CDN** (Content Delivery Network) | Distributed servers that cache and serve static assets close to users for low-latency delivery. |
| **Headless CMS** | A CMS that exposes content via APIs so any frontend can consume it (decouples content from presentation). |
| **JAMstack** | Architecture pattern (JavaScript, APIs, Markup) that emphasizes pre-rendering and decoupled services. |
| **SPA** (Single-Page App) | Loads a single HTML page and dynamically updates the UI in the browser using client-side routing. |
| **MPA** (Multi-Page App) | Traditional model where each page is a separate HTML document served by the server or pre-built as static files. |