CREATE OR REPLACE FUNCTION update_like_count() 
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Posts 
    SET like_count = like_count + 1 
    WHERE post_id = NEW.post_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER like_count_trigger
AFTER INSERT ON Likes
FOR EACH ROW EXECUTE FUNCTION update_like_count();