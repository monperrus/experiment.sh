#!/bin/bash
git clone https://github.com/Spirals-Team/npe-dataset/

# log important data
mvn -version

# this is a real world NPE for Apache Commons Lang
cd npe-dataset/lang-304

# alternatively you can enter your own project at a commit with an NPE

# check the failing tests
mvn test -DtrimStackTrace=false

# look for patches with NpeFix
mvn fr.inria.gforge.spirals:repair-maven-plugin:npefix
