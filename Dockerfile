FROM jetbrains/teamcity-minimal-agent
MAINTAINER Eik Emil Christensen <denie@eikc.dk>

RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list' 
RUN apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
RUN apt-get update
RUN apt-get install dotnet-dev-1.0.0-preview2-003121