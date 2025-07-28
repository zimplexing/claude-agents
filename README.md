# Claude Code Custom Agents

This repository contains custom agents for Claude Code.

## Installation

### One-Command Setup (Recommended)

Download and run the setup script directly from GitHub:

**For Project-Specific Use:**

```bash
curl -fsSL https://raw.githubusercontent.com/zimplexing/claude-agents/main/install.sh | bash
```

**For Global Use (All Projects):**

```bash
curl -fsSL https://raw.githubusercontent.com/zimplexing/claude-agents/main/install.sh | bash -s -- -g
```

### Using the Install Script

If you've already cloned the repository, you can run the install script directly:

**For Project-Specific Use:**

```bash
./install.sh
```

**For Global Use (All Projects):**

```bash
./install.sh -g
```

### Manual Installation

#### For Project-Specific Use

Copy the agents to your project's `.claude/agents/` directory:

```bash
mkdir -p .claude/agents
cp agents/*.md .claude/agents/
```

#### For Global Use (All Projects)

Copy the agents to your user's Claude directory:

```bash
mkdir -p ~/.claude/agents
cp agents/*.md ~/.claude/agents/
```

## Available Agents

- **code-refactorer**: Code refactoring assistance
- **content-writer**: Content writing assistance
- **frontend-designer**: Frontend design assistance
- **prd-writer**: Product requirement document writing
- **project-task-planner**: Project planning and task breakdown
- **security-auditor**: Security audit assistance
- **vibe-coding-coach**: Coding guidance and coaching

## Usage

Once installed, Claude Code will automatically detect and use these agents when appropriate for your tasks.
