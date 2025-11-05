mysql> SELECT DISTINCT nombre FROM empleados;
+-----------+
| nombre    |
+-----------+
| Ana       |
| Carlos    |
| Martín    |
| Luis      |
| Marta     |
| Lorena    |
| Javier    |
| Camila    |
| Lucas     |
| Valentina |
| Laura     |
| Pedro     |
+-----------+
12 rows in set (0.00 sec)

mysql> UPDATE empleados SET apellido='Alonso' WHERE id=15;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE empleados SET correo_electronico='micaela.alonso@email.com.ar' WHERE id=15;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE empleados SET correo_electronico='camila.alonso@email.com.ar' WHERE id=15;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE empleados SET apellido='Puente', correo_electronico='lucas.puente@email.com.ar' WHERE id=16;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE empleados SET nombre='Juana', correo_electronico='juana.rodriguez@email.com.ar' WHERE id=17;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT DISTINCT nombre FROM empleados;
+-----------+
| nombre    |
+-----------+
| Ana       |
| Carlos    |
| Martín    |
| Luis      |
| Marta     |
| Lorena    |
| Javier    |
| Camila    |
| Lucas     |
| Valentina |
| Laura     |
| Juana     |
| Pedro     |
+-----------+
13 rows in set (0.00 sec)

mysql> SELECT DISTINCT correo_electronico FROM empleados;
+----------------------------------+
| correo_electronico               |
+----------------------------------+
| AnaRodríguez@email.com.ar        |
| CarlosLópez@email.com.ar         |
| MartínGonzález@email.com.ar      |
| LuisFernández@email.com.ar       |
| MartaRamírez@email.com.ar        |
| LorenaGuzmán@email.com.ar        |
| JavierPérez@email.com.ar         |
| CamilaGómez@email.com.ar         |
| LucasFernández@email.com.ar      |
| ValentinaRodríguez@email.com.ar  |
| LauraSánchez@email.com.ar        |
| camila.alonso@email.com.ar       |
| lucas.puente@email.com.ar        |
| juana.rodriguez@email.com.ar     |
|  pedro.marquez@email.com.ar      |
+----------------------------------+
15 rows in set (0.00 sec)

mysql> SELECT DISTINCT edad FROM empleados;
+------+
| edad |
+------+
|   28 |
|   32 |
|   30 |
|   26 |
|   29 |
|   27 |
+------+
6 rows in set (0.00 sec)

mysql> SELECT nombre, salario FROM empleados WHERE salario>3200;
+-----------+---------+
| nombre    | salario |
+-----------+---------+
| Ana       | 4373.71 |
| Carlos    | 3704.99 |
| Martín    | 3588.92 |
| Luis      | 3711.02 |
| Marta     | 3912.98 |
| Javier    | 3656.99 |
| Camila    | 3539.03 |
| Lucas     | 3774.96 |
| Valentina | 4128.86 |
| Laura     | 3892.93 |
| Javier    | 3656.99 |
| Camila    | 3539.03 |
| Lucas     | 3774.96 |
| Juana     | 4128.86 |
| Pedro     | 3303.09 |
+-----------+---------+
15 rows in set (0.00 sec)

mysql> SELECT nombre, apellido, edad FROM empleados WHERE edad=28;
+--------+------------+------+
| nombre | apellido   | edad |
+--------+------------+------+
| Ana    | Rodríguez  |   28 |
| Luis   | Fernández  |   28 |
| Lucas  | Fernández  |   28 |
| Lucas  | Puente     |   28 |
+--------+------------+------+
4 rows in set (0.00 sec)

mysql> SELECT nombre, apellido, salario FROM empleados WHERE salario<2700;
Empty set (0.00 sec)

