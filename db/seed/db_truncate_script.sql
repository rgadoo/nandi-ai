-- db_truncate_script.sql
-- Truncates all main tables in the correct order, disables and re-enables triggers for clean reseeding.
-- WARNING: This will delete all data in the database!

BEGIN;

-- Disable triggers (if using for test env)
-- DO $$ DECLARE r RECORD; BEGIN FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP EXECUTE 'ALTER TABLE ' || quote_ident(r.tablename) || ' DISABLE TRIGGER ALL;'; END LOOP; END $$;

TRUNCATE TABLE 
  points_history,
  agent_insights,
  mood_logs,
  general_chat_messages,
  game_sessions,
  games,
  quiz_responses,
  quiz_questions,
  quizzes,
  reflection_journal_entries,
  ask_nandi_reflections,
  ask_nandi_conversations,
  activity_occurrences,
  user_sessions,
  user_preferences,
  users
RESTART IDENTITY CASCADE;

-- Re-enable triggers (if used)
-- DO $$ DECLARE r RECORD; BEGIN FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') LOOP EXECUTE 'ALTER TABLE ' || quote_ident(r.tablename) || ' ENABLE TRIGGER ALL;'; END LOOP; END $$;

COMMIT;
