# Run on latest Ubuntu build
FROM ubuntu:latest

# Install helpful binaries
RUN apt-get update && apt-get install -y \
  jq \
  curl
 
# Get archive binary from latest release
RUN $builder_bin=$(curl -s https://api.github.com/repos/Folk-Archive/archive-builder/releases/latest | jq -r ".assets[] .browser_download_url")
RUN wget $builder_bin

# Set main as executable
RUN chmod +x main

# Copy the runner script to the root fs
COPY entrypoint.sh /entrypoint.sh

# Make the runner script the first stop
ENTRYPOINT ["/entrypoint.sh"]



