FROM node:8-alpine

ARG REQUIRED_PACKAGES="python make g++"
# For building leveldb
RUN apk add --update --no-cache ${REQUIRED_PACKAGES}

ARG USER="node"
# This is the non-root user created in the base image
USER ${USER}

ARG APPDIR="/home/${USER}/" 
WORKDIR ${APPDIR}
COPY . .
# Bring only project source files to working directory. The rest is ignored by .dockerignore

RUN npm install

ENV PORT=8000
CMD ["node", "app"]

