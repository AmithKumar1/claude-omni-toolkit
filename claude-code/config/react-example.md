# Example CLAUDE.md: React / Next.js / TypeScript Stack

When you run `claude-code` in a project directory, it looks for a file named `CLAUDE.md`. This file acts as the ultimate set of "house rules" for that specific project. 

By having this file, Claude will automatically know your preferred build commands, testing strategies, and styling frameworks without you having to explain them every time.

Drop the content below into a `CLAUDE.md` file in the root of your Next.js project.

---

```markdown
# Project Setup
- **Framework:** Next.js 14+ (App Router)
- **Language:** TypeScript 
- **Styling:** Tailwind CSS + shadcn/ui

## Commands
* Install Dependencies: `npm install`
* Run Local Web Server: `npm run dev`
* Build for Production: `npm run build`
* Run Unit Tests: `npm run test`
* Run Linters: `npm run lint`

## Code Style & Rules
1. **Components:** Always use functional React components with hooks. Do not use class components. Keep components as pure functions where possible.
2. **TypeScript:** Strictly type all props and states. Avoid using `any`; define interfaces in an adjacent `types.ts` file or at the top of the file.
3. **Routing:** All new pages should be created inside the `app/` directory according to App Router conventions. Use `layout.tsx` for shared UI.
4. **Tailwind:** Never write custom CSS files if a Tailwind utility class can accomplish the layout or styling. 
5. **UI Library:** If you need a standard UI element (Button, Dialog, Checkbox), check if there is an existing `shadcn/ui` component in `components/ui` before building one from scratch.
6. **Error Handling:** Use React Error Boundaries wrapping pages or major components.
```
