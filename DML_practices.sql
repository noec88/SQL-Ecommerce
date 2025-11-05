mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mi_bd              |
| mysql              |
| performance_schema |
| superheroes        |
| sys                |
| universidad        |
+--------------------+
7 rows in set (0.00 sec)

mysql> show tables;
+-----------------+
| Tables_in_mi_bd |
+-----------------+
| clientes        |
| departamentos   |
| empleados       |
| productos       |
| ventas          |
+-----------------+
5 rows in set (0.00 sec)

mysql> DESCRIBE clientes;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id        | int          | NO   | PRI | NULL    | auto_increment |
| nombre    | varchar(50)  | YES  |     | NULL    |                |
| direccion | varchar(100) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)


mysql> INSERT INTO productos (nombre, precio) VALUES ('heladera side by side', 2000);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO clientes (nombre, direccion) VALUES ('Flora Montes', 'Avenida de las Gaviotas 22, Pinamar');
Query OK, 1 row affected (0.00 sec)

mysql> UPDATE empleados SET correo_electronico = CONCAT(nombre, apellido, '@email.com.ar');
Query OK, 15 rows affected (0.00 sec)
Rows matched: 15  Changed: 15  Warnings: 0

mysql> INSERT INTO empleados (nombre, apellido, edad, salario, correo_electronico, fecha_contratacion, departamento_id) VALUES ('Pedro', 'Márquez', 29, 2800.00,' pedro.marquez@email.com.ar', '2023-11-25', 1);
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE productos SET precio=400 WHERE nombre= 'Tablet';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE clientes SET direccion= 'Alberti 1789, Mar del Plata' WHERE nombre= 'Juan Pérez';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE empleados SET salario = salario * 1.05;
Query OK, 16 rows affected, 3 warnings (0.01 sec)
Rows matched: 16  Changed: 16  Warnings: 3

mysql> SHOW WARNINGS;
+-------+------+----------------------------------------------+
| Level | Code | Message                                      |
+-------+------+----------------------------------------------+
| Note  | 1265 | Data truncated for column 'salario' at row 1 |
| Note  | 1265 | Data truncated for column 'salario' at row 2 |
| Note  | 1265 | Data truncated for column 'salario' at row 3 |
+-------+------+----------------------------------------------+
3 rows in set (0.00 sec)

mysql> UPDATE empleados SET salario = salario * 1.05;
Query OK, 16 rows affected, 5 warnings (0.00 sec)
Rows matched: 16  Changed: 16  Warnings: 5

mysql> UPDATE empleados SET salario = salario * 1.07 WHERE departamento_id = 1;
Query OK, 14 rows affected, 11 warnings (0.00 sec)
Rows matched: 14  Changed: 14  Warnings: 11

