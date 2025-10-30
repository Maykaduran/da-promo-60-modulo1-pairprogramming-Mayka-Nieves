
/* Productos más baratos y caros de nuestra la bases de datos:
Desde la división de productos nos piden conocer el precio de los productos que tienen el precio más alto y más bajo. Dales el alias lowestPrice y highestPrice.*/

SELECT * 
	FROM products;
    
SELECT MAX(list_price) AS 'highestPrice'  , MIN(list_price) AS 'lowestPrice'
	FROM products;

/* Conociendo el numero de productos y su precio medio:
Adicionalmente nos piden que diseñemos otra consulta para conocer el número de productos y el precio medio de todos ellos (en general, no por cada producto).*/

SELECT * 
	FROM products;

SELECT COUNT(DISTINCT product_code), AVG(list_price) AS 'PrecioMedio'
	FROM products;


/* Qué productos se venden por encima del precio medio:
Después de analizar los resultados de alguna de nuestras consultas anteriores, 
desde el departamento de Ventas quieren conocer qué productos en concreto se venden por encima del precio medio para todos los productos de la empresa, 
ya que sospechan que dicho número es demasiado elevado. También quieren que ordenemos los resultados por su precio de mayor a menor..*/

SELECT * 
	FROM products;
    
SELECT AVG(list_price)
	FROM products;

SELECT product_name, list_price AS 'Precio Ascendente'
	FROM products
    ORDER BY list_price ASC;
    
SELECT product_name, list_price AS 'Precio Descendente'
	FROM products
    ORDER BY list_price DESC;
    
/* Qué productos se han descontinuado:
De cara a estudiar el histórico de la empresa nos piden una consulta para conocer el número de productos que se han descontinuado. 
El atributo Discontinued es un booleano: si es igual a 1 el producto ha sido descontinuado.*/

SELECT *
	FROM products;

SELECT product_name, 
	CASE
		WHEN discontinued = 1 THEN "Descontinuado"
        ELSE 'Continuo'
        END AS Estado_producto
	FROM products;

/* Detalles de los productos de la query anterior:
Adicionalmente nos piden detalles de aquellos productos no descontinuados, sobre todo el ProductID y ProductName. 
Como puede que salgan demasiados resultados, nos piden que los limitemos a los 10 con ID más elevado, que serán los más recientes.
No nos pueden decir del departamento si habrá pocos o muchos resultados, pero lo limitamos por si acaso.*/

SELECT *
	FROM products;
    
SELECT product_name, id, 
	CASE
		WHEN discontinued = 1 THEN "Descontinuado"
        ELSE 'Continuo'
        END AS Estado_producto
	FROM products
    ORDER BY id DESC
    LIMIT 10;
    
SELECT count(DISTINCT id)
	FROM products;
    
SELECT count(DISTINCT product_code)
	FROM products;