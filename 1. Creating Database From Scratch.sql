#CREATING A DATABASE
CREATE DATABASE IF NOT EXISTS Sales;

#USE A DATABASE
USE Sales;

#String Data Type
#CHAR - contoh CHAR(5)
#VARCHAR - contoh VARCHAR(10)
#ENUME - ENUME("M","L")

#Numeric Data Type
#Integer - Numeric tanpa tanda desimal. Bisa positif atau negatif - contoh INT(10), TINYINT(99)
#Fixed-Point - Angka desimal - Jika input tidak sesuai maka akan muncul Error
	#DECIMAL(5,3) - angka 5 menunjukkan jumlah semua bilangan, angka 3 menunjukkan angka setelah koma
		#DECIMAL(5,3) = 10.654
	#NUMERIC(p,s) - mewakili angka mata uang - p menunjukkan jumlah semua bilangan, s menunjukkan angka setelah koma
		#NUMERIC(7,2) = $ 75,000.50
#Floating-Point - Angka desimal - Jika input tidak sesuai maka tidak akan muncul Error
	#FLOAT(5,3) - angka 5 menunjukkan jumlah semua bilangan, angka 3 menunjukkan angka setelah koma
		#FLOAT(5,3) = 10.523678 -> 10.524
	#DOUBLE(10,6)
    
#Date Data Type
	#Format YYYY-MM-DD
    
#Datetime Data Type
	#Format YYYY-MM-DD HH:MM:SS
    
#Timestamp Data Type
	#Timestamp dimulai dari 1 Januari 1970 00:00:00 UTC
    

#CREATING A TABLE
CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

#DELETE TABLE WITH DROP
DROP TABLE sales;

#PRIMARY KET CONSTRAINT
#NOT NULL, AUTO_INCREMENT

CREATE TABLE sales
(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);

#FOREIGN KEY CONSTRAINT
ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE;