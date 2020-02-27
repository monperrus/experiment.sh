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

### Jenkins backend

* install plugin "Pipeline: Multibranch with defaults"
* create runner file "Manage Jenkins >> Manage file" with name "experiment.sh-runner" of type "Groovy" and content below
* create job "Multibranch Pipeline with defaults"
* run a first job (this triggers a script approval request)
* validate script "Manage Jenkins >> In-process script approval"
* done (this set commit statuses as well)

Jenkinsfile  content:

```groovy
println('running experiment')
pipeline {
    agent any
    stages {
        stage('run') {
            steps {
              sh "bash experiment.sh"
            }
        }
    }
}
println('experiment done')
```

## See also

* [Open-science and Travis: continuous integration for reproducible scientific experiments](https://www.monperrus.net/martin/travis-for-scientific-experiments)
