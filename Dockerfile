FROM alpine:3.18

LABEL "com.github.actions.name"="Github Action for wget"
LABEL "com.github.actions.description"="Wraps the wget CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/fharper/wget"
LABEL "homepage"="http://github.com/fharper/wget"
LABEL "maintainer"="Frédéric Harper <hi@fred.dev>"

RUN apk add --no-cache ca-certificates=~20230506-r0

COPY *.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
