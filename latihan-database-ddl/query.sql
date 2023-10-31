CREATE DATABASE toko_online_noobee;
CREATE TABLE "users" (
    "user_id" SERIAL PRIMARY KEY,
    "username" varchar (50) UNIQUE NOT NULL,
    "email" varchar (100) UNIQUE NOT NULL,
    "nama_lengkap" varchar (100) NOT NULL
);

CREATE TABLE "orders" (
    "order_id" SERIAL PRIMARY KEY,
    "user_id" int,
    "tanggal_pemesanan" timestamp,
    "status" varchar (50) NOT NULL,
	FOREIGN KEY (user_id)
      REFERENCES users (user_id)	
);

CREATE TABLE "order_items" (
    "item_id" SERIAL PRIMARY KEY,
    "order_id" int,
    "product_name" varchar (100) NOT NULL,
    "quantity" int NOT NULL,
    "harga_per_items" numeric (5) NOT NULL,
	FOREIGN KEY (order_id)
      REFERENCES orders (order_id)
);