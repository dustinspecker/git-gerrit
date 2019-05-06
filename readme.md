# git-gerrit
> Git commands Dustin uses with Gerrit

## Install

1. `ssh` and `jq` must both be installed to use `git gerrit`
1. Clone this respository via `git clone https://github.com/dustinspecker/git-gerrit ~/git-gerrit`
1. Add `git-gerrit` to `PATH` via `export PATH=$PATH:~/git-gerrit`
1. The commands listed below are now available

## Usage

The available commands expect to be ran in a Git repository whose `origin` remote is using ssh protocol.

## Available commands

- `git gerrit checkout CHANGE OPTIONAL_PATCHSET`
  - Checks out the latest patchset revision for a given Change-Id or Changeset Number
  - If OPTIONAL_PATCHSET is provided then that patchset is checked out instead of the latest

- `git gerrit cherry-pick CHANGE OPTIONAL_PATCHSET`
  - Cherry-picks the latest patchset revision for a given Change-Id or Changeset Number
  - If OPTIONAL_PATCHSET is provided then that patchset is cherry-picked instead of the latest

- `git gerrit pull OPTIONAL_PATCHSET`
  - Looks at the `HEAD` commit to find Change-Id and pulls the latest patchset revision for the found Change-Id
  - If OPTIONAL_PATCHSET is provided then that patchset is pulled instead of the latest

- `git gerrit query ...`
  - Used to run arbitrary gerrit queries, mostly used for debugging.


## License

MIT
