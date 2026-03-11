# Multi-Step Workflow: Web Research to Executive Summary Deck

Claude Cowork's true power lies in its ability to navigate multiple applications, fetching data from one, processing it, and pasting the result into another. 

To execute this workflow, provide this entire block of text to Claude Cowork as a single instruction.

---

### The Workflow Prompt

```text
Please execute the following multi-step workflow. Complete all steps sequentially and do not stop until Step 3 is finished.

**Objective:** Research the current state of Quantum Computing startups in 2026 and create a 3-slide summary presentation.

**Step 1: Information Gathering (Browser)**
1. Open a new Chrome browser window.
2. Search logic: "Top quantum computing startups funding 2026", "Quantum hardware breakthroughs recent".
3. Read the top 3 credible articles (e.g., TechCrunch, Reuters, specialized tech journals).
4. Extract the following information into your short-term memory:
   - The top 3 startups by recent funding.
   - The biggest technological bottleneck currently facing the industry.
   - The primary commercial use case being targeted right now.

**Step 2: Synthesis (Local Storage)**
1. Open a new plain text file or use your scratchpad.
2. Synthesize the findings from Step 1 into 3 distinct, highly condensed bullet points for each slide topic: 
   - Topic A: "The 2026 Landscape"
   - Topic B: "Major Players & Funding"
   - Topic C: "Commercial Bottlenecks"
3. Keep the tone professional, objective, and tailored for an executive audience.

**Step 3: Presentation Creation (Desktop App)**
1. Open Microsoft PowerPoint (or Google Slides in the browser if PowerPoint is unavailable).
2. Create a new blank presentation.
3. Slide 1 (Title): Set title to "Quantum Computing: 2026 Executive Brief".
4. Slide 2 (Content): Use the synthesized points for "The 2026 Landscape" and "Major Players & Funding". Maintain clear formatting.
5. Slide 3 (Content): Use the synthesized points for "Commercial Bottlenecks" and add a concluding sentence about future outlook based on your research.
6. Save the file to my Desktop as "Quantum_Brief_2026.pptx" and notify me when complete.
```
