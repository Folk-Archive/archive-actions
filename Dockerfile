# Run on latest Ubuntu build
FROM ubuntu:latest

# Copy the runner script to the root fs
COPY entrypoint.sh /entrypoint.sh

# Make the runner script the first stop
ENTRYPOINT ["/entrypoint.sh"]



