# git-gerrit
> Git commands Dustin uses with Gerrit

[![Build Status](https://travis-ci.org/dustinspecker/git-gerrit.svg?branch=master)](https://travis-ci.org/dustinspecker/git-gerrit)

## Install

1. `ssh` and [jq](https://stedolan.github.io/jq/) must both be installed to use `git gerrit`
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

- `git gerrit fetch CHANGE OPTIONAL_PATCHSET`
  - Fetch the latest patchset revision for a given Change-Id or Changeset Number
  - If OPTIONAL_PATCHSET is provided then that patchset is fetched instead of the latest
  - Useful for getting a reference to FETCH_HEAD set
    - `git gerrit fetch CHANGE OPTIONAL_PATCHSET && git rebase --onto FETCH_HEAD HEAD^ master`

- `git gerrit link CHANGE_ID_OR_COMMIT_SHA`
  - Return Gerrit link for the given CHANGE_ID or COMMIT_SHA
  - If a COMMIT_SHA is provided then the returned link will include the patchset number of the respective SHA

- `git gerrit pull OPTIONAL_PATCHSET`
  - Looks at the `HEAD` commit to find Change-Id and pulls the latest patchset revision for the found Change-Id
  - If OPTIONAL_PATCHSET is provided then that patchset is pulled instead of the latest

- `git gerrit query ...`
  - Used to run arbitrary gerrit queries, mostly used for debugging.

- `git gerrit revert CHANGE OPTIONAL_PATCHSET`
  - Revets the latest patchset revision for a given Change-Id or Changeset Number
  - If OPTIONAL_PATCHSET is provided then that patchset is reverted instead of the latest

## Development

### Install required dependencies

1. `make` and [shellcheck](https://github.com/koalaman/shellcheck#user-content-installing) must be installed
   - `git-gerrit` is using the latest stable version of `shellcheck`
2. Run `make test` to verify linting passes

## License

MIT
