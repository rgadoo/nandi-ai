# ✅ Nandi 2.0 Development Checklist

This checklist breaks down each stage of the Nandi 2.0 build plan based on our workshop sessions. It ensures a spec-first, holistic, and AI-aligned workflow.

---

## 🧱 Stage 1: Foundation Layer

### 🧩 Database Design
- [ ] Draft `db/schema.sql` with all major tables (users, sessions, journal, points, etc.)
- [ ] Add indexing and relationships (foreign keys, JSONB fields)
- [ ] Create ERD (Entity-Relationship Diagram) in docs

### 🔗 API Contracts
- [ ] Define all endpoint contracts in `shared/types/api.ts`
- [ ] Include examples for each request/response
- [ ] Add OpenAPI spec or markdown fallback if needed

---

## 🌐 Stage 2: App Layer

### 🛕 Temple (Next.js Frontend)
- [ ] Scaffold `temple/` with Tailwind + Shadcn + Vercel AI SDK
- [ ] Create `MainLayout.tsx` and navigation shell
- [ ] Stub out route pages: `/ask-nandi`, `/reflection`, `/progress`, `/explore`

### 🧘 Sadhana (Python Worker Layer)
- [ ] Scaffold `sadhana/` CLI structure
- [ ] Set up DB connection (psycopg/sqlalchemy)
- [ ] Create agents: `score_journal.py`, `generate_morals.py`, etc.

---

## 📦 Stage 3: Core Feature Modules

### 🧘 Ask Nandi
- [ ] UI for mood selector + ask interface
- [ ] Stream GPT response and save to DB

### ✍️ Reflection Journal
- [ ] UI for journaling
- [ ] Trigger background score job
- [ ] Show insights when available

### 🎭 Moral Play
- [ ] UI for story + response options
- [ ] Save selections + reasoning

### 📊 Progress Tracker
- [ ] Visual display of dharmic progress
- [ ] Show scores aggregated by sadhana

### 🔖 Bookmarks + Explore
- [ ] View, save, revisit stories or reflections

---

## 🔒 Stage 4: Auth + Infra

- [ ] Implement simple login (manual, no Clerk/Auth0)
- [ ] Add session tracking to DB
- [ ] Connect Render or Railway for hosting
- [ ] Add `.env.example` and deployment docs

---

## 📚 Stage 5: Documentation

- [x] `README.md` at root
- [x] `docs/architecture.md` (developer view)
- [ ] `docs/erd.md` for DB schema
- [ ] `docs/agents/*.md` — per-agent docs
- [ ] Mermaid diagrams for prompt flows, memory systems

---

## 🧪 Stage 6: Testing & Enhancements

- [ ] Unit test core utils in `temple/` and `sadhana/`
- [ ] Create test seeds for scripts/
- [ ] Create `scripts/dev:seed.sh` to populate mock DB

---

## 🌿 Reflection Log Milestones
- [x] Stack finalized: Node.js + Python
- [x] Architecture stabilized (Temple/Sadhana)
- [x] First architecture doc created
- [x] Direction committed: No multi-stack fragmentation

---

Feel free to edit inline as we complete each item. This file is the kanban of consciousness. 🙏
