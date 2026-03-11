# Connecting Claude Code to an SQLite Database

The power of `claude-code` significantly increases when you give it direct access to your local databases via the **Model Context Protocol (MCP)**. Instead of copying and pasting table schemas into the terminal, Claude can just query the database itself for context, and write safer migrations.

This guide uses the official `@modelcontextprotocol/server-sqlite` tool.

### Setup Instructions

1. First, ensure you have the `claude-code` CLI installed (`npm -g install @anthropic-ai/claude-code`).
2. Open your project directory in your terminal.
3. Run the following command to add the SQLite server to your Claude Code MCP configuration. 
   *(Replace `your-database.db` with the path to your actual local `.db` file).*

```bash
claude mcp add sqlite -- npx -y @modelcontextprotocol/server-sqlite your-database.db
```

4. Now, run `claude` to start a session.
5. You can now prompt Claude: 
   - *"Analyze the schema of the `users` table and write a Python script to populate it with 50 mock rows."*
   - *"Find all rows in the `audit_logs` table where the timestamp is within the last 24 hours."*

### What's happening under the hood?
This command adds an entry to your `~/.claude.json` global configuration file that binds an execution path to an `npx` script. When Claude needs database access, it spins up that node process, reads the data, and shuts it down.
