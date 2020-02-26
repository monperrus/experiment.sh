# experiment.sh

Run computational experiments through the Github architecture.

## How to us it?

Simply push a branch to https://github.com/monperrus/experiment.sh/ containing a script `experiment.sh`.

`experiment.sh` is execuetd using bash.

The branch status contains a link to the log.

## Available environment variables

* BUILD_NUMBER The current build number, such as "153"
* BUILD_ID The current build ID, identical to BUILD_NUMBER for builds created in 1.597+, but a YYYY-MM-DD_hh-mm-ss timestamp for older builds
* BUILD_URL Full URL of this build, like http://server:port/jenkins/job/foo/15/ (Jenkins URL must be set)
* GIT_COMMIT The commit hash being checked out.
* GIT_BRANCH The remote branch name, if any.


## See also

* [Open-science and Travis: continuous integration for reproducible scientific experiments](https://www.monperrus.net/martin/travis-for-scientific-experiments)