mysql> SELECT id, cantidad FROM ventas WHERE cantidad>2;
+----+----------+
| id | cantidad |
+----+----------+
|  3 |        3 |
|  9 |        3 |
| 10 |        5 |
| 13 |        4 |
| 14 |        5 |
| 15 |        3 |
| 16 |        4 |
| 18 |        5 |
| 20 |        4 |
| 21 |        3 |
| 22 |        5 |
| 24 |        4 |
| 25 |        3 |
| 27 |        4 |
| 30 |        5 |
| 31 |        3 |
| 34 |        4 |
| 35 |        3 |
| 36 |        5 |
| 39 |        3 |
| 41 |        4 |
| 42 |        5 |
| 45 |        3 |
| 46 |        4 |
| 48 |        3 |
| 49 |        3 |
| 50 |        5 |
| 53 |        4 |
| 54 |        5 |
| 55 |        3 |
| 56 |        4 |
| 58 |        5 |
| 60 |        4 |
| 61 |        3 |
| 62 |        5 |
| 64 |        4 |
| 65 |        3 |
| 67 |        4 |
| 70 |        5 |
| 71 |        3 |
| 74 |        4 |
| 75 |        3 |
| 76 |        5 |
| 79 |        3 |
| 81 |        4 |
| 82 |        5 |
| 85 |        3 |
| 86 |        4 |
| 88 |        3 |
+----+----------+
49 rows in set (0.00 sec)

mysql> SELECT producto_id, precio_unitario FROM ventas WHERE precio_unitario=480;
+-------------+-----------------+
| producto_id | precio_unitario |
+-------------+-----------------+
|           2 |          480.00 |
|           2 |          480.00 |
|           2 |          480.00 |
|           2 |          480.00 |
|           2 |          480.00 |
|           2 |          480.00 |
+-------------+-----------------+
6 rows in set (0.00 sec)

mysql> SELECT id, monto_total FROM ventas WHERE monto_total<1000;
+----+-------------+
| id | monto_total |
+----+-------------+
|  4 |      280.00 |
|  6 |      700.00 |
|  7 |      480.00 |
|  8 |      560.00 |
| 12 |      200.00 |
| 13 |       80.00 |
| 16 |      600.00 |
| 17 |       80.00 |
| 19 |      350.00 |
| 21 |      240.00 |
| 22 |      350.00 |
| 23 |      700.00 |
| 24 |      720.00 |
| 25 |      300.00 |
| 26 |      240.00 |
| 28 |      120.00 |
| 29 |       60.00 |
| 31 |      210.00 |
| 32 |      360.00 |
| 35 |      450.00 |
| 37 |      100.00 |
| 39 |      240.00 |
| 40 |      480.00 |
| 41 |      480.00 |
| 43 |      560.00 |
| 44 |       70.00 |
| 45 |      120.00 |
| 48 |      360.00 |
| 52 |      200.00 |
| 53 |       80.00 |
| 56 |      600.00 |
| 57 |       80.00 |
| 59 |      350.00 |
| 61 |      240.00 |
| 62 |      350.00 |
| 63 |      700.00 |
| 64 |      720.00 |
| 65 |      300.00 |
| 66 |      240.00 |
| 68 |      120.00 |
| 69 |       60.00 |
| 71 |      210.00 |
| 72 |      360.00 |
| 75 |      450.00 |
| 77 |      100.00 |
| 79 |      240.00 |
| 80 |      480.00 |
| 81 |      480.00 |
| 83 |      560.00 |
| 84 |       70.00 |
| 85 |      120.00 |
| 88 |      360.00 |
| 90 |      560.00 |
+----+-------------+
53 rows in set (0.00 sec)

