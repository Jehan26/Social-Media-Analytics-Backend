CREATE VIEW TopPosts AS
SELECT 
    p.post_id,
    p.content,
    COUNT(l.like_id) AS like_count,
    COUNT(c.comment_id) AS comment_count,
    COUNT(l.like_id) + COUNT(c.comment_id) AS engagement_score
FROM 
    Posts p
LEFT JOIN 
    Likes l ON p.post_id = l.post_id
LEFT JOIN 
    Comments c ON p.post_id = c.post_id
GROUP BY 
    p.post_id
ORDER BY 
    engagement_score DESC;

CREATE VIEW EngagementScores AS
SELECT 
    p.post_id,
    p.content,
    COUNT(l.like_id) AS like_count,
    COUNT(c.comment_id) AS comment_count,
    COUNT(l.like_id) + COUNT(c.comment_id) AS engagement_score
FROM 
    Posts p
LEFT JOIN 
    Likes l ON p.post_id = l.post_id
LEFT JOIN 
    Comments c ON p.post_id = c.post_id
GROUP BY 
    p.post_id;