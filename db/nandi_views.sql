
-- Views for Nandi Database (Production-Ready Utilities)

-- 1. Total points per user
CREATE VIEW v_user_points_summary AS
SELECT
  user_id,
  SUM(points_earned) AS total_points
FROM points_history
GROUP BY user_id;

-- 2. Latest activity by user (used for resume or timeline)
CREATE VIEW v_latest_activity_by_user AS
SELECT DISTINCT ON (user_id)
  user_id,
  activity_type,
  reference_id,
  started_at,
  completed_at
FROM activity_occurrences
ORDER BY user_id, started_at DESC;

-- 3. Reflection tag usage summary
CREATE VIEW v_user_reflection_tags AS
SELECT
  user_id,
  UNNEST(tags) AS tag,
  COUNT(*) AS tag_count
FROM reflection_journal_entries
GROUP BY user_id, tag;

-- 4. Chat turn sequencing for general chat
CREATE VIEW v_chat_turns_grouped AS
SELECT
  user_id,
  session_id,
  activity_occurrence_id,
  sequence_number,
  role,
  message,
  topic,
  created_at
FROM general_chat_messages
ORDER BY user_id, session_id, sequence_number;
