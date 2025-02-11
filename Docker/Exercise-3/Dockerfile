FROM alpine:latest
# Creating a non-root user with UID 1000 and name essy
RUN useradd -m -u 1000 essy 
# Switch to the non-root user essy
USER essy
WORKDIR /app
# Command to read the bind-mounted file
ENTRYPOINT ["cat"]
CMD ["/app/file.txt"]