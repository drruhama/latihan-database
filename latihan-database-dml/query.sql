INSERT INTO users(username, email, nama_lengkap)
VALUES('user1','user1@example.com','User Satu'),
	('user2','user2@example.com','User Dua'),
	('user3','user3@example.com','User Tiga');

INSERT INTO orders (user_id, status)
VALUES(1,'Dalam Pengiriman'),
	(2,'Selesai'),
	(3,'Dibatalkan');

INSERT INTO order_items (order_id, product_name, quantity, harga_per_item)
VALUES(1,'Produk A',2,50000),
	(1,'Produk B',3,30000),
	(2,'Produk C',1,75000),
	(2,'Produk D',2,60000);

Select order_id, username  from orders inner join users on users.user_id = orders.user_id;

Select orders.order_id, username, sum (quantity * harga_per_items) as total_harga from orders inner join users on users.user_id = orders.user_id inner join order_items on order_items.order_id = orders.order_id group by orders.order_id, users.username;



