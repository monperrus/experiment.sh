# experiment.sh

Run computational experiments through the Github architecture.

The idea is that each branch in a Github repo is an experiment. Then, we use the commit status URL to give the URL to the result of the experiment.

The also ensures reproducibility, modulo the fact that some resources may be downloaded from the Internet, and they may disappear or change.

## How to use experiment.sh?

* ask to be added to this repo
* push a branch to https://github.com/monperrus/experiment.sh/, this branch must contain a script called `experiment.sh`.
* (the backend runs `bash experiment`)
* look at the log set as a a branch status

Available environment variables in experiment.sh:

* GIT_COMMIT The commit hash being checked out.
* GIT_BRANCH The branch name being used.

## Past experiments

See https://github.com/monperrus/experiment.sh/branches

## Backend

Several backends can support experiment.sh. For now, the backend is implemented using Jenkins

## See also

* [Open-science and Travis: continuous integration for reproducible scientific experiments](https://www.monperrus.net/martin/travis-for-scientific-experiments)
