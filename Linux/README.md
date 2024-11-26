This script logs all running processes to a file with a timestamp. I encountered a few issues during implementation:

Error: ps: user x unknown
Solution: This was resolved by ensuring the script uses the correct path for the ps command and setting the environment variables properly.

Error: Failed to write to log file
Solution: Ensured proper permissions for the log directory and used absolute paths for file handling to prevent path-related issues.
