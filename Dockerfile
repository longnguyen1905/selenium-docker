FROM bellsoft/liberica-openjdk-alpine:17.0.8

# Install curl jq
RUN apk add curl jq

# workspace
WORKDIR /home/selenium-docker

# add the required files
ADD target/docker-resources ./
ADD runner.sh               runner.sh

# Environment Variables
# BROWSER
# HUB_HOST
# TEST_SUITE
# THREAD_COUNT

# Start the runner
ENTRYPOINT sh runner.sh
