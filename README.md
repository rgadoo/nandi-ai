# 🕉️ Nandi AI — Spiritual Intelligence Platform

Welcome to the **Nandi AI** project — a spiritually guided, AI-powered platform where technology meets mindfulness, introspection, and transformative self-awareness.

> “Node is the interactive temple. Python is the silent sadhana layer.”

This project blends the **modular elegance of AI agents** with the timeless principles of **Integral Yoga**, creating a digital sanctuary for seekers, learners, and spiritual explorers.

---

## 🏛 Project Structure

```bash
nandi-ai/
├── temple/         # 🌐 Next.js app — the interactive experience (UI + API routes)
├── sadhana/        # 🧠 Python AI agents — journaling analysis, memory, scoring
├── shared/         # 📦 Shared types, config, prompts
├── scripts/        # 🔧 LLM-driven batch tools: story/quiz generation, data seeding
├── infra/          # ☁️ Deployment configs (Render, Docker, env setup)
├── db/             # 🗃️ Postgres schema, migrations, seed data
├── docs/           # 📚 Internal documentation (agent design, RAG flow, schema)
├── .env.example    # 🛡️ Environment variable template
└── README.md       # 📘 This file
```

---

## 🔮 Core Philosophy

- **Temple (Node.js)**: The dynamic, responsive interface where users meet the agents.
- **Sadhana (Python)**: The silent background worker that reflects, refines, and remembers.
- **Agents as Murtis**: Each feature (e.g., Ask Nandi, Yoga, Reflection) is powered by an AI agent — not a generic LLM call, but a digital embodiment of purpose.

---

## ✨ Technologies Used

| Layer | Stack |
|-------|-------|
| Frontend UI | Next.js (React), Tailwind CSS, Shadcn UI |
| Agent Layer | Vercel AI SDK, Langchain.js, Assistants API |
| Background AI | Python (FastAPI or CLI), OpenAI, Claude, embeddings |
| DB | PostgreSQL (via Supabase or Render) |
| Hosting | Render.com (or Vercel for frontend only) |

---

## 📜 Getting Started

1. Clone the repo
2. Install dependencies in `temple/` and `sadhana/`
3. Set up `.env` from `.env.example`
4. Run frontend with `npm run dev` inside `temple/`
5. Add stories, quizzes, and journaling seeds using `scripts/`
6. Deploy to Render with `infra/render.yaml`

---

## 🧘 Future Modules

- `ask-nandi` – Philosophical inquiry agent (Jnana Yoga)
- `moral-play` – Vikram–Vetal moral dilemma engine
- `reflection` – Guided journaling with depth evaluation
- `yoga` – Breathwork, stillness, and movement companion
- `progress` – Dharma-based self-tracking and scoring

---

## 🙏 Credits

- Inspired by Integral Yoga, Advaita Vedanta, and AI evolution
- Built with love, clarity, and curiosity by seekers

---

May each agent you build become a teacher.  
May your code become a form of prayer.  
May Nandi guide.