mysql> SELECT id, empleado_id FROM ventas WHERE empleado_id=1;
+----+-------------+
| id | empleado_id |
+----+-------------+
|  1 |           1 |
|  2 |           1 |
|  9 |           1 |
| 14 |           1 |
| 15 |           1 |
| 17 |           1 |
| 18 |           1 |
| 19 |           1 |
| 20 |           1 |
| 21 |           1 |
| 22 |           1 |
| 24 |           1 |
| 32 |           1 |
| 33 |           1 |
| 36 |           1 |
| 38 |           1 |
| 44 |           1 |
| 49 |           1 |
| 54 |           1 |
| 55 |           1 |
| 57 |           1 |
| 58 |           1 |
| 59 |           1 |
| 60 |           1 |
| 61 |           1 |
| 62 |           1 |
| 64 |           1 |
| 72 |           1 |
| 73 |           1 |
| 76 |           1 |
| 78 |           1 |
| 84 |           1 |
| 89 |           1 |
+----+-------------+
33 rows in set (0.01 sec)

mysql> SELECT nombre, apellido, departamento_id, salario FROM empleados WHERE salario>3000;
+-----------+------------+-----------------+---------+
| nombre    | apellido   | departamento_id | salario |
+-----------+------------+-----------------+---------+
| Ana       | Rodríguez  |               1 | 4373.71 |
| Carlos    | López      |               3 | 3704.99 |
| Martín    | González   |               2 | 3588.92 |
| Luis      | Fernández  |               1 | 3711.02 |
| Marta     | Ramírez    |               1 | 3912.98 |
| Lorena    | Guzmán     |               1 | 3067.16 |
| Javier    | Pérez      |               1 | 3656.99 |
| Camila    | Gómez      |               1 | 3539.03 |
| Lucas     | Fernández  |               1 | 3774.96 |
| Valentina | Rodríguez  |               1 | 4128.86 |
| Laura     | Sánchez    |               1 | 3892.93 |
| Javier    | Pérez      |               1 | 3656.99 |
| Camila    | Alonso     |               1 | 3539.03 |
| Lucas     | Puente     |               1 | 3774.96 |
| Juana     | Rodríguez  |               1 | 4128.86 |
| Pedro     | Márquez    |               1 | 3303.09 |
+-----------+------------+-----------------+---------+
16 rows in set (0.00 sec)

mysql> SELECT nombre, edad, departamento_id FROM empleados WHERE edad=32 OR departamento_id=3;
+--------+------+-----------------+
| nombre | edad | departamento_id |
+--------+------+-----------------+
| Carlos |   32 |               3 |
| Marta  |   32 |               1 |
+--------+------+-----------------+
2 rows in set (0.00 sec)

mysql> SELECT producto_id, cantidad FROM ventas WHERE producto=1 AND cantidad>=2;
ERROR 1054 (42S22): Unknown column 'producto' in 'where clause'
mysql> SELECT producto_id, cantidad FROM ventas WHERE producto_id=1 AND cantidad>=2;
+-------------+----------+
| producto_id | cantidad |
+-------------+----------+
|           1 |        2 |
|           1 |        2 |
|           1 |        3 |
|           1 |        5 |
|           1 |        3 |
|           1 |        5 |
+-------------+----------+
6 rows in set (0.00 sec)

mysql> SELECT cliente_id, empleado_id FROM ventas WHERE cliente_id=1 OR empleado_id=2;
+------------+-------------+
| cliente_id | empleado_id |
+------------+-------------+
|          1 |           1 |
|          1 |           1 |
|          2 |           2 |
|          3 |           2 |
|          1 |           5 |
|          1 |           1 |
|          1 |           1 |
|          1 |           1 |
|          1 |           1 |
|          1 |           1 |
|          1 |           1 |
+------------+-------------+
11 rows in set (0.00 sec)

mysql> SELECT id, cliente_id, empleado_id FROM ventas WHERE cliente_id=1 OR empleado_id=2;
+----+------------+-------------+
| id | cliente_id | empleado_id |
+----+------------+-------------+
|  1 |          1 |           1 |
|  2 |          1 |           1 |
|  3 |          2 |           2 |
|  5 |          3 |           2 |
|  6 |          1 |           5 |
| 33 |          1 |           1 |
| 36 |          1 |           1 |
| 44 |          1 |           1 |
| 73 |          1 |           1 |
| 76 |          1 |           1 |
| 84 |          1 |           1 |
+----+------------+-------------+
11 rows in set (0.00 sec)

