# Security policy

This page covers how to report a vulnerability in the Okoflow Homebrew tap and what is in scope.

## Supported versions

Only `main` is supported. Each cask points to the latest release of its app.

## Reporting a vulnerability

Report a vulnerability through [GitHub private vulnerability reporting](https://github.com/okoflow/homebrew-tap/security/advisories/new). Don't open a public issue, pull request, or discussion for a security problem.

Include what helps reproduce and assess the issue:

- The cask and the commit.
- Steps to reproduce, or a proof of concept.
- The impact you expect.

You receive an acknowledgment within three business days and a triage decision within seven business days.

## Scope

In scope: the casks in this repository, such as a download URL, checksum, or install step that lets someone install a file other than the app's signed release.

Out of scope: vulnerabilities in an app itself; report those in the app's repository, for example [Waft](https://github.com/okoflow/waft/security/advisories/new). Vulnerabilities in Homebrew are reported to Homebrew.
