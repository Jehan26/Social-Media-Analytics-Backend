SELECT 
    post_id,
    content,
    like_count,
    comment_count,
    engagement_score,
    RANK() OVER (ORDER BY engagement_score DESC) AS rank
FROM 
    EngagementScores;