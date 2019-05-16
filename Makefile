SHELLCHECK_EXECUTABLE ?= shellcheck

.PHONY: test
test:
	${SHELLCHECK_EXECUTABLE} git-gerrit
