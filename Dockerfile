# Each instruction in this file generates a new layer that gets pushed to your local image cache
#

#
# Lines preceeded by # are regarded as comments and ignored
#

#
# The line below states we will base our new image on the Latest Official Ubuntu
FROM haskell:8.6.5

#
LABEL maintainer="dev@lemo.is"

#
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install liblzma-dev postgresql libpq-dev curl ssh
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v3.5.2/migrate.linux-amd64.tar.gz | tar xvz
RUN mv ./migrate.linux-amd64 /usr/bin/migrate
