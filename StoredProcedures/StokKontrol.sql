DELIMITER $$
CREATE PROCEDURE stok_kontrol(
    IN  p_urun_id    INT,
    OUT p_kalan_adet INT
)
BEGIN
    SELECT stock INTO p_kalan_adet
      FROM products
     WHERE id = p_urun_id;
END $$
DELIMITER ;
