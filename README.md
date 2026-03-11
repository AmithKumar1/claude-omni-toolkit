<p align="center">
  <h1 align="center">Claude Omni-Toolkit 🛠️</h1>
  <p align="center">
    <strong>The ultimate all-in-one resource hub for every Claude user.</strong>
  </p>
  <p align="center">
    Ready-to-use prompts, scripts, configurations, and workflows for<br/>
    <strong>Claude Chat</strong> · <strong>Claude Code</strong> · <strong>Claude Cowork</strong>
  </p>
  <p align="center">
    <a href="#-why-this-repo-exists">Why?</a> · 
    <a href="#-what-is-inside">What's Inside?</a> · 
    <a href="#-quick-start--installation">Quick Start</a> · 
    <a href="#-who-is-this-for">Who Is This For?</a> · 
    <a href="#-contributing">Contributing</a>
  </p>
</p>

---

## ❓ Why This Repo Exists

**The Problem:**  
Anthropic's Claude ecosystem has grown rapidly — there's **Claude Chat** (web), **Claude Code** (terminal CLI), and **Claude Cowork** (desktop automation). But the resources for getting the most out of them are **scattered across dozens of different repositories, blog posts, and Discord threads**. There is no single place where a user can find everything they need.

If you've ever:  
- 🔍 Spent 30 minutes crafting a prompt from scratch, only to get mediocre results  
- 🤔 Wondered how to connect Claude Code to your database or APIs  
- 😤 Struggled to write a good `CLAUDE.md` configuration file for your project  
- 🧩 Wanted to automate multi-step desktop workflows with Claude Cowork but didn't know where to start  

**...then this repository is for you.**

**The Solution:**  
This repo is the **"missing manual"** — a centralized, community-driven collection of battle-tested prompts, automation scripts, project configurations, and workflow templates. Instead of reinventing the wheel every time, just grab what you need and start being productive immediately.

---

## 📦 What Is Inside?

This toolkit is organized into **three folders**, one for each Claude interface:

### 1. 💬 [`/claude-chat`](./claude-chat) — For Claude Chat Users (Web & API)

> **What is Claude Chat?** It's the web interface at [claude.ai](https://claude.ai) where you type messages to Claude. You can also use it via the API. This folder helps you write *much* better prompts and customize Claude's personality.

| Asset | Description | File |
|---|---|---|
| **The Architect Prompt** | Turns Claude into a Principal Staff Engineer who designs your system architecture, suggests tech stacks, generates Mermaid diagrams, and critiques your idea — *before* you write a single line of code. | [`the-architect.md`](./claude-chat/prompts/the-architect.md) |
| **Pragmatic Dev Persona** | A system instruction/persona that makes Claude behave like a no-nonsense senior developer: no fluff, always explains the "why", handles edge cases, and uses modern best practices. | [`pragmatic-dev.md`](./claude-chat/system-instructions/pragmatic-dev.md) |

**How to use these:**
1. Open the `.md` file you want.
2. Copy the prompt/instruction text inside the code block.
3. **For prompts:** Paste it directly into a new Claude Chat conversation.
4. **For system instructions:** Paste it into Claude's **"Custom Instructions"** field in your Project settings, or use it as the `system` parameter if you're calling the API.

---

### 2. 💻 [`/claude-code`](./claude-code) — For Claude Code Users (Terminal CLI)

> **What is Claude Code?** It's Anthropic's command-line tool that lets you interact with Claude directly in your terminal. It can read/write files, run shell commands, and understand your entire codebase. This folder supercharges it.

| Asset | Description | File |
|---|---|---|
| **SQLite MCP Server Setup** | Step-by-step guide to connect Claude Code to your local SQLite database using the Model Context Protocol (MCP). Once connected, Claude can directly query your DB for context instead of you having to paste schemas. | [`sqlite-server.md`](./claude-code/mcp-servers/sqlite-server.md) |
| **React/Next.js CLAUDE.md** | A drop-in `CLAUDE.md` configuration file for React/Next.js/TypeScript projects. It tells Claude your build commands, coding rules, preferred libraries, and style conventions so it writes code that fits your project perfectly. | [`react-example.md`](./claude-code/config/react-example.md) |
| **AI Pre-Commit Hook** | A Bash script that uses Claude Code to automatically review your staged changes before every `git commit`. If Claude detects critical security flaws or syntax errors, it blocks the commit and tells you why. | [`claude-pre-commit.sh`](./claude-code/scripts/claude-pre-commit.sh) |

**How to use these:**

<details>
<summary><strong>📌 MCP Servers (Click to expand)</strong></summary>

1. Make sure you have Claude Code installed:
   ```bash
   npm install -g @anthropic-ai/claude-code
   ```
