# something to do

# first some debugging info
set -o xtrace # print all commands
uname -a
hostname
free -h
java -version
mvn -version
env
curl -Lo repairnator-pipeline.jar "https://search.maven.org/remote_content?g=fr.inria.repairnator&a=repairnator-pipeline&v=LATEST&c=jar-with-dependencies"
java -jar repairnator-pipeline.jar --build 494386265
