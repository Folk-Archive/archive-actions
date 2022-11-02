# Run on latest Ubuntu build
FROM ubuntu:latest

# Install helpful binaries
RUN apt-get update && apt-get install -y \
  jq \
  curl

# Copy the runner script to the root fs
COPY entrypoint.sh /entrypoint.sh

# Make the runner script the first stop
ENTRYPOINT ["/entrypoint.sh"]



