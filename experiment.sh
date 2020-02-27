#!/bin/bash

# get latest repairnator
curl -Lo repairnator-pipeline.jar "https://search.maven.org/remote_content?g=fr.inria.repairnator&a=repairnator-pipeline&v=LATEST&c=jar-with-dependencies"

# surli failing project
java -jar repairnator-pipeline.jar --build 564711868
