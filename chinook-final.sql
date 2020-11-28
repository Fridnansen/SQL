--1--

SELECT Name, Milliseconds, Bytes, TrackId FROM tracks WHERE AlbumId=33;

--2--

SELECT TrackId, Name, MediaTypeId FROM tracks WHERE MediaTypeId=2 OR MediaTypeId=4 OR MediaTypeId=5;

--3--

SELECT TrackId, Name, Bytes FROM tracks ORDER BY Bytes DESC LIMIT 10;

--4--

SELECT TrackId, Name, Milliseconds  FROM tracks ORDER BY Milliseconds ASC LIMIT 5;


--5--

SELECT TrackId, Name  FROM tracks WHERE AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Let There Be Rock');

--6--

SELECT InvoiceId FROM invoices WHERE InvoiceDate BETWEEN '2010-01-01' AND '2010-01-31';

--7--

SELECT InvoiceId, total FROM invoices WHERE NOT(total> 1 AND total< 20);

--8--

SELECT DISTINCT City, Country FROM customers ORDER BY City DESC;

--9--

SELECT name FROM tracks WHERE name LIKE '%Wild';

--10--

SELECT name FROM tracks WHERE name LIKE '%Br_wn%';





