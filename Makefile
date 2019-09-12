SHELLCHECK_DOCKER_IMAGE ?= koalaman/shellcheck:v0.7.0

.PHONY: test
test:
	docker run --rm -v "${PWD}:/mnt" ${SHELLCHECK_DOCKER_IMAGE} git-gerrit
