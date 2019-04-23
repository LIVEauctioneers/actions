FROM docker:stable

LABEL "name"="Docker CLI Action"
LABEL "maintainer"="LIVEauctioneers <engineering@liveauctioneers.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Docker"
LABEL "com.github.actions.description"="Wraps the Docker CLI to enable Docker commands. Plus adds various environment variables to pass event info through to the container"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN apk add jq


COPY README.md /

COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
