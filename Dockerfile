FROM node:16-alpine

LABEL "com.github.actions.name"="GitHub Action for WP Engine Git Deployment"
LABEL "com.github.actions.description"="An action to deploy your repository to a WP Engine site via git."
LABEL "com.github.actions.icon"="chevrons-right"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/jovrtn/github-action-wpengine-git-deploy"
LABEL "maintainer"="Jesse L.K. Overton <jesse@ovrtn.com>"

RUN apk --no-cache add git g++ gcc libgcc libstdc++ linux-headers make python
RUN apk add -qU openssh
RUN npm install --quiet node-gyp -g

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