mysql> SELECT id, empleado_id, monto_total FROM ventas WHERE empleado_id=1 AND monto_total>2000;
+----+-------------+-------------+
| id | empleado_id | monto_total |
+----+-------------+-------------+
|  1 |           1 |     2700.00 |
|  2 |           1 |     2700.00 |
|  9 |           1 |     4050.00 |
| 18 |           1 |     2400.00 |
| 20 |           1 |     4800.00 |
| 33 |           1 |     2700.00 |
| 49 |           1 |     4050.00 |
| 58 |           1 |     2400.00 |
| 60 |           1 |     4800.00 |
| 73 |           1 |     2700.00 |
+----+-------------+-------------+
10 rows in set (0.00 sec)

mysql> SELECT nombre, edad FROM empleados WHERE edad BETWEEN 29 AND 33;
+-----------+------+
| nombre    | edad |
+-----------+------+
| Carlos    |   32 |
| Martín    |   30 |
| Marta     |   32 |
| Javier    |   29 |
| Valentina |   30 |
| Javier    |   29 |
| Juana     |   30 |
| Pedro     |   29 |
+-----------+------+
8 rows in set (0.00 sec)

mysql> SELECT id, cantidad FROM ventas WHERE cantidad BETWEEN 2 AND 3;
+----+----------+
| id | cantidad |
+----+----------+
|  1 |        2 |
|  2 |        2 |
|  3 |        3 |
|  6 |        2 |
|  8 |        2 |
|  9 |        3 |
| 11 |        2 |
| 15 |        3 |
| 17 |        2 |
| 21 |        3 |
| 23 |        2 |
| 25 |        3 |
| 26 |        2 |
| 29 |        2 |
| 31 |        3 |
| 32 |        2 |
| 33 |        2 |
| 35 |        3 |
| 38 |        2 |
| 39 |        3 |
| 43 |        2 |
| 45 |        3 |
| 47 |        2 |
| 48 |        3 |
| 49 |        3 |
| 51 |        2 |
| 55 |        3 |
| 57 |        2 |
| 61 |        3 |
| 63 |        2 |
| 65 |        3 |
| 66 |        2 |
| 69 |        2 |
| 71 |        3 |
| 72 |        2 |
| 73 |        2 |
| 75 |        3 |
| 78 |        2 |
| 79 |        3 |
| 83 |        2 |
| 85 |        3 |
| 87 |        2 |
| 88 |        3 |
| 90 |        2 |
+----+----------+
44 rows in set (0.00 sec)

mysql> SELECT id, precio_unitario WHERE precio_unitario BETWEEN 300 AND 500;
ERROR 1054 (42S22): Unknown column 'id' in 'field list'
mysql> SELECT id, precio_unitario FROM ventas  WHERE precio_unitario BETWEEN 300 AND 500;
+----+-----------------+
| id | precio_unitario |
+----+-----------------+
|  3 |          480.00 |
|  6 |          350.00 |
|  7 |          480.00 |
| 10 |          420.00 |
| 18 |          480.00 |
| 19 |          350.00 |
| 23 |          350.00 |
| 30 |          500.00 |
| 36 |          350.00 |
| 40 |          480.00 |
| 50 |          420.00 |
| 58 |          480.00 |
| 59 |          350.00 |
| 63 |          350.00 |
| 70 |          500.00 |
| 76 |          350.00 |
| 80 |          480.00 |
+----+-----------------+
17 rows in set (0.00 sec)

