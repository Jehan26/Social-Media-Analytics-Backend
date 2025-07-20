# 📊 Social Media Analytics Backend

## 📌 Overview

This project implements a PostgreSQL database backend for tracking and analyzing social media post engagement, including likes, comments, and user activity.

---

## 🧱 Schema Design

- **Users**: User info and registration date
- **Posts**: User-generated content with engagement counters
- **Likes**: Timestamped user likes on posts
- **Comments**: Timestamped user comments on posts

---

## 🛠️ Tools Used

- PostgreSQL
- pgAdmin / DBeaver
- dbdiagram.io (for ERD)
- SQL (DDL, Views, Triggers, CTEs)

---

## 📁 Project Structure

/social-media-analytics/
├── schema.sql # Table definitions
├── sample_data.sql # Users, posts, likes, comments
├── views.sql # Engagement score views, top posts
├── rankings.sql # Post rankings using window functions
├── triggers.sql # Auto-update like count on insert
├── reports.sql # Aggregate engagement summaries
├── ERD.png # ER diagram (optional)
└── README.md # This file

pgsql
Copy
Edit

---

## 🔍 Features

- Track post-level likes and comments
- View most liked/commented posts
- Calculate engagement scores
- Rank posts by activity using `RANK()`
- Use triggers to update like counts

---

## 🧠 Sample Queries

```sql
-- Top 5 most liked posts
SELECT PostID, LikeCount
FROM Posts
ORDER BY LikeCount DESC
LIMIT 5;

-- Engagement score (likes + comments)
CREATE VIEW EngagementScore AS
SELECT
  PostID,
  LikeCount + CommentCount AS Score
FROM Posts;

-- Rank posts by engagement
SELECT
  PostID,
  LikeCount + CommentCount AS Score,
  RANK() OVER (ORDER BY (LikeCount + CommentCount) DESC) AS Rank
FROM Posts;# Social-Media-Analytics-Backend
