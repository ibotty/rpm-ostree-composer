# Compose and optionally sign rpm-ostree trees

This image composes an ostree from a given git repository (see below). It can
continuously build a new tree when argument "loop" is given.

## Configuration

The following environment variables are used.

 * CONFIG_REPO, the public repository to use;
 * CONFIG_BRANCH, the branch to check out;
 * CONFIG_FILE, the config file to use in the repository;
 * DELAY, the delay between build attempts when looping

It defaults to fedora 23's fedora-atomic-docker-host and a delay of 1 hour
between builds.

## Signing commits

Is not yet finalized. For now mount the gnupg homedir to '/secrets' (or
`$GPGDIR`). It is meant to use kubernetes' secrets which will require some
changes.