mysql> SELECT * FROM empleados WHERE id IN ( 1,3,5);
+----+--------+------------+------+---------+-----------------------------+--------------------+-----------------+
| id | nombre | apellido   | edad | salario | correo_electronico          | fecha_contratacion | departamento_id |
+----+--------+------------+------+---------+-----------------------------+--------------------+-----------------+
|  1 | Ana    | Rodríguez  |   28 | 4373.71 | AnaRodríguez@email.com.ar   | 2024-11-25         |               1 |
|  5 | Luis   | Fernández  |   28 | 3711.02 | LuisFernández@email.com.ar  | 2024-11-25         |               1 |
+----+--------+------------+------+---------+-----------------------------+--------------------+-----------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM productos WHERE id IN (2,4,6);
+----+----------------------+---------+
| id | nombre               | precio  |
+----+----------------------+---------+
|  2 | Teléfono móvil       |  480.00 |
|  4 | Impresora            |  280.00 |
|  6 | Smart TV 55 Pulgadas | 1200.00 |
+----+----------------------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM clientes WHERE id IN (1,3,5);
+----+------------------+-----------------------------------+
| id | nombre           | direccion                         |
+----+------------------+-----------------------------------+
|  1 | Juan Pérez       | Alberti 1789, Mar del Plata       |
|  3 | Ana López        | Beltrán 1452, Godoy Cruz          |
|  5 | Alejandro López  | Calle Rivadavia 123, Buenos Aires |
+----+------------------+-----------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT nombre FROM empleados WHERE LOWER (nombre) LIKE 'l%';
+--------+
| nombre |
+--------+
| Luis   |
| Lorena |
| Lucas  |
| Laura  |
| Lucas  |
+--------+
5 rows in set (0.01 sec)

mysql> SELECT nombre FROM productos WHERE LOWER (nombre) LIKE 'teléfono';
Empty set (0.00 sec)

mysql> SELECT nombre FROM productos WHERE LOWER (nombre) LIKE '%teléfono%';
+------------------+
| nombre           |
+------------------+
| Teléfono móvil   |
+------------------+
1 row in set (0.00 sec)

mysql> SELECT nombre, direccion FROM clientes WHERE LOWER (direccion) LIKE '%calle%';
+------------------+-----------------------------------+
| nombre           | direccion                         |
+------------------+-----------------------------------+
| Alejandro López  | Calle Rivadavia 123, Buenos Aires |
| Joaquín Pérez    | Calle Belgrano 789, Córdoba       |
| Valeria Gómez    | Calle Mitre 101, Mendoza          |
| Alejandro López  | Calle Rivadavia 123, Buenos Aires |
| Joaquín Pérez    | Calle Belgrano 789, Córdoba       |
| Valeria Gómez    | Calle Mitre 101, Mendoza          |
+------------------+-----------------------------------+
6 rows in set (0.00 sec)

mysql> SELECT nombre, apellido, salario FROM empleados ORDER BY salario ASC;
+-----------+------------+---------+
| nombre    | apellido   | salario |
+-----------+------------+---------+
| Lorena    | Guzmán     | 3067.16 |
| Pedro     | Márquez    | 3303.09 |
| Camila    | Gómez      | 3539.03 |
| Camila    | Alonso     | 3539.03 |
| Martín    | González   | 3588.92 |
| Javier    | Pérez      | 3656.99 |
| Javier    | Pérez      | 3656.99 |
| Carlos    | López      | 3704.99 |
| Luis      | Fernández  | 3711.02 |
| Lucas     | Fernández  | 3774.96 |
| Lucas     | Puente     | 3774.96 |
| Laura     | Sánchez    | 3892.93 |
| Marta     | Ramírez    | 3912.98 |
| Valentina | Rodríguez  | 4128.86 |
| Juana     | Rodríguez  | 4128.86 |
| Ana       | Rodríguez  | 4373.71 |
+-----------+------------+---------+
16 rows in set (0.00 sec)

