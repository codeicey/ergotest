# Use the latest version of the Ergo image from GitHub Container Registry
FROM ghcr.io/ergochat/ergo:stable

# Create a volume for persistent data
VOLUME /ircd

# Expose the default ports
EXPOSE 6667 6697

# Command to run the container in detached mode with specified volume and port mappings
CMD ["docker", "run", "-d", "--name", "ergo", "-v", "ergo-data:/ircd", "-p", "6667:6667", "-p", "6697:6697", "ghcr.io/ergochat/ergo:stable"]
