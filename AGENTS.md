# Repository instructions

## Technical accuracy
Verify existing identifiers against repository files, authoritative documentation, or live metadata before using them in code, specs, documentation, or reports. Do not guess APIs, paths, keys, symbols, or enumeration values. Mark unresolved facts `[UNVERIFIED -- needs lookup]`. Explicitly define new identifiers when introducing implementation components.

Write technical documentation in AD standard style. State verified facts directly; describe lookup failures, uncertainty, or contradictions when relevant.

## Companion web app work
Keep nostalgia TV companion implementation separate from native Swift browser behavior. Preserve the upstream MIT license and attribution. Attribute reused code from other projects under its own license.

Do not launch, quit, restart, or automate the installed native browser app as part of companion development. Use a separate local web preview and its own tests. Avoid unrelated edits in the old-time-radio reference checkout.

Create and verify work on an isolated ticket branch. Publish ticket work to this fork only when requested. Do not create upstream pull requests, merge, or deploy to production under a build-only request.