mysql> SELECT nombre FROM productos ORDER BY nombre DESC;
+-------------------------------+
| nombre                        |
+-------------------------------+
| Teléfono móvil                |
| Tablet                        |
| Sofá de Tres Plazas           |
| Sofá de Tres Plazas           |
| Smart TV 55 Pulgadas          |
| Smart TV 55 Pulgadas          |
| Silla de Oficina Ergonómica   |
| Silla de Oficina Ergonómica   |
| Set de Toallas de Baño        |
| Set de Toallas de Baño        |
| Robot Aspirador               |
| Robot Aspirador               |
| Reproductor de Blu-ray        |
| Reproductor de Blu-ray        |
| Reloj de Pulsera Inteligente  |
| Reloj de Pulsera Inteligente  |
| Refrigeradora Doble Puerta    |
| Refrigeradora Doble Puerta    |
| Mochila para Portátil         |
| Mochila para Portátil         |
| Mesa de Comedor               |
| Mesa de Comedor               |
| Licuadora de Alta Potencia    |
| Licuadora de Alta Potencia    |
| Lavadora de Ropa              |
| Lavadora de Ropa              |
| Laptop                        |
| Lámpara de Pie Moderna        |
| Lámpara de Pie Moderna        |
| Juego de Utensilios de Cocina |
| Juego de Utensilios de Cocina |
| Iphone 16 PRO                 |
| Impresora                     |
| Horno de Microondas           |
| Horno de Microondas           |
| heladera side by side         |
| Escritorio de Madera          |
| Escritorio de Madera          |
| Cámara Digital                |
| Cámara Digital                |
| Cama King Size                |
| Cama King Size                |
| Cafetera de Goteo             |
| Cafetera de Goteo             |
| Auriculares Bluetooth         |
| Auriculares Bluetooth         |
+-------------------------------+
46 rows in set (0.00 sec)

mysql> SELECT id, cantidad FROM ventas ORDER BY cantidad ASC;
+----+----------+
| id | cantidad |
+----+----------+
| 89 |        1 |
| 84 |        1 |
| 80 |        1 |
|  4 |        1 |
|  5 |        1 |
| 77 |        1 |
|  7 |        1 |
| 68 |        1 |
| 59 |        1 |
| 52 |        1 |
| 44 |        1 |
| 12 |        1 |
| 40 |        1 |
| 37 |        1 |
| 28 |        1 |
| 19 |        1 |
| 17 |        2 |
| 47 |        2 |
| 73 |        2 |
| 72 |        2 |
| 78 |        2 |
|  1 |        2 |
| 23 |        2 |
| 69 |        2 |
|  8 |        2 |
| 26 |        2 |
| 66 |        2 |
| 63 |        2 |
| 29 |        2 |
| 57 |        2 |
| 83 |        2 |
| 32 |        2 |
| 33 |        2 |
| 51 |        2 |
|  2 |        2 |
| 87 |        2 |
|  6 |        2 |
| 38 |        2 |
| 90 |        2 |
| 11 |        2 |
| 43 |        2 |
| 85 |        3 |
| 75 |        3 |
| 71 |        3 |
| 45 |        3 |
| 39 |        3 |
| 21 |        3 |
| 48 |        3 |
| 49 |        3 |
| 35 |        3 |
| 25 |        3 |
| 31 |        3 |
| 65 |        3 |
| 15 |        3 |
| 55 |        3 |
| 79 |        3 |
| 88 |        3 |
|  3 |        3 |
|  9 |        3 |
| 61 |        3 |
| 60 |        4 |
| 56 |        4 |
| 81 |        4 |
| 64 |        4 |
| 53 |        4 |
| 27 |        4 |
| 67 |        4 |
| 34 |        4 |
| 24 |        4 |
| 86 |        4 |
| 13 |        4 |
| 20 |        4 |
| 16 |        4 |
| 74 |        4 |
| 41 |        4 |
| 46 |        4 |
| 76 |        5 |
| 70 |        5 |
| 62 |        5 |
| 58 |        5 |
| 18 |        5 |
| 82 |        5 |
| 10 |        5 |
| 50 |        5 |
| 42 |        5 |
| 14 |        5 |
| 36 |        5 |
| 30 |        5 |
| 22 |        5 |
| 54 |        5 |
+----+----------+
90 rows in set (0.00 sec)

