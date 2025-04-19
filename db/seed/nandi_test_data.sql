
-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts minimal, error-free test data for all major tables in the Nandi AI schema.

SET search_path TO nandi, public;

-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('33333333-cccc-4ccc-8ccc-cccccccccccc', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('44444444-dddd-4ddd-8ddd-dddddddddddd', '33333333-cccc-4ccc-8ccc-cccccccccccc', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('55555555-eeee-4eee-8eee-eeeeeeeeeeee', '33333333-cccc-4ccc-8ccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"44444444-dddd-4ddd-8ddd-dddddddddddd": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('66666666-ffff-4fff-8fff-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('77777777-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('88888888-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('99999999-cccc-4ccc-8ccc-cccccccccccc', '22222222-2222-2222-2222-222222222222', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('aaaaaaaa-dddd-4ddd-8ddd-dddddddddddd', '11111111-1111-1111-1111-111111111111', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts realistic, diverse, production-ready QA data for all major tables.
--
-- SCHEMA USAGE: All tables are referenced with the 'nandi.' schema prefix.
-- At the start, we set the search_path to ensure all inserts go to the correct schema.
--
-- NOTE: Initial lookup/configuration data (games, quizzes, quiz questions, activity_points_mapping, etc.) is seeded separately in 'nandi_initial_lookup_data.sql'.
-- Run the lookup/configuration seed file BEFORE this file for a clean setup.
--
-- Example:
--   psql < db/seed/nandi_initial_lookup_data.sql
--   psql < db/seed/nandi_test_data.sql

SET search_path TO nandi, public;

-- 1. USERS
-- Minimal, error-free test data for all major tables
-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('bbbb1111-bbbb-4111-8111-bbbbbbbbbbbb', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('cccc1111-cccc-4111-8111-cccccccccccc', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('dddd1111-dddd-4111-8111-dddddddddddd', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('eeee1111-eeee-4111-8111-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('ffff1111-ffff-4111-8111-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('gggg1111-gggg-4111-8111-gggggggggggg', '11111111-1111-1111-1111-111111111111', 'ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', 10, 'quiz', NOW(), NOW(), NOW());

-- END OF MINIMAL, ERROR-FREE TEST DATA

-- Generated: 2025-04-18
-- This file inserts realistic, diverse, production-ready QA data for all major tables.
--
-- SCHEMA USAGE: All tables are referenced with the 'nandi.' schema prefix.
-- At the start, we set the search_path to ensure all inserts go to the correct schema.
--
-- NOTE: Initial lookup/configuration data (games, quizzes, quiz questions, activity_points_mapping, etc.) is seeded separately in 'nandi_initial_lookup_data.sql'.
-- Run the lookup/configuration seed file BEFORE this file for a clean setup.
--
-- Example:
--   psql < db/seed/nandi_initial_lookup_data.sql
--   psql < db/seed/nandi_test_data.sql

SET search_path TO nandi, public;


-- 1. USERS
-- Minimal, error-free test data for all major tables
-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('bbbb1111-bbbb-4111-8111-bbbbbbbbbbbb', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('cccc1111-cccc-4111-8111-cccccccccccc', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('dddd1111-dddd-4111-8111-dddddddddddd', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('eeee1111-eeee-4111-8111-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('ffff1111-ffff-4111-8111-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('gggg1111-gggg-4111-8111-gggggggggggg', '11111111-1111-1111-1111-111111111111', 'ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', 10, 'quiz', NOW(), NOW(), NOW());

  ('a1111111-1111-1111-1111-111111111111', 'maya.poet@example.com', 'Maya Poet', NOW() - interval '19 days', NOW() - interval '1 days'),
  ('a2222222-2222-2222-2222-222222222222', 'samuel.longjournal@example.com', 'Samuel Longjournal', NOW() - interval '22 days', NOW() - interval '2 days'),
  ('a3333333-3333-3333-3333-333333333333', 'alex.gamer@example.com', 'Alex Gamer', NOW() - interval '15 days', NOW() - interval '1 days'),
  ('a4444444-4444-4444-4444-444444444444', 'lucy.direct@example.com', 'Lucy Direct', NOW() - interval '10 days', NOW() - interval '1 days'),
  ('a5555555-5555-5555-5555-555555555555', 'nina.scientific@example.com', 'Nina Scientific', NOW() - interval '17 days', NOW() - interval '2 days'),
  ('a6666666-6666-6666-6666-666666666666', 'omar.casual@example.com', 'Omar Casual', NOW() - interval '14 days', NOW() - interval '1 days'),
  ('a7777777-7777-7777-7777-777777777777', 'rachel.analytical@example.com', 'Rachel Analytical', NOW() - interval '12 days', NOW() - interval '1 days'),
  ('a8888888-8888-8888-8888-888888888888', 'peter.minimal@example.com', 'Peter Minimal', NOW() - interval '13 days', NOW() - interval '1 days');

-- 1a. QUIZZES
INSERT INTO nandi.quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'Mindfulness Basics', 'knowledge', 'Test your mindfulness basics.', 'system', 'a5555555-5555-5555-5555-555555555555', NOW(), NOW()),
  ('22222222-cccc-4ccc-8ccc-cccccccccccc', 'Healthy Habits', 'wellness', 'Assess your healthy habits.', 'system', 'a5555555-5555-5555-5555-555555555555', NOW(), NOW());

-- 1b. QUIZ QUESTIONS
INSERT INTO nandi.quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('a1b2c3d4-0000-4000-8000-000000000001', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'What is mindfulness?', '{"a": "Awareness", "b": "Distraction", "c": "Sleep"}', 'a', '{}', NOW(), NOW()),
  ('a1b2c3d4-0000-4000-8000-000000000002', '22222222-cccc-4ccc-8ccc-cccccccccccc', 'What is a healthy habit?', '{"a": "Exercise", "b": "Procrastination", "c": "Overthinking"}', 'a', '{}', NOW(), NOW());

-- 2. USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('a1111111-1111-1111-1111-111111111111', 'poetic', 'spiritual', TRUE, TRUE, '{}', NOW() - interval '19 days', NOW() - interval '1 days'),
  ('a2222222-2222-2222-2222-222222222222', 'calm', 'philosophical', FALSE, TRUE, '{}', NOW() - interval '22 days', NOW() - interval '2 days'),
  ('a3333333-3333-3333-3333-333333333333', 'direct', 'casual', TRUE, FALSE, '{}', NOW() - interval '15 days', NOW() - interval '1 days'),
  ('a4444444-4444-4444-4444-444444444444', 'direct', 'scientific', FALSE, TRUE, '{}', NOW() - interval '10 days', NOW() - interval '1 days'),
  ('a5555555-5555-5555-5555-555555555555', 'analytical', 'scientific', TRUE, TRUE, '{}', NOW() - interval '17 days', NOW() - interval '2 days'),
  ('a6666666-6666-6666-6666-666666666666', 'casual', 'casual', FALSE, TRUE, '{}', NOW() - interval '14 days', NOW() - interval '1 days'),
  ('a7777777-7777-7777-7777-777777777777', 'analytical', 'philosophical', TRUE, TRUE, '{}', NOW() - interval '12 days', NOW() - interval '1 days');

-- 3. USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  -- Maya Poet
  ('11111111-1111-4111-8111-111111111111', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '18 days', NOW() - interval '18 days' + interval '2 hours', '{"device": "iPhone"}', 8, 25, NOW() - interval '18 days', NOW() - interval '18 days'),
  ('11111111-1111-4111-8111-111111111112', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '16 days', NOW() - interval '16 days' + interval '1 hours', '{"device": "Web"}', 7, 15, NOW() - interval '16 days', NOW() - interval '16 days'),
  ('11111111-1111-4111-8111-111111111113', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '10 days', NOW() - interval '10 days' + interval '1 hours', '{"device": "Android"}', 9, 30, NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Samuel Longjournal
  ('22222222-2222-4222-8222-222222222221', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '21 days', NOW() - interval '21 days' + interval '2 hours', '{"device": "Web"}', 7, 35, NOW() - interval '21 days', NOW() - interval '21 days'),
  ('22222222-2222-4222-8222-222222222222', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '19 days', NOW() - interval '19 days' + interval '2 hours', '{"device": "iPad"}', 9, 45, NOW() - interval '19 days', NOW() - interval '19 days'),
  ('22222222-2222-4222-8222-222222222223', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '17 days', NOW() - interval '17 days' + interval '1 hours', '{"device": "iPad"}', 9, 45, NOW() - interval '17 days', NOW() - interval '17 days'),
  -- Alex Gamer
  ('33333333-3333-4333-8333-333333333331', 'a3333333-3333-3333-3333-333333333333', NOW() - interval '13 days', NOW() - interval '13 days' + interval '2 hours', '{"device": "PC"}', 6, 10, NOW() - interval '13 days', NOW() - interval '13 days'),
  ('33333333-3333-4333-8333-333333333332', 'a3333333-3333-3333-3333-333333333333', NOW() - interval '11 days', NOW() - interval '11 days' + interval '1 hours', '{"device": "Web"}', 7, 20, NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Lucy Direct
  ('44444444-4444-4444-8444-444444444441', 'a4444444-4444-4444-4444-444444444444', NOW() - interval '9 days', NOW() - interval '9 days' + interval '1 hours', '{"device": "iPhone"}', 8, 30, NOW() - interval '9 days', NOW() - interval '9 days'),
  ('44444444-4444-4444-8444-444444444442', 'a4444444-4444-4444-4444-444444444444', NOW() - interval '8 days', NOW() - interval '8 days' + interval '1 hours', '{"device": "Web"}', 7, 20, NOW() - interval '8 days', NOW() - interval '8 days'),
  -- Nina Scientific
  ('55555555-5555-4555-8555-555555555551', 'a5555555-5555-5555-5555-555555555555', NOW() - interval '15 days', NOW() - interval '15 days' + interval '1 hours', '{"device": "Web"}', 9, 50, NOW() - interval '15 days', NOW() - interval '15 days'),
  ('55555555-5555-4555-8555-555555555552', 'a5555555-5555-5555-5555-555555555555', NOW() - interval '13 days', NOW() - interval '13 days' + interval '1 hours', '{"device": "Android"}', 8, 35, NOW() - interval '13 days', NOW() - interval '13 days'),
  -- Omar Casual
  ('66666666-6666-4666-8666-666666666661', 'a6666666-6666-6666-6666-666666666666', NOW() - interval '12 days', NOW() - interval '12 days' + interval '1 hours', '{"device": "iPhone"}', 6, 18, NOW() - interval '12 days', NOW() - interval '12 days'),
  -- Rachel Analytical
  ('77777777-7777-4777-8777-777777777771', 'a7777777-7777-7777-7777-777777777777', NOW() - interval '10 days', NOW() - interval '10 days' + interval '1 hours', '{"device": "Web"}', 8, 22, NOW() - interval '10 days', NOW() - interval '10 days');

-- 4. ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  -- Maya Poet: Ask Nandi, Reflection, Quiz
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111111', 'ask_nandi', '55555555-ffff-4fff-8fff-ffffffffffff', NOW() - interval '18 days', NOW() - interval '18 days' + interval '30 minutes', '{"topic": "purpose"}', NOW() - interval '18 days', NOW() - interval '18 days'),
  ('aaaaaaa2-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111112', 'reflection_journal', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', NOW() - interval '16 days', NOW() - interval '16 days' + interval '20 minutes', '{"mood": "inspired"}', NOW() - interval '16 days', NOW() - interval '16 days'),
  ('aaaaaaa3-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111113', 'quiz', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '10 days', NOW() - interval '10 days' + interval '10 minutes', '{"quiz_title": "Mindfulness"}', NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Samuel Longjournal: Reflection, Quiz
  ('bbbbbbb1-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a2222222-2222-2222-2222-222222222222', '22222222-2222-4222-8222-222222222221', 'reflection_journal', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '21 days', NOW() - interval '21 days' + interval '50 minutes', '{"mood": "thoughtful"}', NOW() - interval '21 days', NOW() - interval '21 days'),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a2222222-2222-2222-2222-222222222222', '22222222-2222-4222-8222-222222222222', 'quiz', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '19 days', NOW() - interval '19 days' + interval '15 minutes', '{"quiz_title": "Mindfulness"}', NOW() - interval '19 days', NOW() - interval '19 days'),
  -- Alex Gamer: Games only
  ('55555555-ffff-4fff-8fff-ffffffffffff', 'a3333333-3333-3333-3333-333333333333', '33333333-3333-4333-8333-333333333331', 'game', '33333333-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '13 days', NOW() - interval '13 days' + interval '30 minutes', '{"game": "Zen Tiles"}', NOW() - interval '13 days', NOW() - interval '13 days'),
  ('66666666-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a3333333-3333-3333-3333-333333333333', '33333333-3333-4333-8333-333333333332', 'game', '44444444-eeee-4eee-8eee-eeeeeeeeeeee', NOW() - interval '11 days', NOW() - interval '11 days' + interval '40 minutes', '{"game": "Focus Quest"}', NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Lucy Direct: Ask Nandi, Quiz
  ('ddddddd1-dddd-4ddd-8ddd-dddddddddddd', 'a4444444-4444-4444-4444-444444444444', '44444444-4444-4444-8444-444444444441', 'ask_nandi', '66666666-aaaa-4aaa-8aaa-aaaaaaaaaaaa', NOW() - interval '9 days', NOW() - interval '9 days' + interval '25 minutes', '{"topic": "focus"}', NOW() - interval '9 days', NOW() - interval '9 days'),
  ('ddddddd2-dddd-4ddd-8ddd-dddddddddddd', 'a4444444-4444-4444-4444-444444444444', '44444444-4444-4444-8444-444444444442', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '8 days', NOW() - interval '8 days' + interval '10 minutes', '{"quiz_title": "Habits"}', NOW() - interval '8 days', NOW() - interval '8 days'),
  -- Nina Scientific: Quiz, Reflection
  ('eeeeeee1-eeee-4eee-8eee-eeeeeeeeeeee', 'a5555555-5555-5555-5555-555555555555', '55555555-5555-4555-8555-555555555551', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '15 days', NOW() - interval '15 days' + interval '10 minutes', '{"quiz_title": "Habits"}', NOW() - interval '15 days', NOW() - interval '15 days'),
  ('eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeee', 'a5555555-5555-5555-5555-555555555555', '55555555-5555-4555-8555-555555555552', 'reflection_journal', '33333333-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '13 days', NOW() - interval '13 days' + interval '15 minutes', '{"mood": "curious"}', NOW() - interval '13 days', NOW() - interval '13 days'),
  -- Omar Casual: Reflection
  ('ffffff1f-ffff-4fff-8fff-ffffffffffff', 'a6666666-6666-6666-6666-666666666666', '66666666-6666-4666-8666-666666666661', 'reflection_journal', '44444444-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '12 days', NOW() - interval '12 days' + interval '10 minutes', '{"mood": "relaxed"}', NOW() - interval '12 days', NOW() - interval '12 days'),
  -- Rachel Analytical: Ask Nandi
  ('77777771-7777-4777-8777-777777777771', 'a7777777-7777-7777-7777-777777777777', '77777777-7777-4777-8777-777777777771', 'ask_nandi', '77777777-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '10 days', NOW() - interval '10 days' + interval '20 minutes', '{"topic": "analysis"}', NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Peter Minimal: Quiz
  ('88888881-8888-4888-8888-888888888881', 'a8888888-8888-8888-8888-888888888888', '88888888-8888-4888-8888-888888888881', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '11 days', NOW() - interval '11 days' + interval '5 minutes', '{"quiz_title": "Habits"}', NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Ivy Philosopher: Reflection
  ('99999991-9999-4999-8999-999999999991', 'a9999999-9999-9999-9999-999999999999', '99999999-9999-4999-8999-999999999991', 'reflection_journal', '55555555-eeee-4eee-8eee-eeeeeeeeeeee', NOW() - interval '14 days', NOW() - interval '14 days' + interval '30 minutes', '{"mood": "philosophical"}', NOW() - interval '14 days', NOW() - interval '14 days'),
  -- Tony Gamer: Games only
  ('10101011-1010-4010-8010-101010101011', 'a1010101-1010-1010-1010-101010101010', '10101010-1010-4010-8010-101010101011', 'game', '33333333-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '10 days', NOW() - interval '10 days' + interval '35 minutes', '{"game": "Zen Tiles"}', NOW() - interval '10 days', NOW() - interval '10 days');

-- 5. ASK NANDI CONVERSATIONS
-- (Add realistic conversations with references to users and sessions)
-- 6. ASK NANDI REFLECTIONS
-- (Add realistic reflections with references to conversations and users)
-- 7. REFLECTION JOURNAL ENTRIES
-- (Add realistic journal entries with references to users)
-- 8. QUIZZES, QUIZ QUESTIONS, QUIZ RESPONSES
-- (Add quizzes, questions, and responses with references to users and sessions)
-- 9. GAMES, GAME SESSIONS
-- (Add games and sessions with references to users)
-- 10. GENERAL CHAT MESSAGES
-- (Add chat messages with references to users, sessions, and activities)
-- 11. MOOD LOGS
-- (Add mood logs with references to users and sessions)
-- 12. AGENT INSIGHTS
-- (Add agent insights with references to users and activities)
-- 13. POINTS HISTORY
-- (Add points history with references to users and activities)


-- 1. USERS
-- Minimal, error-free test data for all major tables
-- USERS
INSERT INTO users (id, email, name, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'alice@example.com', 'Alice', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'bob@example.com', 'Bob', NOW(), NOW());

-- USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'calm', 'friendly', TRUE, TRUE, '{}', NOW(), NOW()),
  ('22222222-2222-2222-2222-222222222222', 'direct', 'neutral', FALSE, TRUE, '{}', NOW(), NOW());

-- USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', NOW(), NOW() + interval '1 hour', '{}', 8, 30, NOW(), NOW()),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', NOW(), NOW() + interval '2 hours', '{}', 7, 45, NOW(), NOW());

-- ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  ('ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'quiz', NULL, NOW(), NOW() + interval '10 min', '{}', NOW(), NOW()),
  ('eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'reflection_journal', NULL, NOW(), NOW() + interval '20 min', '{}', NOW(), NOW());

-- QUIZZES
INSERT INTO quizzes (id, title, type, prompt, source, created_by, created_at, updated_at) VALUES
  ('1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'Test Quiz', 'knowledge', 'A test quiz.', 'system', '11111111-1111-1111-1111-111111111111', NOW(), NOW());

-- QUIZ QUESTIONS
INSERT INTO quiz_questions (id, quiz_id, question, options, correct_option, metadata, created_at, updated_at) VALUES
  ('aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', 'What is 2+2?', '{"a": "3", "b": "4", "c": "5"}', 'b', '{}', NOW(), NOW());

-- QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('bbbb1111-bbbb-4111-8111-bbbbbbbbbbbb', '1111aaaa-1111-4111-8111-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '{"aaaa1111-aaaa-4111-8111-aaaaaaaaaaaa": "b"}', 1, NOW(), NOW());

-- GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('cccc1111-cccc-4111-8111-cccccccccccc', '22222222-2222-2222-2222-222222222222', 'game-0001-0000-0000-000000000001', NOW(), NOW() + interval '30 min', 120, NOW(), NOW());

-- GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('dddd1111-dddd-4111-8111-dddddddddddd', '22222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'user', 1, 'Hello!', 'greeting', NOW(), NOW());

-- MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('eeee1111-eeee-4111-8111-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'happy', 8, NOW());

-- AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('ffff1111-ffff-4111-8111-ffffffffffff', '22222222-2222-2222-2222-222222222222', 'eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeeee', 'preference', 'Likes journaling', 'system', NOW(), NOW());

-- POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('gggg1111-gggg-4111-8111-gggggggggggg', '11111111-1111-1111-1111-111111111111', 'ddddddd1-dddd-4ddd-8ddd-ddddddddddddd', 10, 'quiz', NOW(), NOW(), NOW());

  ('a1111111-1111-1111-1111-111111111111', 'maya.poet@example.com', 'Maya Poet', NOW() - interval '19 days', NOW() - interval '1 days'),
  ('a2222222-2222-2222-2222-222222222222', 'samuel.longjournal@example.com', 'Samuel Longjournal', NOW() - interval '22 days', NOW() - interval '2 days'),
  ('a3333333-3333-3333-3333-333333333333', 'alex.gamer@example.com', 'Alex Gamer', NOW() - interval '15 days', NOW() - interval '1 days'),
  ('a4444444-4444-4444-4444-444444444444', 'lucy.direct@example.com', 'Lucy Direct', NOW() - interval '10 days', NOW() - interval '1 days'),
  ('a5555555-5555-5555-5555-555555555555', 'nina.scientific@example.com', 'Nina Scientific', NOW() - interval '17 days', NOW() - interval '2 days'),
  ('a1b2c3d4-0000-4000-8000-000000000002', '22222222-cccc-4ccc-8ccc-cccccccccccc', 'What is a healthy habit?', '{"a": "Exercise", "b": "Procrastination", "c": "Overthinking"}', 'a', '{}', NOW(), NOW());

-- 2. USER PREFERENCES
INSERT INTO user_preferences (user_id, preferred_voice_style, preferred_tone, dark_mode_enabled, notifications_enabled, metadata, created_at, updated_at) VALUES
  ('a1111111-1111-1111-1111-111111111111', 'poetic', 'spiritual', TRUE, TRUE, '{}', NOW() - interval '19 days', NOW() - interval '1 days'),
  ('a2222222-2222-2222-2222-222222222222', 'calm', 'philosophical', FALSE, TRUE, '{}', NOW() - interval '22 days', NOW() - interval '2 days'),
  ('a3333333-3333-3333-3333-333333333333', 'direct', 'casual', TRUE, FALSE, '{}', NOW() - interval '15 days', NOW() - interval '1 days'),
  ('a4444444-4444-4444-4444-444444444444', 'direct', 'scientific', FALSE, TRUE, '{}', NOW() - interval '10 days', NOW() - interval '1 days'),
  ('a5555555-5555-5555-5555-555555555555', 'analytical', 'scientific', TRUE, TRUE, '{}', NOW() - interval '17 days', NOW() - interval '2 days'),
  ('a6666666-6666-6666-6666-666666666666', 'casual', 'casual', FALSE, TRUE, '{}', NOW() - interval '14 days', NOW() - interval '1 days'),
  ('a7777777-7777-7777-7777-777777777777', 'analytical', 'philosophical', TRUE, TRUE, '{}', NOW() - interval '12 days', NOW() - interval '1 days'),
  ('a8888888-8888-8888-8888-888888888888', 'minimal', 'direct', FALSE, FALSE, '{}', NOW() - interval '13 days', NOW() - interval '1 days'),
  ('a9999999-9999-9999-9999-999999999999', 'poetic', 'philosophical', TRUE, TRUE, '{}', NOW() - interval '16 days', NOW() - interval '2 days'),
  ('a1010101-1010-1010-1010-101010101010', 'casual', 'casual', TRUE, FALSE, '{}', NOW() - interval '11 days', NOW() - interval '1 days');

-- 3. USER SESSIONS
-- 3. USER SESSIONS
INSERT INTO user_sessions (id, user_id, started_at, ended_at, metadata, session_quality_score, total_focus_minutes, created_at, updated_at) VALUES
  -- Maya Poet
  ('11111111-1111-4111-8111-111111111111', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '18 days', NOW() - interval '18 days' + interval '2 hours', '{"device": "iPhone"}', 8, 25, NOW() - interval '18 days', NOW() - interval '18 days'),
  ('11111111-1111-4111-8111-111111111112', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '16 days', NOW() - interval '16 days' + interval '1 hours', '{"device": "Web"}', 7, 15, NOW() - interval '16 days', NOW() - interval '16 days'),
  ('11111111-1111-4111-8111-111111111113', 'a1111111-1111-1111-1111-111111111111', NOW() - interval '10 days', NOW() - interval '10 days' + interval '1 hours', '{"device": "iPad"}', 9, 40, NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Samuel Longjournal
  ('22222222-2222-4222-8222-222222222221', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '21 days', NOW() - interval '21 days' + interval '3 hours', '{"device": "Android"}', 8, 60, NOW() - interval '21 days', NOW() - interval '21 days'),
  ('22222222-2222-4222-8222-222222222222', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '19 days', NOW() - interval '19 days' + interval '2 hours', '{"device": "Web"}', 7, 35, NOW() - interval '19 days', NOW() - interval '19 days'),
  ('22222222-2222-4222-8222-222222222223', 'a2222222-2222-2222-2222-222222222222', NOW() - interval '17 days', NOW() - interval '17 days' + interval '1 hours', '{"device": "iPad"}', 9, 45, NOW() - interval '17 days', NOW() - interval '17 days'),
  -- Alex Gamer (game-only)
  ('33333333-3333-4333-8333-333333333331', 'a3333333-3333-3333-3333-333333333333', NOW() - interval '13 days', NOW() - interval '13 days' + interval '2 hours', '{"device": "PC"}', 6, 10, NOW() - interval '13 days', NOW() - interval '13 days'),
  ('33333333-3333-4333-8333-333333333332', 'a3333333-3333-3333-3333-333333333333', NOW() - interval '11 days', NOW() - interval '11 days' + interval '1 hours', '{"device": "Web"}', 7, 20, NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Lucy Direct
  ('44444444-4444-4444-8444-444444444441', 'a4444444-4444-4444-4444-444444444444', NOW() - interval '9 days', NOW() - interval '9 days' + interval '1 hours', '{"device": "iPhone"}', 8, 30, NOW() - interval '9 days', NOW() - interval '9 days'),
  ('44444444-4444-4444-8444-444444444442', 'a4444444-4444-4444-4444-444444444444', NOW() - interval '8 days', NOW() - interval '8 days' + interval '1 hours', '{"device": "Web"}', 7, 20, NOW() - interval '8 days', NOW() - interval '8 days'),
  -- Nina Scientific
  ('55555555-5555-4555-8555-555555555551', 'a5555555-5555-5555-5555-555555555555', NOW() - interval '15 days', NOW() - interval '15 days' + interval '1 hours', '{"device": "Web"}', 9, 50, NOW() - interval '15 days', NOW() - interval '15 days'),
  ('55555555-5555-4555-8555-555555555552', 'a5555555-5555-5555-5555-555555555555', NOW() - interval '13 days', NOW() - interval '13 days' + interval '1 hours', '{"device": "Android"}', 8, 35, NOW() - interval '13 days', NOW() - interval '13 days'),
  -- Omar Casual
  ('77777777-7777-4777-8777-777777777771', 'a7777777-7777-7777-7777-777777777777', NOW() - interval '10 days', NOW() - interval '10 days' + interval '1 hours', '{"device": "Web"}', 8, 22, NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Peter Minimal
  ('88888888-8888-4888-8888-888888888881', 'a8888888-8888-8888-8888-888888888888', NOW() - interval '11 days', NOW() - interval '11 days' + interval '1 hours', '{"device": "Android"}', 7, 15, NOW() - interval '11 days', NOW() - interval '11 days');

-- 4. ACTIVITY OCCURRENCES
INSERT INTO activity_occurrences (id, user_id, session_id, activity_type, reference_id, started_at, completed_at, metadata, created_at, updated_at) VALUES
  -- Maya Poet: Ask Nandi, Reflection, Quiz
  ('aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111111', 'ask_nandi', '55555555-ffff-4fff-8fff-ffffffffffff', NOW() - interval '18 days', NOW() - interval '18 days' + interval '30 minutes', '{"topic": "purpose"}', NOW() - interval '18 days', NOW() - interval '18 days'),
  ('aaaaaaa2-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111112', 'reflection_journal', '11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', NOW() - interval '16 days', NOW() - interval '16 days' + interval '20 minutes', '{"mood": "inspired"}', NOW() - interval '16 days', NOW() - interval '16 days'),
  ('aaaaaaa3-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111113', 'quiz', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '10 days', NOW() - interval '10 days' + interval '10 minutes', '{"quiz_title": "Mindfulness"}', NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Samuel Longjournal: Reflection, Quiz
  ('bbbbbbb1-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a2222222-2222-2222-2222-222222222222', '22222222-2222-4222-8222-222222222221', 'reflection_journal', '22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '21 days', NOW() - interval '21 days' + interval '50 minutes', '{"mood": "thoughtful"}', NOW() - interval '21 days', NOW() - interval '21 days'),
  ('bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a2222222-2222-2222-2222-222222222222', '22222222-2222-4222-8222-222222222222', 'quiz', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '19 days', NOW() - interval '19 days' + interval '15 minutes', '{"quiz_title": "Mindfulness"}', NOW() - interval '19 days', NOW() - interval '19 days'),
  -- Alex Gamer: Games only
  ('55555555-ffff-4fff-8fff-ffffffffffff', 'a3333333-3333-3333-3333-333333333333', '33333333-3333-4333-8333-333333333331', 'game', '33333333-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '13 days', NOW() - interval '13 days' + interval '30 minutes', '{"game": "Zen Tiles"}', NOW() - interval '13 days', NOW() - interval '13 days'),
  ('66666666-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a3333333-3333-3333-3333-333333333333', '33333333-3333-4333-8333-333333333332', 'game', '44444444-eeee-4eee-8eee-eeeeeeeeeeee', NOW() - interval '11 days', NOW() - interval '11 days' + interval '40 minutes', '{"game": "Focus Quest"}', NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Lucy Direct: Ask Nandi, Quiz
  ('ddddddd1-dddd-4ddd-8ddd-dddddddddddd', 'a4444444-4444-4444-4444-444444444444', '44444444-4444-4444-8444-444444444441', 'ask_nandi', '66666666-aaaa-4aaa-8aaa-aaaaaaaaaaaa', NOW() - interval '9 days', NOW() - interval '9 days' + interval '25 minutes', '{"topic": "focus"}', NOW() - interval '9 days', NOW() - interval '9 days'),
  ('ddddddd2-dddd-4ddd-8ddd-dddddddddddd', 'a4444444-4444-4444-4444-444444444444', '44444444-4444-4444-8444-444444444442', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '8 days', NOW() - interval '8 days' + interval '10 minutes', '{"quiz_title": "Habits"}', NOW() - interval '8 days', NOW() - interval '8 days'),
  -- Nina Scientific: Quiz, Reflection
  ('eeeeeee1-eeee-4eee-8eee-eeeeeeeeeeee', 'a5555555-5555-5555-5555-555555555555', '55555555-5555-4555-8555-555555555551', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '15 days', NOW() - interval '15 days' + interval '10 minutes', '{"quiz_title": "Habits"}', NOW() - interval '15 days', NOW() - interval '15 days'),
  ('eeeeeee2-eeee-4eee-8eee-eeeeeeeeeeee', 'a5555555-5555-5555-5555-555555555555', '55555555-5555-4555-8555-555555555552', 'reflection_journal', '33333333-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '13 days', NOW() - interval '13 days' + interval '15 minutes', '{"mood": "curious"}', NOW() - interval '13 days', NOW() - interval '13 days'),
  -- Omar Casual: Reflection
  ('ffffff1f-ffff-4fff-8fff-ffffffffffff', 'a6666666-6666-6666-6666-666666666666', '66666666-6666-4666-8666-666666666661', 'reflection_journal', '44444444-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '12 days', NOW() - interval '12 days' + interval '10 minutes', '{"mood": "relaxed"}', NOW() - interval '12 days', NOW() - interval '12 days'),
  -- Rachel Analytical: Ask Nandi
  ('77777771-7777-4777-8777-777777777771', 'a7777777-7777-7777-7777-777777777777', '77777777-7777-4777-8777-777777777771', 'ask_nandi', '77777777-bbbb-4bbb-8bbb-bbbbbbbbbbbb', NOW() - interval '10 days', NOW() - interval '10 days' + interval '20 minutes', '{"topic": "analysis"}', NOW() - interval '10 days', NOW() - interval '10 days'),
  -- Peter Minimal: Quiz
  ('88888881-8888-4888-8888-888888888881', 'a8888888-8888-8888-8888-888888888888', '88888888-8888-4888-8888-888888888881', 'quiz', '22222222-cccc-4ccc-8ccc-cccccccccccc', NOW() - interval '11 days', NOW() - interval '11 days' + interval '5 minutes', '{"quiz_title": "Habits"}', NOW() - interval '11 days', NOW() - interval '11 days'),
  -- Ivy Philosopher: Reflection
  ('99999991-9999-4999-8999-999999999991', 'a9999999-9999-9999-9999-999999999999', '99999999-9999-4999-8999-999999999991', 'reflection_journal', '55555555-eeee-4eee-8eee-eeeeeeeeeeee', NOW() - interval '14 days', NOW() - interval '14 days' + interval '30 minutes', '{"mood": "philosophical"}', NOW() - interval '14 days', NOW() - interval '14 days'),
  -- Tony Gamer: Games only
  ('10101011-1010-4010-8010-101010101011', 'a1010101-1010-1010-1010-101010101010', '10101010-1010-4010-8010-101010101011', 'game', '33333333-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '10 days', NOW() - interval '10 days' + interval '35 minutes', '{"game": "Zen Tiles"}', NOW() - interval '10 days', NOW() - interval '10 days');

-- 5. ASK NANDI CONVERSATIONS
INSERT INTO ask_nandi_conversations (id, user_id, question, tone, response, created_at, updated_at) VALUES
  ('c1111111-1111-4111-8111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'What is my purpose?', 'poetic', 'Your purpose is to grow and give.', NOW() - interval '18 days', NOW() - interval '18 days'),
  ('c2222222-2222-4222-8222-222222222222', 'a2222222-2222-2222-2222-222222222222', 'How can journaling help me?', 'philosophical', 'Journaling helps you process thoughts.', NOW() - interval '21 days', NOW() - interval '21 days');

-- 6. ASK NANDI REFLECTIONS
INSERT INTO ask_nandi_reflections (id, conversation_id, user_id, journal_entry, created_at, updated_at) VALUES
  ('r1111111-1111-4111-8111-111111111111', 'c1111111-1111-4111-8111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'I feel inspired after this conversation.', NOW() - interval '18 days', NOW() - interval '18 days'),
  ('r2222222-2222-4222-8222-222222222222', 'c2222222-2222-4222-8222-222222222222', 'a2222222-2222-2222-2222-222222222222', 'Journaling helps me process my thoughts.', NOW() - interval '21 days', NOW() - interval '21 days');

-- 7. REFLECTION JOURNAL ENTRIES
INSERT INTO reflection_journal_entries (id, user_id, content, created_at, updated_at) VALUES
  ('j1111111-1111-4111-8111-111111111111', 'a1111111-1111-1111-1111-111111111111', 'Today I reflected on purpose and growth.', NOW() - interval '16 days', NOW() - interval '16 days'),
  ('j2222222-2222-4222-8222-222222222222', 'a2222222-2222-2222-2222-222222222222', 'Long journaling session about habits.', NOW() - interval '19 days', NOW() - interval '19 days');

-- 8. QUIZ RESPONSES
INSERT INTO quiz_responses (id, quiz_id, user_id, session_id, responses, score, created_at, updated_at) VALUES
  ('11111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', '11111111-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a1111111-1111-1111-1111-111111111111', '11111111-1111-4111-8111-111111111113', '{"a1b2c3d4-0000-4000-8000-000000000001": "a"}', 1, NOW() - interval '10 days', NOW() - interval '10 days'),
  ('22222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', '22222222-cccc-4ccc-8ccc-cccccccccccc', 'a2222222-2222-2222-2222-222222222222', '22222222-2222-4222-8222-222222222222', '{"a1b2c3d4-0000-4000-8000-000000000002": "a"}', 1, NOW() - interval '19 days', NOW() - interval '19 days');

-- 9. GAME SESSIONS
INSERT INTO game_sessions (id, user_id, game_id, started_at, ended_at, score, created_at, updated_at) VALUES
  ('3e0d1f2a-4b5c-4d6e-8f7a-123456789abc', 'a3333333-3333-3333-3333-333333333333', '33333333-dddd-4ddd-8ddd-dddddddddddd', NOW() - interval '13 days', NOW() - interval '13 days' + interval '1 hour', 120, NOW() - interval '13 days', NOW() - interval '13 days');

-- 10. GENERAL CHAT MESSAGES
INSERT INTO general_chat_messages (id, user_id, session_id, activity_occurrence_id, role, sequence_number, message, topic, created_at, updated_at) VALUES
  ('m1111111-1111-4111-8111-111111111111', 'a4444444-4444-4444-4444-444444444444', '44444444-4444-4444-8444-444444444441', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'user', 1, 'Hi Nandi!', 'greeting', NOW() - interval '9 days', NOW() - interval '9 days'),
  ('m2222222-2222-4222-8222-222222222222', 'a5555555-5555-5555-5555-555555555555', '55555555-5555-4555-8555-555555555551', 'eeeeeee1-eeee-4eee-8eee-eeeeeeeeeeee', 'user', 1, 'What is a habit?', 'wellness', NOW() - interval '15 days', NOW() - interval '15 days');

-- 11. MOOD LOGS
INSERT INTO mood_logs (id, user_id, session_id, mood, intensity, created_at) VALUES
  ('ml111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a6666666-6666-6666-6666-666666666666', '66666666-6666-4666-8666-666666666661', 'relaxed', 7, NOW() - interval '12 days'),
  ('ml222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a7777777-7777-7777-7777-777777777777', '77777777-7777-4777-8777-777777777771', 'analytical', 8, NOW() - interval '10 days');

-- 12. AGENT INSIGHTS
INSERT INTO agent_insights (id, user_id, activity_occurrence_id, insight_type, summary, created_by, created_at, updated_at) VALUES
  ('ai111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a1111111-1111-1111-1111-111111111111', 'aaaaaaa1-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'engagement', 'User is highly engaged.', 'sadhana', NOW() - interval '18 days', NOW() - interval '18 days'),
  ('ai222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a2222222-2222-2222-2222-222222222222', 'bbbbbbb2-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'preference', 'User prefers quizzes.', 'sadhana', NOW() - interval '19 days', NOW() - interval '19 days');

-- 13. POINTS HISTORY
INSERT INTO points_history (id, user_id, activity_occurrence_id, points_earned, source, awarded_at, created_at, updated_at) VALUES
  ('ph111111-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'a3333333-3333-3333-3333-333333333333', '55555555-ffff-4fff-8fff-ffffffffffff', 50, 'game', NOW() - interval '13 days', NOW() - interval '13 days', NOW() - interval '13 days'),
  ('ph222222-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'a4444444-4444-4444-4444-444444444444', 'ddddddd2-dddd-4ddd-8ddd-dddddddddddd', 30, 'quiz', NOW() - interval '8 days', NOW() - interval '8 days', NOW() - interval '8 days');
