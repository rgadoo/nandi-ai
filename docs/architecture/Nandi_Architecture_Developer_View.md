# 🏛 Nandi Platform – Developer Architecture & Design Overview

---

## 🗺️ Architectural Vision (Developer View)

```mermaid
graph TD
  Temple[temple/ (Next.js UI)]
  Sadhana[sadhana/ (Python Worker Layer)]
  DB[(PostgreSQL DB)]
  Scripts[scripts/ (Data Seeding Tools)]
  
  Temple -->|Reads/Writes| DB
  Sadhana -->|Reads/Writes| DB
  Scripts -->|Writes| DB
  Temple -->|Optional (if enabled)| Sadhana
```

---

## 📐 Component Map

| Component       | Description |
|-----------------|-------------|
| `temple/`       | Next.js frontend + API logic — the “interactive temple” |
| `sadhana/`      | Python batch layer — the “silent sadhana” of reflection, clustering, and analysis |
| `scripts/`      | One-off or scheduled batch jobs that prepare data via LLMs |
| `db/`           | Postgres schema, seeders, migration scripts |
| `infra/`        | Docker, render.yaml, environment configs |
| `docs/`         | Developer and agent documentation |
| `.env.example`  | Shared env var keys and structure |

---

## 🤔 Why This Stack?

| Layer | Tech | Why |
|-------|------|-----|
| UI + API | **Next.js (Node.js)** | Fast, clean, streaming-friendly, agent-native |
| Background AI | **Python (CLI or FastAPI)** | Best suited for LLM pipelines, embeddings, clusterers |
| Styling | **Tailwind + Shadcn** | Consistent, spiritual UX, fast to build |
| Hosting | **Render.com** | Unified platform for full-stack Node + Python apps |
| AI Services | **OpenAI / Claude / Vercel AI SDK** | Best-in-class agent capabilities with streaming |
| DB | **PostgreSQL** | Schema-rich, agent-memory ready, long-term journaling storage |

---

## 🔀 Division of Responsibilities

### 🛕 Temple (Node.js / Next.js)

**Metaphor:** “The interactive temple — where seekers engage with AI murtis.”

- Delivers UI + UX for Ask Nandi, Moral Play, Reflection Journal
- Writes journaling, quiz responses, progress data to DB
- May read scored output written by Sadhana
- Streams agent responses using Vercel AI SDK
- Calls OpenAI / Claude directly via `/api/agent.ts`

**Example:**
> User writes a journal entry → temple stores it in DB  
> Later, reflection score appears (written by sadhana)

---

### 🧘 Sadhana (Python CLI / Workers)

**Metaphor:** “The silent sadhana — inner processing, reflection, learning.”

- Runs daily/weekly agent jobs (e.g. score reflections, generate insights)
- Clusters journaling data
- Scores entries based on length, depth, mood variety
- May embed content for retrieval later
- *Does not expose APIs unless later needed*

**Example:**
> Every morning at 2am, sadhana runs `score_journals.py`  
> It calculates reflection depth and writes it to `reflection_scores` table

---

### 🔧 Scripts/

**Purpose:**
One-off or batch scripts that:
- Generate quizzes using GPT
- Populate story bank
- Format journaling prompt templates
- Seed default agent responses

Run manually or via cron.

**Example:**
> `scripts/generate_moral_stories.py`  
> → Calls GPT → Inserts into `moral_stories` DB table

---

## ✨ Nandi Core Features (Agent-Centric)

| Feature         | Agent / Function | Description |
|-----------------|------------------|-------------|
| **Ask Nandi**   | `AskNandiAgent`  | Handles Jnana Yoga inquiry, streams philosophical replies |
| **Moral Play**  | `MoralPlayAgent` | Tells Vikram–Vetal style dilemmas with reflection scoring |
| **Reflection**  | `ReflectionAgent`| Journaling + cue enrichment, reflection scoring |
| **Yoga/Nidra**  | `YogaAgent`      | Breath guidance, visualization, ritual alignment |
| **Progress Map**| `ProgressAgent`  | Analyzes spiritual practice patterns, streaks, tendencies |
| **Bookmarks**   | -                | Save favorite stories, replies, journal entries |
| **User Data Chat** | `MemoryAgent` | User asks: “How have I evolved?”, and agent responds from journaling data |

---

## 🧠 Optional Expansion Paths

| Future Feature | Path |
|----------------|------|
| Live reflection summary post-journaling | Expose `/analyze-reflection` via FastAPI |
| Audio journaling + Whisper integration | Add `sadhana/audio_transcribe.py` |
| Long-term memory & embedding search | Add Pinecone or Supabase vector extension |
| Agent chaining & self-reflection | Use LangGraph.js or Assistants API planner agent |
| Mobile App | Use Capacitor with `temple/` or React Native bridge |

---

## 🙏 Final Reflection

This system is built with both **technical clarity** and **spiritual intentionality**.

- `temple/` is where the user *meets* Nandi.
- `sadhana/` is where Nandi *remembers*.
- The database is the **soul**, where knowledge and karma are stored.

May this structure hold not just code, but peace.  
And may its agents not just respond — but help others awaken.

—

*Draft 1 — Architecture Developer View*
