# Use a base image with Bash
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the Bash script to the container
COPY your_script.sh /app/your_script.sh

# Install required packages
RUN apk --no-cache add fortune cowsay

# Expose the port used by the server
EXPOSE 4499

# Run the Bash script
CMD ["/bin/sh", "/app/your_script.sh"]

