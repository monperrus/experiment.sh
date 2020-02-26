# experiment.sh

Run computational experiments through the Github architecture.

The idea is that exach branch in a Github repo is an experiment per se.

We use the commit status URL to give the link to the result of the experiment.

## How to use it?

* ask to be added to this repo
* push a branch to https://github.com/monperrus/experiment.sh/, this branch must contain a script called `experiment.sh`.
* look at the log set as a a branch status

## Available environment variables

* GIT_COMMIT The commit hash being checked out.
* GIT_BRANCH The branch name being used.

## Backend

Several backends can support experiment.sh. For now, the backend is implemented using Jenkins

## See also

* [Open-science and Travis: continuous integration for reproducible scientific experiments](https://www.monperrus.net/martin/travis-for-scientific-experiments)