mysql> INSERT INTO ventas (producto_id, cliente_id, cantidad, precio_unitario, empleado_id) VALUES (1, 16, 1, 1350, 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ventas (producto_id, cliente_id, cantidad, precio_unitario, empleado_id) VALUES (4, 4, 2, 280.0, 7);
Query OK, 1 row affected (0.01 sec)


mysql> SELECT * FROM empleados;
+----+-----------+------------+------+---------+----------------------------------+--------------------+-----------------+
| id | nombre    | apellido   | edad | salario | correo_electronico               | fecha_contratacion | departamento_id |
+----+-----------+------------+------+---------+----------------------------------+--------------------+-----------------+
|  1 | Ana       | Rodríguez  |   28 | 4373.71 | AnaRodríguez@email.com.ar        | 2024-11-25         |               1 |
|  2 | Carlos    | López      |   32 | 3704.99 | CarlosLópez@email.com.ar         | 2024-11-25         |               3 |
|  4 | Martín    | González   |   30 | 3588.92 | MartínGonzález@email.com.ar      | 2024-11-25         |               2 |
|  5 | Luis      | Fernández  |   28 | 3711.02 | LuisFernández@email.com.ar       | 2024-11-25         |               1 |
|  6 | Marta     | Ramírez    |   32 | 3912.98 | MartaRamírez@email.com.ar        | 2024-11-25         |               1 |
|  7 | Lorena    | Guzmán     |   26 | 3067.16 | LorenaGuzmán@email.com.ar        | 2024-11-25         |               1 |
|  9 | Javier    | Pérez      |   29 | 3656.99 | JavierPérez@email.com.ar         | 2024-11-25         |               1 |
| 10 | Camila    | Gómez      |   26 | 3539.03 | CamilaGómez@email.com.ar         | 2024-11-25         |               1 |
| 11 | Lucas     | Fernández  |   28 | 3774.96 | LucasFernández@email.com.ar      | 2024-11-25         |               1 |
| 12 | Valentina | Rodríguez  |   30 | 4128.86 | ValentinaRodríguez@email.com.ar  | 2024-11-25         |               1 |
| 13 | Laura     | Sánchez    |   27 | 3892.93 | LauraSánchez@email.com.ar        | 2025-09-04         |               1 |
| 14 | Javier    | Pérez      |   29 | 3656.99 | JavierPérez@email.com.ar         | 2025-09-04         |               1 |
| 15 | Camila    | Gómez      |   26 | 3539.03 | CamilaGómez@email.com.ar         | 2025-09-04         |               1 |
| 16 | Lucas     | Fernández  |   28 | 3774.96 | LucasFernández@email.com.ar      | 2025-09-04         |               1 |
| 17 | Valentina | Rodríguez  |   30 | 4128.86 | ValentinaRodríguez@email.com.ar  | 2025-09-04         |               1 |
| 18 | Pedro     | Márquez    |   29 | 3303.09 |  pedro.marquez@email.com.ar      | 2023-11-25         |               1 |
+----+-----------+------------+------+---------+----------------------------------+--------------------+-----------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM ventas;
+----+-------------+------------+----------+-----------------+-------------+-------------+
| id | producto_id | cliente_id | cantidad | precio_unitario | monto_total | empleado_id |
+----+-------------+------------+----------+-----------------+-------------+-------------+
|  1 |           1 |          1 |        2 |         1350.00 |     2700.00 |           1 |
|  2 |           1 |          1 |        2 |         1350.00 |     2700.00 |           1 |
|  3 |           2 |          2 |        3 |          480.00 |     1440.00 |           2 |
|  4 |           4 |          4 |        1 |          280.00 |      280.00 |           6 |
|  5 |           1 |          3 |        1 |         1350.00 |     1350.00 |           2 |
|  6 |           3 |          1 |        2 |          350.00 |      700.00 |           5 |
|  7 |           2 |          2 |        1 |          480.00 |      480.00 |           6 |
|  8 |           4 |          4 |        2 |          280.00 |      560.00 |           7 |
|  9 |           1 |          6 |        3 |         1350.00 |     4050.00 |           1 |
| 10 |           5 |          8 |        5 |          420.00 |     2100.00 |           9 |
| 11 |          10 |          2 |        2 |          800.00 |     1600.00 |           6 |
| 12 |          14 |          7 |        1 |          200.00 |      200.00 |           5 |
| 13 |          20 |          4 |        4 |           20.00 |       80.00 |           6 |
| 14 |           4 |          5 |        5 |          280.00 |     1400.00 |           1 |
| 15 |           9 |          5 |        3 |          550.00 |     1650.00 |           1 |
| 16 |          13 |          3 |        4 |          150.00 |      600.00 |           5 |
| 17 |          19 |          6 |        2 |           40.00 |       80.00 |           1 |
| 18 |           2 |          9 |        5 |          480.00 |     2400.00 |           1 |
| 19 |           3 |          9 |        1 |          350.00 |      350.00 |           1 |
| 20 |           6 |          7 |        4 |         1200.00 |     4800.00 |           1 |
| 21 |           7 |          6 |        3 |           80.00 |      240.00 |           1 |
| 22 |          12 |          9 |        5 |           70.00 |      350.00 |           1 |
| 23 |          16 |          8 |        2 |          350.00 |      700.00 |           6 |
| 24 |          23 |          9 |        4 |          180.00 |      720.00 |           1 |
| 25 |          18 |          4 |        3 |          100.00 |      300.00 |           7 |
| 26 |          11 |          3 |        2 |          120.00 |      240.00 |           5 |
| 27 |          15 |          5 |        4 |          250.00 |     1000.00 |           6 |
| 28 |           8 |          8 |        1 |          120.00 |      120.00 |           7 |
| 29 |          17 |          3 |        2 |           30.00 |       60.00 |           5 |
| 30 |          21 |          9 |        5 |          500.00 |     2500.00 |           6 |
| 31 |          22 |          2 |        3 |           70.00 |      210.00 |           6 |
| 32 |          24 |          9 |        2 |          180.00 |      360.00 |           1 |
| 33 |           5 |          1 |        2 |         1350.00 |     2700.00 |           1 |
| 34 |           9 |          6 |        4 |          550.00 |     2200.00 |           9 |
| 35 |          13 |          8 |        3 |          150.00 |      450.00 |           7 |
| 36 |           3 |          1 |        5 |          350.00 |     1750.00 |           1 |
| 37 |          18 |          9 |        1 |          100.00 |      100.00 |           6 |
| 38 |          10 |          5 |        2 |          800.00 |     1600.00 |           1 |
| 39 |           7 |          4 |        3 |           80.00 |      240.00 |           6 |
| 40 |           2 |          5 |        1 |          480.00 |      480.00 |           6 |
| 41 |           8 |          7 |        4 |          120.00 |      480.00 |           7 |
| 42 |           1 |          3 |        5 |         1350.00 |     6750.00 |           5 |
| 43 |           4 |          6 |        2 |          280.00 |      560.00 |           5 |
| 44 |          12 |          1 |        1 |           70.00 |       70.00 |           1 |
| 45 |          19 |          4 |        3 |           40.00 |      120.00 |           6 |
| 46 |          15 |          3 |        4 |          250.00 |     1000.00 |           5 |
| 47 |           6 |          8 |        2 |         1200.00 |     2400.00 |           7 |
| 48 |          11 |          2 |        3 |          120.00 |      360.00 |           5 |
| 49 |           1 |          6 |        3 |         1350.00 |     4050.00 |           1 |
| 50 |           5 |          8 |        5 |          420.00 |     2100.00 |           9 |
| 51 |          10 |          2 |        2 |          800.00 |     1600.00 |           6 |
| 52 |          14 |          7 |        1 |          200.00 |      200.00 |           5 |
| 53 |          20 |          4 |        4 |           20.00 |       80.00 |           6 |
| 54 |           4 |          5 |        5 |          280.00 |     1400.00 |           1 |
| 55 |           9 |          5 |        3 |          550.00 |     1650.00 |           1 |
| 56 |          13 |          3 |        4 |          150.00 |      600.00 |           5 |
| 57 |          19 |          6 |        2 |           40.00 |       80.00 |           1 |
| 58 |           2 |          9 |        5 |          480.00 |     2400.00 |           1 |
| 59 |           3 |          9 |        1 |          350.00 |      350.00 |           1 |
| 60 |           6 |          7 |        4 |         1200.00 |     4800.00 |           1 |
| 61 |           7 |          6 |        3 |           80.00 |      240.00 |           1 |
| 62 |          12 |          9 |        5 |           70.00 |      350.00 |           1 |
| 63 |          16 |          8 |        2 |          350.00 |      700.00 |           6 |
| 64 |          23 |          9 |        4 |          180.00 |      720.00 |           1 |
| 65 |          18 |          4 |        3 |          100.00 |      300.00 |           7 |
| 66 |          11 |          3 |        2 |          120.00 |      240.00 |           5 |
| 67 |          15 |          5 |        4 |          250.00 |     1000.00 |           6 |
| 68 |           8 |          8 |        1 |          120.00 |      120.00 |           7 |
| 69 |          17 |          3 |        2 |           30.00 |       60.00 |           5 |
| 70 |          21 |          9 |        5 |          500.00 |     2500.00 |           6 |
| 71 |          22 |          2 |        3 |           70.00 |      210.00 |           6 |
| 72 |          24 |          9 |        2 |          180.00 |      360.00 |           1 |
| 73 |           5 |          1 |        2 |         1350.00 |     2700.00 |           1 |
| 74 |           9 |          6 |        4 |          550.00 |     2200.00 |           9 |
| 75 |          13 |          8 |        3 |          150.00 |      450.00 |           7 |
| 76 |           3 |          1 |        5 |          350.00 |     1750.00 |           1 |
| 77 |          18 |          9 |        1 |          100.00 |      100.00 |           6 |
| 78 |          10 |          5 |        2 |          800.00 |     1600.00 |           1 |
| 79 |           7 |          4 |        3 |           80.00 |      240.00 |           6 |
| 80 |           2 |          5 |        1 |          480.00 |      480.00 |           6 |
| 81 |           8 |          7 |        4 |          120.00 |      480.00 |           7 |
| 82 |           1 |          3 |        5 |         1350.00 |     6750.00 |           5 |
| 83 |           4 |          6 |        2 |          280.00 |      560.00 |           5 |
| 84 |          12 |          1 |        1 |           70.00 |       70.00 |           1 |
| 85 |          19 |          4 |        3 |           40.00 |      120.00 |           6 |
| 86 |          15 |          3 |        4 |          250.00 |     1000.00 |           5 |
| 87 |           6 |          8 |        2 |         1200.00 |     2400.00 |           7 |
| 88 |          11 |          2 |        3 |          120.00 |      360.00 |           5 |
| 89 |           1 |         16 |        1 |         1350.00 |     1350.00 |           1 |
| 90 |           4 |          4 |        2 |          280.00 |      560.00 |           7 |
+----+-------------+------------+----------+-----------------+-------------+-------------+
90 rows in set (0.00 sec)

mysql> SELECT * FROM clientes;
+----+-------------------+--------------------------------------+
| id | nombre            | direccion                            |
+----+-------------------+--------------------------------------+
|  1 | Juan Pérez        | Alberti 1789, Mar del Plata          |
|  2 | María García      | Avenida 789, Ciudad del Este         |
|  3 | Ana López         | Beltrán 1452, Godoy Cruz             |
|  4 | Carlos Sánchez    | Saavedra 206, Las Heras              |
|  5 | Alejandro López   | Calle Rivadavia 123, Buenos Aires    |
|  6 | Sofía Rodríguez   | Avenida San Martín 456, Rosario      |
|  7 | Joaquín Pérez     | Calle Belgrano 789, Córdoba          |
|  8 | Valeria Gómez     | Calle Mitre 101, Mendoza             |
|  9 | Diego Martínez    | Avenida 9 de Julio 654, Buenos Aires |
| 10 | Mónica González   | Camino de las Flores 22, Mendoza     |
| 11 | Alejandro López   | Calle Rivadavia 123, Buenos Aires    |
| 12 | Sofía Rodríguez   | Avenida San Martín 456, Rosario      |
| 13 | Joaquín Pérez     | Calle Belgrano 789, Córdoba          |
| 14 | Valeria Gómez     | Calle Mitre 101, Mendoza             |
| 15 | Diego Martínez    | Avenida 9 de Julio 654, Buenos Aires |
| 16 | Flora Montes      | Avenida de las Gaviotas 22, Pinamar  |
+----+-------------------+--------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM productos;
+----+-------------------------------+---------+
| id | nombre                        | precio  |
+----+-------------------------------+---------+
|  1 | Laptop                        | 1350.00 |
|  2 | Teléfono móvil                |  480.00 |
|  3 | Tablet                        |  400.00 |
|  4 | Impresora                     |  280.00 |
|  5 | Cámara Digital                |  420.00 |
|  6 | Smart TV 55 Pulgadas          | 1200.00 |
|  7 | Auriculares Bluetooth         |   80.00 |
|  8 | Reproductor de Blu-ray        |  120.00 |
|  9 | Lavadora de Ropa              |  550.00 |
| 10 | Refrigeradora Doble Puerta    |  800.00 |
| 11 | Horno de Microondas           |  120.00 |
| 12 | Licuadora de Alta Potencia    |   70.00 |
| 13 | Silla de Oficina Ergonómica   |  150.00 |
| 14 | Escritorio de Madera          |  200.00 |
| 15 | Mesa de Comedor               |  250.00 |
| 16 | Sofá de Tres Plazas           |  350.00 |
| 17 | Mochila para Portátil         |   30.00 |
| 18 | Reloj de Pulsera Inteligente  |  100.00 |
| 19 | Juego de Utensilios de Cocina |   40.00 |
| 20 | Set de Toallas de Baño        |   20.00 |
| 21 | Cama King Size                |  500.00 |
| 22 | Lámpara de Pie Moderna        |   70.00 |
| 23 | Cafetera de Goteo             |   40.00 |
| 24 | Robot Aspirador               |  180.00 |
| 25 | Iphone 16 PRO                 | 1300.00 |
| 26 | Cámara Digital                |  420.00 |
| 27 | Smart TV 55 Pulgadas          | 1200.00 |
| 28 | Auriculares Bluetooth         |   80.00 |
| 29 | Reproductor de Blu-ray        |  120.00 |
| 30 | Lavadora de Ropa              |  550.00 |
| 31 | Refrigeradora Doble Puerta    |  800.00 |
| 32 | Horno de Microondas           |  120.00 |
| 33 | Licuadora de Alta Potencia    |   70.00 |
| 34 | Silla de Oficina Ergonómica   |  150.00 |
| 35 | Escritorio de Madera          |  200.00 |
| 36 | Mesa de Comedor               |  250.00 |
| 37 | Sofá de Tres Plazas           |  350.00 |
| 38 | Mochila para Portátil         |   30.00 |
| 39 | Reloj de Pulsera Inteligente  |  100.00 |
| 40 | Juego de Utensilios de Cocina |   40.00 |
| 41 | Set de Toallas de Baño        |   20.00 |
| 42 | Cama King Size                |  500.00 |
| 43 | Lámpara de Pie Moderna        |   70.00 |
| 44 | Cafetera de Goteo             |   40.00 |
| 45 | Robot Aspirador               |  180.00 |
| 46 | heladera side by side         | 2000.00 |
+----+-------------------------------+---------+
46 rows in set (0.00 sec)

mysql> 