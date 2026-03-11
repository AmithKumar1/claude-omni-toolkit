# Contributing to Claude Omni-Toolkit

First off, thank you for considering contributing to the Claude Omni-Toolkit! This repository relies on the community to curate the absolute best prompts, scripts, and workflows for Claude.

### How Can I Contribute?

There are several ways you can contribute to this repository:
1. **Submit a Prompt:** Have a highly effective prompt template for Claude Chat? Add it to `/claude-chat/prompts`.
2. **Share an MCP Server:** Did you build a useful Model Context Protocol server that works well with Claude Code? Share the integration config in `/claude-code/mcp-servers`.
3. **Share a `CLAUDE.md` Rule File:** Got a great set of coding rules for a specific framework? Drop it in `/claude-code/config`.
4. **Fix Typos/Documentation:** Documentation improvements are always welcome!

### Pull Request Process

1. Fork the repository and create your branch from `main`.
2. If you've added code/scripts, please ensure they are well documented and include comments.
3. If you are adding a new prompt, please include a brief description at the top of the markdown file explaining *when* to use it.
4. Update the `README.md` in the corresponding sub-directory if you are adding a major new category of assets.
5. Create a Pull Request with a clear title and description of what you're submitting.

### Quality Guidelines for Prompts

When submitting a prompt to `/claude-chat/prompts`:
* Make it generic enough that others can use it (use placeholders like `[INSERT YOUR CONTEXT HERE]`).
* Format it clearly using Markdown headers and bullet points.
* Specify if the prompt relies on special Claude capabilities (like Artifacts or Projects).
