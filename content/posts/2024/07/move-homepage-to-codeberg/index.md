---
title: "Move homepage to Codeberg"
date: "2024-07-19T13:43:13+02:00"
tags: []
categories: [ Meta ]
series: []
draft: true
---
I'm currently in the process of moving as many code projects as possible from the various git providers to [Codeberg](https://codeberg.org/). I'll leave the 'why' for another day. One of my projects, and the most active, is this personal homepage. It is written in Markdown, version controlled by git, shared with a git provider, build with [Hugo](https://gohugo.io/) static site generator and published to my custom domain with a free host.

The original situation:

- The project is stored in a public GitHub repository
- The site is build, deployed and hosted by Netlify

The final situation:

- The project is stored in a public Codeberg repository
- The site is build and deployed by Codeberg CI (a Woodpecker implementation)
- The site is hosted by Codeberg Pages

## Clean the original repository

I pushed all remaining local changes to the repository, deleted all unneeded remote branches through the GitHub web UI (in fact, I only kept `main`) and verified that Netlify was still deploying a working site.

## Migrate the repository to Codeberg

I already have an account with Codeberg, if not, you should create one now. From the Codeberg site, click the `+` menu and choose "New migration". Choose GitHub, login if needed, and fill the migration form.

## Prepare for deployment

- Create empty pages branch
- DNS temp

## Enable Woodpecker CI

Woodpecker is officially still in beta with Codeberg, so you need to apply for access first.

Add repo to CI
Add secrets
Create pipeline .woodpecker.yml
Check site at temp address (or through cb pages personal site)
