DELIMITER $$
CREATE PROCEDURE stok_guncelleme_satis_sonrasi(
    IN p_urun_id     INT,
    IN p_satis_adedi INT
)
BEGIN
    UPDATE products
       SET stock = stock - p_satis_adedi
     WHERE id = p_urun_id;
END $$
DELIMITER ;