2. Open the MCP server guide (e.g., `sqlite-server.md`).
3. Run the one-line `claude mcp add` command shown in the guide.
4. Start a new `claude` session — the MCP tool will now be available for Claude to use.

</details>

<details>
<summary><strong>📌 CLAUDE.md Config Files (Click to expand)</strong></summary>

1. Open the config example you want (e.g., `react-example.md`).
2. Copy the content inside the markdown code block.
3. Create a new file called `CLAUDE.md` in the **root** of your project.
4. Paste the content and customize it to match your project's specifics (e.g., change the build commands, add your preferred linter, etc.).
5. Next time you run `claude` in that project directory, Claude will automatically read and follow your rules.

</details>

<details>
<summary><strong>📌 Scripts (Click to expand)</strong></summary>

1. Download the script file (e.g., `claude-pre-commit.sh`).
2. Place it in your project's `.git/hooks/` directory and rename it to `pre-commit`.
3. Make it executable:
   ```bash
   chmod +x .git/hooks/pre-commit
   ```
4. That's it! Every time you run `git commit`, Claude will automatically review your code first.

</details>

---

### 3. 🤝 [`/claude-cowork`](./claude-cowork) — For Claude Cowork Users (Desktop AI Agent)

> **What is Claude Cowork?** It's Anthropic's desktop application that acts as an "AI employee." It can browse the web, open apps (like Excel, PowerPoint, VS Code), read and write files, and execute multi-step tasks across your entire computer. This folder gives it structured workflows to follow.

| Asset | Description | File |
|---|---|---|
| **Research → Slides Workflow** | A multi-step instruction template: Claude opens Chrome, researches a topic, synthesizes the findings, then opens PowerPoint and creates a 3-slide executive brief — all automatically. | [`research-to-slides.md`](./claude-cowork/workflows/research-to-slides.md) |

**How to use these:**
1. Open the workflow `.md` file.
2. Copy the entire prompt inside the code block.
3. Paste it into a new **Claude Cowork** session.
4. Claude will execute the steps sequentially across your desktop apps. Sit back and watch!

---

## 🚀 Quick Start / Installation

**There is nothing to install.** This is a knowledge repository, not a software package.

### Option A: Browse Online
Simply browse the folders above on GitHub and copy what you need directly from the web interface.

### Option B: Clone Locally
If you want the entire collection on your machine:

```bash
git clone https://github.com/AmithKumar1/claude-omni-toolkit.git
```

Then open the folder and explore:
```
claude-omni-toolkit/
├── claude-chat/
│   ├── prompts/            ← Copy-paste prompts for Claude Chat
│   └── system-instructions/ ← Personas & custom instructions
├── claude-code/
│   ├── mcp-servers/        ← Guides to connect Claude Code to external tools
│   ├── scripts/            ← Automation scripts (pre-commit hooks, etc.)
│   └── config/             ← Drop-in CLAUDE.md project rule files
├── claude-cowork/
│   └── workflows/          ← Multi-step desktop automation templates
├── CONTRIBUTING.md
├── LICENSE
└── README.md               ← You are here!
```

---

## 🎯 Who Is This For?

| You Are... | This Repo Helps You... |
|---|---|
| 🆕 **A beginner exploring Claude** | Get started with powerful, pre-written prompts instead of figuring out prompt engineering from scratch. |
| 💻 **A developer using Claude Code** | Instantly set up MCP servers (database access, API integrations), configure `CLAUDE.md` rules, and automate your Git workflow with AI-powered hooks. |
| 📊 **A knowledge worker using Claude Cowork** | Follow structured, copy-paste workflow templates to automate research, reports, and presentations across your desktop apps. |
| 🏗️ **A team lead or architect** | Use the "Architect" prompt to get instant system design reviews, tech stack recommendations, and Mermaid diagrams before writing any code. |
| 🤝 **An open-source contributor** | Add your own prompts, scripts, and workflows to help the growing Claude community. |

---

## 🤝 Contributing

Have an amazing prompt that consistently gives great results? Built a useful MCP server? Created a workflow template that saved you hours? **We want it!**

Please see our [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines on how to submit a Pull Request.

**Quick contribution ideas:**
- Add a new prompt template to `/claude-chat/prompts/`
- Share an MCP server setup guide in `/claude-code/mcp-servers/`
- Drop a `CLAUDE.md` config for a different tech stack (Python/Django, Rust, Go, etc.) in `/claude-code/config/`
- Create a new Cowork workflow in `/claude-cowork/workflows/`

---

## ⭐ Support This Project

If you found this useful, please consider:
- **⭐ Starring** this repository — it helps others discover it!
- **🍴 Forking** it to customize for your own workflow
- **📢 Sharing** it with your team, community, or on social media

---

## 📄 License

This repository is open-source under the [MIT License](./LICENSE). You are free to use, modify, and distribute these assets in your own projects and workflows.
