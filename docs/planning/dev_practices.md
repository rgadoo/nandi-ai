# 🧭 Nandi 2.0 Development Practices

This document defines the core engineering principles and dev agent behaviors for building the Nandi platform using Windsurf and Cursor IDEs.

---

## 🧠 Cursor AI Agent Rules

```
# .cursorrules

# 📛 Identity
Project = "Nandi 2.0"
Purpose = "Spiritual wellness platform with AI agents"

# 📂 Codebase Structure
Frontend = "temple"          # Next.js + Tailwind UI
Backend = "sadhana"          # Python FastAPI for reflections, quizzes, agent scoring
Database = "db"
Docs = "docs"

# ⚠️ Safety Boundaries
Disallow = "Direct changes to db schema without updating docs/database/nandi_schema_doc.md"
Disallow = "Use of mock data in dev/prod environments"
Disallow = "Overwriting .env without explicit approval"

# 🧠 Design Pattern Reminders
Rule = "Always check if similar logic/component exists before creating new code"
Rule = "Iterate on existing patterns before introducing new abstractions"
Rule = "Do not introduce breaking layout changes without checking existing layout system"

# ✅ Activity System Rules
Rule = "All new features must log to activity_occurrences with correct activity_type and metadata"
Rule = "All features should correspond to entries in docs/features/features.md"

# ✍️ Development Practices
Rule = "Keep files under ~300 lines; refactor large files into composable units"
Rule = "Write testable, documented code for all user-facing features"
Rule = "Use meaningful commit messages: [scope] description (e.g., [temple] add insight quiz screen)"

# 🌅 Morning Ritual (AI Agents)
Rule = "Start day by reading docs/planning/nandi_daily_principles.md"
Rule = "Refer to docs/onboarding/README.md before making first code changes"
Rule = "Check the latest agent memory context if available"

# 🧘 Philosophy
Tagline = "The temple is interaction. The sadhana is intelligence. Users are seekers."
```

---

## 🏄 Windsurf Rules: Developer’s Code of Conduct

### 🌊 Coding Flow Principles

#### 1. Clean Code Surfing
- Functions should be small, composable, and named for clarity
- Prefer readability over cleverness
- Refactor before scale — elegance matters

#### 2. Git Discipline
- Never commit to main directly
- Use feature branches: `feat/`, `fix/`, `chore/`
- Commits must use this format: `[scope] what changed` (e.g., `[temple] add reflection save flow`)
- Push daily

#### 3. Test-Ready Thinking
- Write code that can be tested — no side effects in helpers
- Manual test after every major slice
- Write tests before merge (unit or API)

#### 4. UI & Layout Patterns
- Use layout components from `temple/layout/` — do not freestyle
- Avoid hardcoded margins, widths — always use responsive utility classes or tokens
- Prefer system colors, spacing, and font sizes from the Nandi design token config

#### 5. API Contracts
- Every new API must:
  - Be documented in `docs/api/endpoints.md`
  - Match schema definitions
  - Log to `activity_occurrences`

#### 6. Respect the DB
- Don’t hardcode `user_id`, `session_id`, etc. in tests/dev
- Never use production data in local scripts
- Respect referential integrity and always check foreign key rules

#### 7. Agent Handoff Ready
- Document anything an AI agent may need to resume
- All major modules must have `README.md` or section in `/docs/features/`

### ⚙️ Engineering Hygiene

- Keep files < 300 lines — break up into smaller units
- Never stub/mock in prod-facing code
- Write useful, human-readable error messages
- Optimize only what’s needed — avoid early abstraction
- Clean up dead code immediately

### 🧘 Windsurf Wisdom

> “Build it clean the first time. Or build it twice.”

> “Agents help when structure exists. Chaos confuses both human and AI.”
