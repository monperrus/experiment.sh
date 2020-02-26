# experiment.sh

Run computational experiments through the Github architecture.

## How to us it?

* ask to be added to this repo
* push a branch to https://github.com/monperrus/experiment.sh/, this branch must contain a script called `experiment.sh`.
* look at the log set as a a branch status

## Available environment variables

* BUILD_NUMBER The current build number, such as "153"
* BUILD_ID The current build ID, identical to BUILD_NUMBER for builds created in 1.597+, but a YYYY-MM-DD_hh-mm-ss timestamp for older builds
* BUILD_URL Full URL of this build, like http://server:port/jenkins/job/foo/15/ (Jenkins URL must be set)
* GIT_COMMIT The commit hash being checked out.
* GIT_BRANCH The remote branch name, if any.


## See also

* [Open-science and Travis: continuous integration for reproducible scientific experiments](https://www.monperrus.net/martin/travis-for-scientific-experiments)
