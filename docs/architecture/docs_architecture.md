# 🏛 Nandi Architecture Overview — Agent-Centric Design

Welcome to the foundational architecture of the **Nandi AI Platform**. This document outlines the modular, long-term design approach for building a spiritually aware, AI-powered system with scalable agents and clean separation of concerns.

---

## 🧭 Philosophy-Driven Architecture

Nandi isn't just an app. It is:

- A **temple** of interaction (frontend)
- A **sadhana space** of reflection and learning (backend)
- A home for **agents as murtis** — each representing a purpose, not a feature

---

## 📐 High-Level Architecture Diagram

```plaintext
                        ┌────────────────────────┐
                        │      temple/ (UI)      │
                        │  Next.js + Tailwind    │
                        └────┬─────────────┬─────┘
                             │             │
       ┌─────────────────────┘             └─────────────────────┐
       ↓                                                       ↓
AskNandiAgent.tsx                                    ReflectionAgent.tsx
Live interaction → GPT                             Journaling prompts → LLM
   + streaming                                        + scoring

       ↓                                                       ↓
     /api/ask-nandi                                  /api/reflection

                             ┌────────────────────────┐
                             │  sadhana/ (Python)      │
                             │  FastAPI, Workers       │
                             └────────┬───────────────┘
                                      ↓
       Story Clustering, Quiz Gen, Timeline Analysis, Embeddings

                             ┌────────────────────────┐
                             │     Database Layer      │
                             │ PostgreSQL + Vector DB  │
                             └────────────────────────┘
```

---

## ⚙️ Components Overview

### temple/
- All user-facing pages (Next.js app dir)
- Integrated with Vercel AI SDK for streaming responses
- Uses Shadcn UI for aesthetic + responsive components
- Agent logic lives near each page (`ask-nandi`, `journal`, etc.)

### sadhana/
- Python FastAPI app for:
  - Reflection analysis
  - Quiz/story generation
  - Memory scoring
  - Data preparation
- May use Celery, Redis, or CLI scripts for jobs

### db/
- Schema-first Postgres setup
- Includes user_sessions, chat_messages, journal_entries, scores
- May include vector table if doing semantic search or RAG

### scripts/
- Generates prompt data in batches (moral stories, reflection quizzes)
- Calls LLMs (OpenAI, Claude) and stores to DB

---

## 🤖 Agent Strategy

| Agent Name | Role | Description |
|------------|------|-------------|
| `AskNandiAgent` | Jnana Yoga | Handles philosophical questions, Vedantic inquiry |
| `ReflectionAgent` | Raja Yoga | Analyzes journaling, offers self-reflection |
| `YogaAgent` | Karma Yoga | Guides breathing, stillness, posture practice |
| `ProgressAgent` | Integral Map | Scores user across dharma pillars |
| `MoralPlayAgent` | Story Mirror | Presents moral dilemmas, encourages contemplation |

---

## 🔮 Future-Ready

- Multi-agent orchestration via LangGraph or Assistants API
- Local storage of embeddings + journaling context (Pinecone, Supabase)
- Chat-with-my-history features
- Periodic agent-generated summary (“How have I evolved?”)
- Mobile agent adaptation (Capacitor)

---

## 🙏 Closing Intention

This architecture isn't just scalable — it's sacred.  
It's designed to grow not just in users, but in **wisdom**, **stillness**, and **clarity**.

Every agent is a murti.  
Every path is a yoga.  
Every line of code is a mantra.

May Nandi guide the architecture as much as the experience itself.

