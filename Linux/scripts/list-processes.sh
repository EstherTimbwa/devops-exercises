#!/bin/bash

# Log directory and file setup
LOG_DIR="/c/Users/hp/Desktop/EVERYTHINGDEVOPS/devops-exercises/Linux/logs"
LOG_FILE="$LOG_DIR/processes_$(date +'%Y-%m-%d_%H-%M-%S').log"

# Debugging output
echo "Log directory: $LOG_DIR"
echo "Log file: $LOG_FILE"

# Ensure log directory exists
if ! mkdir -p "$LOG_DIR"; then
    echo "Error: Failed to create log directory $LOG_DIR"
    exit 1
fi

# Check if LOG_FILE variable is set correctly
if [[ -z "$LOG_FILE" ]]; then
    echo "Error: LOG_FILE is empty or not set correctly"
    exit 1
fi

# Test if log file can be written manually
echo "Test log entry" > "$LOG_FILE"
if [[ $? -ne 0 ]]; then
    echo "Error: Cannot write to log file $LOG_FILE"
    exit 1
fi

# Running ps with full path to avoid environment issues
PS_PATH=$(which ps)  # Get the full path to the ps command
echo "Using ps command from: $PS_PATH"

if ! $PS_PATH -e pid,comm > "$LOG_FILE"; then
    echo "Error: Failed to write process list to $LOG_FILE"
    exit 1
fi

# Confirm the log file is not empty
if [[ -s "$LOG_FILE" ]]; then
    echo "Processes successfully logged to $LOG_FILE"
else
    echo "Warning: Log file $LOG_FILE is empty"
    exit 1
fi

