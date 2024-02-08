CREATE PROCEDURE update_user_id(old_user_id UUID, new_user_name VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE kunde
    SET name = new_user_name
    WHERE id = old_user_id;
    
    RAISE NOTICE 'User Name updated successfully.';
END
$$;