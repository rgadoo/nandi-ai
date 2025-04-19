
## 🧩 Example Feature Doc Template

# 🧠 Ask Nandi Feature

## Summary
Spiritual AI Q&A with tone selection, journaling reflection, and agent insight scoring.

## Activity Type
`ASK_NANDI`

## Tables Used
- `ask_nandi_conversations`
- `ask_nandi_reflections`
- `activity_occurrences`

## API Endpoints
- `POST /api/ask-nandi`
- `GET /api/ask-nandi/archive`

## UX Flow
1. User inputs question.
2. AI streams response based on tone.
3. User reflects in journal → tagged.
4. Agent insight triggered → stored.

## Points & Tracking
- Points: via `points_history`
- Tags: stored in `ask_nandi_reflections.tags`

## Related Agents
- `ReflectionSummarizer`
- `SessionScorer`