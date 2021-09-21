FROM node:12-slim

LABEL "com.github.actions.name"="WP Engine Deploy"
LABEL "com.github.actions.description"="Deploy on WP Engine through GitHub actions. Forked from: https://github.com/jovrtn/github-action-wpengine-git-deploy"
LABEL "com.github.actions.icon"="chevrons-right"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/BigOrangeLab/github-action-wpengine-git-deploy"
LABEL "maintainer"="Eduard Milushi <emilushi@gmail.com>"

RUN apt-get update -y \
    && apt-get install python git openssh-server -y \
    && npm install --quiet node-gyp -g \
    && npm install --quiet notify-send -g

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
