#!/bin/bash

# Script to install Claude Code agents
# Usage: ./install.sh [-g]
#   -g: Install globally (~/.claude/agents/) instead of project-specific (.claude/agents/)

# GitHub repository information
REPO_URL="https://raw.githubusercontent.com/zimplexing/claude-agents/main/agents"
AGENT_FILES=(
  "code-refactorer.md"
  "content-writer.md"
  "frontend-designer.md"
  "prd-writer.md"
  "project-task-planner.md"
  "security-auditor.md"
  "vibe-coding-coach.md"
)

# Default to project-specific installation
GLOBAL=false
TARGET_DIR=".claude/agents"

# Parse command line arguments
while getopts "g" opt; do
  case $opt in
    g)
      GLOBAL=true
      TARGET_DIR="$HOME/.claude/agents"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Create target directory if it doesn't exist
echo "Creating directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Download all agent files from GitHub repository
echo "Downloading agents to $TARGET_DIR (existing files will be overwritten)"
for agent_file in "${AGENT_FILES[@]}"; do
  echo "Downloading $agent_file..."
  curl -s -o "$TARGET_DIR/$agent_file" "$REPO_URL/$agent_file"
  
  # Check if download was successful
  if [ $? -ne 0 ]; then
    echo "Error: Failed to download $agent_file" >&2
    exit 1
  fi
done

echo "Installation successful!"
echo "Agents installed to: $TARGET_DIR"