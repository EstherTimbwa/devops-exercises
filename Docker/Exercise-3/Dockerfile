# Use a minimal alpine as base image
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache shadow

# Creating a non-root user with UID 1000 to match the WSL user
RUN useradd -m -u 1000 essy 

# Switch to the non-root user
USER essy

# Set the working directory
WORKDIR /app

# Default command to read the bind-mounted file
CMD ["cat", "/app/file.txt"]