mysql> SELECT id, precio_unitario FROM ventas ORDER BY precio_unitario DESC;
+----+-----------------+
| id | precio_unitario |
+----+-----------------+
|  1 |         1350.00 |
|  2 |         1350.00 |
| 42 |         1350.00 |
| 89 |         1350.00 |
|  5 |         1350.00 |
| 33 |         1350.00 |
| 49 |         1350.00 |
| 73 |         1350.00 |
|  9 |         1350.00 |
| 82 |         1350.00 |
| 20 |         1200.00 |
| 87 |         1200.00 |
| 60 |         1200.00 |
| 47 |         1200.00 |
| 78 |          800.00 |
| 11 |          800.00 |
| 51 |          800.00 |
| 38 |          800.00 |
| 15 |          550.00 |
| 74 |          550.00 |
| 55 |          550.00 |
| 34 |          550.00 |
| 70 |          500.00 |
| 30 |          500.00 |
| 80 |          480.00 |
| 18 |          480.00 |
| 58 |          480.00 |
|  7 |          480.00 |
|  3 |          480.00 |
| 40 |          480.00 |
| 10 |          420.00 |
| 50 |          420.00 |
| 76 |          350.00 |
| 19 |          350.00 |
| 23 |          350.00 |
| 63 |          350.00 |
| 59 |          350.00 |
|  6 |          350.00 |
| 36 |          350.00 |
| 90 |          280.00 |
|  4 |          280.00 |
| 43 |          280.00 |
|  8 |          280.00 |
| 83 |          280.00 |
| 14 |          280.00 |
| 54 |          280.00 |
| 46 |          250.00 |
| 86 |          250.00 |
| 67 |          250.00 |
| 27 |          250.00 |
| 12 |          200.00 |
| 52 |          200.00 |
| 32 |          180.00 |
| 72 |          180.00 |
| 64 |          180.00 |
| 24 |          180.00 |
| 35 |          150.00 |
| 16 |          150.00 |
| 75 |          150.00 |
| 56 |          150.00 |
| 41 |          120.00 |
| 26 |          120.00 |
| 68 |          120.00 |
| 28 |          120.00 |
| 81 |          120.00 |
| 48 |          120.00 |
| 88 |          120.00 |
| 66 |          120.00 |
| 25 |          100.00 |
| 65 |          100.00 |
| 77 |          100.00 |
| 37 |          100.00 |
| 61 |           80.00 |
| 21 |           80.00 |
| 79 |           80.00 |
| 39 |           80.00 |
| 62 |           70.00 |
| 22 |           70.00 |
| 71 |           70.00 |
| 31 |           70.00 |
| 84 |           70.00 |
| 44 |           70.00 |
| 57 |           40.00 |
| 17 |           40.00 |
| 85 |           40.00 |
| 45 |           40.00 |
| 69 |           30.00 |
| 29 |           30.00 |
| 53 |           20.00 |
| 13 |           20.00 |
+----+-----------------+
90 rows in set (0.00 sec)

mysql> SELECT nombre, precio FROM productos ORDER BY precio DESC LIMIT 5;
+-----------------------+---------+
| nombre                | precio  |
+-----------------------+---------+
| heladera side by side | 2000.00 |
| Laptop                | 1350.00 |
| Iphone 16 PRO         | 1300.00 |
| Smart TV 55 Pulgadas  | 1200.00 |
| Smart TV 55 Pulgadas  | 1200.00 |
+-----------------------+---------+
5 rows in set (0.01 sec)

mysql> SELECT apellido FROM empleados ORDER BY apellido DESC LIMIT 10;
+------------+
| apellido   |
+------------+
| Sánchez    |
| Rodríguez  |
| Rodríguez  |
| Rodríguez  |
| Ramírez    |
| Puente     |
| Pérez      |
| Pérez      |
| Márquez    |
| López      |
+------------+
10 rows in set (0.00 sec)

