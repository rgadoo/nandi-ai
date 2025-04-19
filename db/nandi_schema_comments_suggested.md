# 📘 Nandi 2.0 Schema - Table & Column Comments

## 🧾 users

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `email` | Email address of the user |
| `name` | Display name or full name |

## 🧾 user_sessions

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `started_at` | Start time of the activity or session |
| `ended_at` | _(TODO)_ |
| `metadata` | Flexible JSON metadata |
| `session_quality_score` | _(TODO)_ |
| `total_focus_minutes` | _(TODO)_ |

## 🧾 activity_occurrences

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `session_id` | Reference to the session |
| `activity_type` | Type of activity (e.g., QUIZ, REFLECTION, etc.) |
| `reference_id` | Points to a row in a related content table |
| `started_at` | Start time of the activity or session |
| `completed_at` | End time or completion timestamp |
| `metadata` | Flexible JSON metadata |

## 🧾 activity_points_mapping

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `activity_type` | Type of activity (e.g., QUIZ, REFLECTION, etc.) |
| `points_source` | _(TODO)_ |
| `description` | Human-readable detail |
| `default_points` | _(TODO)_ |

## 🧾 points_history

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `activity_occurrence_id` | _(TODO)_ |
| `points_earned` | _(TODO)_ |
| `source` | Origin: USER, ADMIN, SCRIPT |
| `awarded_at` | _(TODO)_ |

## 🧾 ask_nandi_conversations

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `question` | _(TODO)_ |
| `tone` | Tone used in content generation |
| `response` | _(TODO)_ |
| `reflective_summary` | _(TODO)_ |

## 🧾 ask_nandi_reflections

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `conversation_id` | _(TODO)_ |
| `user_id` | Reference to the user |
| `journal_entry` | _(TODO)_ |
| `tags` | Labels associated with reflection or content |

## 🧾 reflection_journal_entries

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `content` | Main body of written or generated text |
| `tags` | Labels associated with reflection or content |

## 🧾 quizzes

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `title` | Title of the item |
| `type` | _(TODO)_ |
| `prompt` | Original prompt that triggered generation |
| `source` | Origin: USER, ADMIN, SCRIPT |
| `created_by` | User or system who created the record |

## 🧾 quiz_questions

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `quiz_id` | _(TODO)_ |
| `question` | _(TODO)_ |
| `options` | _(TODO)_ |
| `response_narratives` | _(TODO)_ |
| `order_index` | Display order for quiz or reflection items |

## 🧾 quiz_responses

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `quiz_id` | _(TODO)_ |
| `user_id` | Reference to the user |
| `session_id` | Reference to the session |
| `responses` | User's selected answers or input |
| `score` | Numeric score awarded to the user |

## 🧾 games

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `name` | Display name or full name |
| `description` | Human-readable detail |
| `url` | _(TODO)_ |
| `category` | _(TODO)_ |

## 🧾 game_sessions

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `game_id` | _(TODO)_ |
| `started_at` | Start time of the activity or session |
| `ended_at` | _(TODO)_ |
| `score` | Numeric score awarded to the user |
| `metadata` | Flexible JSON metadata |

## 🧾 agent_insights

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `activity_occurrence_id` | _(TODO)_ |
| `insight_type` | _(TODO)_ |
| `summary` | Condensed version of content or insight |
| `details` | Full explanation or AI-generated output |
| `created_by` | User or system who created the record |

## 🧾 general_chat_messages

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `session_id` | Reference to the session |
| `activity_occurrence_id` | _(TODO)_ |
| `role` | Message sender role: user or AI |
| `sequence_number` | _(TODO)_ |
| `message` | The text message content |
| `topic` | Theme of conversation or log |
| `context_hash` | Used to group contextual chats |
| `metadata` | Flexible JSON metadata |

## 🧾 generated_content_logs

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `content_type` | Type of content (e.g., QUIZ, BLOG, STORY) |
| `reference_id` | Points to a row in a related content table |
| `source` | Origin: USER, ADMIN, SCRIPT |
| `prompt_used` | _(TODO)_ |
| `metadata` | Flexible JSON metadata |

## 🧾 user_preferences

| Column | Suggested Comment |
|--------|--------------------|
| `user_id` | Reference to the user |
| `preferred_voice_style` | _(TODO)_ |
| `preferred_tone` | _(TODO)_ |
| `dark_mode_enabled` | _(TODO)_ |
| `notifications_enabled` | _(TODO)_ |
| `metadata` | Flexible JSON metadata |

## 🧾 mood_logs

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `session_id` | Reference to the session |
| `mood` | User's emotional state |
| `intensity` | Scale of emotional intensity |
| `notes` | _(TODO)_ |

## 🧾 content_creations

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `title` | Title of the item |
| `content_type` | Type of content (e.g., QUIZ, BLOG, STORY) |
| `prompt` | Original prompt that triggered generation |
| `generated_content` | _(TODO)_ |
| `media_url` | Optional URL to media (audio, video, image) |
| `metadata` | Flexible JSON metadata |
| `source` | Origin: USER, ADMIN, SCRIPT |

## 🧾 script_runs

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `script_name` | Script or automation that inserted the data |
| `summary` | Condensed version of content or insight |
| `metadata` | Flexible JSON metadata |
| `executed_at` | _(TODO)_ |

## 🧾 bookmarks

| Column | Suggested Comment |
|--------|--------------------|
| `id` | Primary key identifier |
| `user_id` | Reference to the user |
| `content_type` | Type of content (e.g., QUIZ, BLOG, STORY) |
| `reference_id` | Points to a row in a related content table |
