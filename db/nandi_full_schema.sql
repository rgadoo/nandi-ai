-- Nandi 2.0 Full Schema
-- Database: nandi_db

-- USERS & AUTH ------------------------------
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT UNIQUE NOT NULL,
  name TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE UNIQUE INDEX idx_users_email ON users(email);

-- USER SESSIONS ------------------------------
CREATE TABLE user_sessions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  ended_at TIMESTAMP,
  metadata JSONB,
  session_quality_score INTEGER,  -- agent-evaluated or self-evaluated (1-10)
  total_focus_minutes INTEGER,    -- total deep focus or meditation minutes
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_user_sessions_user_id ON user_sessions(user_id);

-- ACTIVITY TRACKING ------------------------------
CREATE TABLE activity_occurrences (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  session_id UUID REFERENCES user_sessions(id) ON DELETE SET NULL,
  activity_type TEXT NOT NULL,
  reference_id UUID,
  started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  completed_at TIMESTAMP,
  metadata JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_activity_occurrences_user_id ON activity_occurrences(user_id);
CREATE INDEX idx_activity_occurrences_session_id ON activity_occurrences(session_id);
CREATE INDEX idx_activity_occurrences_type ON activity_occurrences(activity_type);

-- POINTS SYSTEM ------------------------------
CREATE TABLE activity_points_mapping (
  id SERIAL PRIMARY KEY,
  activity_type TEXT NOT NULL,
  points_source TEXT NOT NULL,
  description TEXT,
  default_points INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE points_history (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  activity_occurrence_id UUID REFERENCES activity_occurrences(id) ON DELETE SET NULL,
  points_earned INTEGER,
  source TEXT,
  awarded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_points_history_user_id ON points_history(user_id);
CREATE INDEX idx_points_history_source ON points_history(source);

-- ASK NANDI ------------------------------
CREATE TABLE ask_nandi_conversations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  question TEXT,
  tone TEXT,
  response TEXT,
  reflective_summary TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ask_nandi_reflections (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  conversation_id UUID NOT NULL REFERENCES ask_nandi_conversations(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  journal_entry TEXT,
  tags TEXT[],
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- REFLECTION JOURNAL ------------------------------
CREATE TABLE reflection_journal_entries (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  content TEXT,
  tags TEXT[],
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- QUIZ + MORAL PLAY ------------------------------
CREATE TABLE quizzes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT,
  type TEXT,
  prompt TEXT,
  source TEXT,
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- QUIZ QUESTIONS -----------------------------------------
CREATE TABLE quiz_questions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  quiz_id UUID NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
  question TEXT NOT NULL, -- The moral/philosophical dilemma
  options JSONB NOT NULL, -- Example: {"A": "Forgive", "B": "Punish", "C": "Walk Away"}
  response_narratives JSONB, -- Optional: feedback or story resolution per answer (e.g., {"A": "Vetal nods...", "B": "A silence falls..."})
  order_index INTEGER DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE quiz_responses (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  quiz_id UUID NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  session_id UUID REFERENCES user_sessions(id) ON DELETE SET NULL,
  responses JSONB,
  score INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- GAME SESSIONS ------------------------------
CREATE TABLE games (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT,
  description TEXT,
  url TEXT,
  category TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE game_sessions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  game_id UUID NOT NULL REFERENCES games(id) ON DELETE CASCADE,
  started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  ended_at TIMESTAMP,
  score INTEGER,
  metadata JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SADHANA INTELLIGENCE (AGENT INSIGHTS) ------------------------------
CREATE TABLE agent_insights (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  activity_occurrence_id UUID REFERENCES activity_occurrences(id) ON DELETE SET NULL,
  insight_type TEXT,
  summary TEXT,
  details JSONB,
  created_by TEXT DEFAULT 'sadhana',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- GENERAL CHAT MESSAGES ------------------------------
CREATE TABLE general_chat_messages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  session_id UUID REFERENCES user_sessions(id) ON DELETE SET NULL,
  activity_occurrence_id UUID REFERENCES activity_occurrences(id) ON DELETE SET NULL,
  role TEXT CHECK (role IN ('user', 'nandi')),
  sequence_number INTEGER,
  message TEXT NOT NULL,
  topic TEXT,
  context_hash TEXT,
  metadata JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- BACKEND GENERATED DATA ------------------------------
CREATE TABLE generated_content_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  content_type TEXT,
  reference_id UUID,
  source TEXT,
  prompt_used TEXT,
  metadata JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- USER PREFERENCES ------------------------------
CREATE TABLE user_preferences (
  user_id UUID PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
  preferred_voice_style TEXT, -- calm / poetic / direct / analytical
  preferred_tone TEXT,        -- spiritual / scientific / philosophical
  dark_mode_enabled BOOLEAN DEFAULT FALSE,
  notifications_enabled BOOLEAN DEFAULT TRUE,
  metadata JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- MOOD LOGS ------------------------------
CREATE TABLE mood_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  session_id UUID REFERENCES user_sessions(id) ON DELETE SET NULL,
  mood TEXT,                 -- joyful, anxious, content, restless, etc.
  intensity INTEGER CHECK (intensity BETWEEN 1 AND 10),
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE content_creations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id), -- nullable for admin/system content
  title TEXT NOT NULL,
  content_type TEXT CHECK (content_type IN ('BLOG', 'ESSAY', 'POEM', 'STORY', 'QUOTE')),
  prompt TEXT, -- original prompt or inspiration
  generated_content TEXT NOT NULL,
  media_url TEXT, -- optional: audio, video, or image reference
  metadata JSONB, -- e.g. {"mood": "reflective", "tags": ["truth", "devotion"]}
  source TEXT CHECK (source IN ('USER', 'ADMIN', 'SCRIPT')) DEFAULT 'USER',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- SCRIPT RUNS: Logs of backend batch jobs (Sadhana ingestion, admin seeding, etc.)
CREATE TABLE script_runs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  script_name TEXT NOT NULL,                     -- e.g. seed_quizzes_v1, generate_moral_stories
  summary TEXT,                                  -- Short human-readable summary of purpose
  metadata JSONB,                                -- Optional: { "source": "Claude", "type": "story_batch" }
  executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- BOOKMARKS: User-saved content across Nandi features (quiz, game, reflection, chat, etc.)
CREATE TABLE bookmarks (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,         -- User who bookmarked
  content_type TEXT NOT NULL CHECK (content_type IN ('QUIZ', 'GAME', 'REFLECTION', 'ASK_NANDI', 'CONTENT_CREATION')),
  reference_id UUID NOT NULL,                                           -- Points to item in feature table
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);