mysql> SELECT apellido FROM empleados ORDER BY apellido ASC LIMIT 10;
+------------+
| apellido   |
+------------+
| Alonso     |
| Fernández  |
| Fernández  |
| Gómez      |
| González   |
| Guzmán     |
| López      |
| Márquez    |
| Pérez      |
| Pérez      |
+------------+
10 rows in set (0.00 sec)

mysql> SELECT nombre, apellido, salario, salario_aumentado=salario*1.1 AS 'Aumento del 10%' FROM empleados;
ERROR 1054 (42S22): Unknown column 'salario_aumentado' in 'field list'
mysql> SELECT nombre, apellido, salario, salario * 1.1 AS `Aumento del 10%`FROM empleados;
+-----------+------------+---------+-----------------+
| nombre    | apellido   | salario | Aumento del 10% |
+-----------+------------+---------+-----------------+
| Ana       | Rodríguez  | 4373.71 |        4811.081 |
| Carlos    | López      | 3704.99 |        4075.489 |
| Martín    | González   | 3588.92 |        3947.812 |
| Luis      | Fernández  | 3711.02 |        4082.122 |
| Marta     | Ramírez    | 3912.98 |        4304.278 |
| Lorena    | Guzmán     | 3067.16 |        3373.876 |
| Javier    | Pérez      | 3656.99 |        4022.689 |
| Camila    | Gómez      | 3539.03 |        3892.933 |
| Lucas     | Fernández  | 3774.96 |        4152.456 |
| Valentina | Rodríguez  | 4128.86 |        4541.746 |
| Laura     | Sánchez    | 3892.93 |        4282.223 |
| Javier    | Pérez      | 3656.99 |        4022.689 |
| Camila    | Alonso     | 3539.03 |        3892.933 |
| Lucas     | Puente     | 3774.96 |        4152.456 |
| Juana     | Rodríguez  | 4128.86 |        4541.746 |
| Pedro     | Márquez    | 3303.09 |        3633.399 |
+-----------+------------+---------+-----------------+
16 rows in set (0.00 sec)

mysql> SELECT cliente_id, SUM(monto_total) AS `Monto total gastado`FROM ventas GROUP BY cliente_id;
+------------+---------------------+
| cliente_id | Monto total gastado |
+------------+---------------------+
|          1 |            15140.00 |
|          2 |             6260.00 |
|          3 |            18650.00 |
|          4 |             2880.00 |
|          5 |            12260.00 |
|          6 |            14260.00 |
|          7 |            10960.00 |
|          8 |            11540.00 |
|          9 |            13560.00 |
|         16 |             1350.00 |
+------------+---------------------+
10 rows in set (0.00 sec)

mysql> SELECT CONCAT ( nombre,  apellido) AS 'Nombre y apellido' FROM empleados;
+---------------------+
| Nombre y apellido   |
+---------------------+
| AnaRodríguez        |
| CarlosLópez         |
| MartínGonzález      |
| LuisFernández       |
| MartaRamírez        |
| LorenaGuzmán        |
| JavierPérez         |
| CamilaGómez         |
| LucasFernández      |
| ValentinaRodríguez  |
| LauraSánchez        |
| JavierPérez         |
| CamilaAlonso        |
| LucasPuente         |
| JuanaRodríguez      |
| PedroMárquez        |
+---------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT ( nombre, ' ',  apellido) AS 'Nombre y apellido' FROM empleados;
+----------------------+
| Nombre y apellido    |
+----------------------+
| Ana Rodríguez        |
| Carlos López         |
| Martín González      |
| Luis Fernández       |
| Marta Ramírez        |
| Lorena Guzmán        |
| Javier Pérez         |
| Camila Gómez         |
| Lucas Fernández      |
| Valentina Rodríguez  |
| Laura Sánchez        |
| Javier Pérez         |
| Camila Alonso        |
| Lucas Puente         |
| Juana Rodríguez      |
| Pedro Márquez        |
+----------------------+
16 rows in set (0.00 sec)

mysql> 