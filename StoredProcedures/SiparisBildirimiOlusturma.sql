DELIMITER $$
CREATE PROCEDURE siparis_bildirim_gonder(
    IN p_siparis_id INT
)
BEGIN
    INSERT INTO notifications (user_id, message, created_at)
    SELECT user_id,
           CONCAT('Siparişiniz (#', p_siparis_id, ') oluşturuldu.'),
           NOW()
      FROM orders
     WHERE id = p_siparis_id;
END $$
DELIMITER ;
