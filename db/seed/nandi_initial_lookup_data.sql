-- Nandi AI Initial Lookup Data Seed File
-- Generated: 2025-04-18
-- This file inserts initial lookup/configuration data for all lookup tables in the schema.

-- 1. ACTIVITY POINTS MAPPING
INSERT INTO activity_points_mapping (activity_type, points_source, description, default_points, created_at, updated_at) VALUES
  ('ask_nandi', 'user_action', 'Points for asking Nandi a question', 10, NOW(), NOW()),
  ('reflection_journal', 'user_action', 'Points for writing a reflection journal entry', 15, NOW(), NOW()),
  ('quiz', 'user_action', 'Points for completing a quiz', 20, NOW(), NOW()),
  ('game', 'user_action', 'Points for playing a game session', 5, NOW(), NOW());

-- 2. GAMES
INSERT INTO games (id, name, description, url, category, created_at, updated_at) VALUES
  ('33333333-dddd-4ddd-8ddd-dddddddddddd', 'Zen Tiles', 'A relaxing tile-matching game for mindfulness.', 'https://games.nandi.ai/zen-tiles', 'mindfulness', NOW(), NOW()),
  ('44444444-eeee-4eee-8eee-eeeeeeeeeeee', 'Focus Quest', 'A focus-building adventure game.', 'https://games.nandi.ai/focus-quest', 'focus', NOW(), NOW());
