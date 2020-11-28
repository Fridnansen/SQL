-- 1. Traer todas las columnas de la tabla Tracks pero solamente mostrar 20 registros.

SELECT * FROM tracks LIMIT 20;


-- 2. Traer todas las canciones que duren 5,000,000 milisegundos o más

SELECT * FROM tracks WHERE Milliseconds >= 5000000; 

-- 3. Encontrar todas las facturas con un total entre 5 y 14 dólares. (invoices)

SELECT * FROM invoices WHERE total >= 5 AND total <= 14;

-- 4. Encontrar todos los clientes de los siguientes estados: RJ, DF, AB, BC, CA, WA, NY. (customers)

SELECT * FROM customers WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');

--5. Encontrar todas las facturas para los clientes 56 y 58 donde el total esté entre $1.00 and $5.00. (invoices)

SELECT * FROM invoices WHERE CustomerId = 56 AND CustomerId = 58 ;

6. Mostrar el nombre de las canciones que comiencen con ‘All’
7. Encontrar todos los mails de los clientes que comiencen con “J” y sean de gmail.com.
8. Encontrar todas las facturas de Brasilia, Edmonton, y Vancouver y ordenarlas descendentemente por invoice ID.
9. Mostrar el número de compras hechas por cada cliente y ordenarlas por la cantidad descendentemente (invoices)
10. Encontrar los álbums con 12 o más canciones