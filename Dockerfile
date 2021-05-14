FROM node:12-slim

LABEL "com.github.actions.name"="GitHub Action for WP Engine Git Deployment"
LABEL "com.github.actions.description"="An action to deploy your repository to a WP Engine site via git."
LABEL "com.github.actions.icon"="chevrons-right"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/jovrtn/github-action-wpengine-git-deploy"
LABEL "maintainer"="Jesse L.K. Overton <jesse@ovrtn.com>"

RUN apt-get update -y \
    && apt-get install python git openssh-server -y \
    && npm install --quiet node-gyp -g
    && npm install --quiet notify-send -g

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
