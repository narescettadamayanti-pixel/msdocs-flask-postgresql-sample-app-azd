SELECT 
    r.name 
    AS nama_restoran, 
    m.item_name 
    AS menu_makanan, 
    m.price 
    AS harga,
    (SELECT AVG(rating) FROM review WHERE restaurant_id = r.id) AS rata_rata_rating
FROM restaurant r
JOIN menu m 
ON r.id = m.restaurant_id;
