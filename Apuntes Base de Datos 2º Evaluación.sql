-- CONSULTAS SIMPLES EN NUESTRAS BASES DE DATOS --
Permite borrar todos los registros cuya clave ajena sea igual a la clave del registro borrado -> ON DELETE CASCADE;

Coloca el valor null en todas las claves ajenas relacionadas con la borrada -> ON DELETE SET NULL;

No permite borrar el registro principal si hay registro asociados con ese valor en su clave ajena -> ON DELETE RESTRICT;

Coloca un valor por defecto en todas las claves ajenas relacionadas con la borrada -> ON DELETE SET DEFAULT=valor;

Permite modificar el valor de la clave ajena de todos los registros cuya clave ajena sea igual a la clave del registro modificado -> ON UPDATE CASCADE;

Coloca el valor null en todas las claves ajenas relacionadas con la modificada -> ON UPDATE SET NULL;

No permite modificar la clave primaria el registro principal, si hay registros asociados con ese valor en su clave ajena -> ON UPDATE RESTRICT;

Coloca un valor por defecto en todas las claves ajenas relacionadas con la borrada -> ON UPDATE SET DEFAULT = valor;

Cambiar el nombre de una tabla -> RENAME TABLE NombreViejo TO NombreNuevo;
 
Dejar espacios en blanco entre los registros -> SELECT CONCAT_WS (' 'nombre de las columnas) FROM nombre de la tabla;
 
Contar el número de carácteres -> SELECT left ('Lo que se quiera medir')
 
Eliminar espacios en blanco -> SELECT TRIM('      esto se quedaria sin espacios    ')
 
Reemplazar carácteres -> SELECT REPLACE('xxx.Gabriel.com','letra que queramos cambiar','letra por la que se cambiara');
 
Repite la cadena o caracteres que queramos -> SELECT repeat('Lo que queramos',las veces que queramos);
 
Nos pasa a mayúsculas lo que le metemos -> SELECT ucase('la cadena de texto que queramos');

Unir todos los campos en uno y mostrarlos en mayúsculas -> SELECT UPPER(CONCAT_WS(' ','nombre del campo','nombre del campo')) FROM nombre de la tabla;

Unir todos los campos en uno y mostrarlos en mnúsculas -> SELECT LOWER(CONCAT_WS(' ','nombre del campo','nombre del campo')) FROM nombre de la tabla;

Coge el entero y le suma uno(siempre y cuando su decimal sea mayor a 0)-> SELECT 'nombre', CEILING ('nombre del campo') AS 'nuevo nombre' FROM 'nombre de la tabla';
 
Hace el módulo de los 2 números -> SELECT MOD ('numero1', 'numero2');
 
Calcula la potencia del 1º número elevado al 2º -> SELECT POWER ('10','2');
 
Mostrará solo los registros que cumplan con la condición que le indiquemos -> SELECT FROM 'nombre de la tabla' WHERE 'nombre de la columna' (aquí va la condicion que queramos mostrar);
 
Mostrará todos los registros que cumplan la condición (en este caso nos mostrara todos los registros que cumplan la condicion,el % indica que solo muestre los que acaban en la condicion) -> SELECT FROM 'nombre de la tabla' WHERE 'nombre de la columna' LIKE '%condicion';SELECT FROM 'nombre de la tabla' WHERE 'nombre de la columna' NOT LIKE '%condicion';
 
Mostrará todos los registros que empiecen por lo indicado en la condición -> SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna'regexp '^condicion';

Sumará todos los registros de la columna que deseemos -> SELECT SUM('nombre de la columna') FROM 'nombre de la tabla';

Mostrará la media de todos los registros de la columna que deseemos -> SELECT AVG('nombre de la columna') FROM 'nombre de la tabla';

Mostrará el mínimo de todos los registros de la columna que deseemos -> SELECT MIN('nombre de la columna') FROM 'nombre de la tabla';

Mostrará el máximo de todos los registros de la columna que deseemos -> SELECT MAX('nombre de la columna') FROM 'nombre de la tabla';

Realiza la suma de la columna que queramos y la podemos agrupar como nosotros queramos -> SELECT 'nombre columna' SUM('columna que queremos sumar') FROM GROUP BY 'nombre columna';

Da la hora, minutos, segundos, día, mes y año actual que tiene nuestro dispositivo en el momento exacto -> SELECT NOW();

Da la hora, minutos y segundos actual que tiene nuestro dispositivo en el momento exacto -> SELECT CURRENT_TIME();

Suma 8 días de la fecha que le introduzcamos por teclado -> SELECT DATE_ADD('2023-01-25', INTERVAL 6 DAY);

Calcular diferencia de fecha -> SELECT DATEDIFF('2022-12-31', '2022-12-29');

Poner el idioma de las fechas en español -> SET lc_times_names = 'es_ES';

--EXPRESIONES REGULARES--

Mostrar algo que empieze por la letra que queramos -> SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna' REGEXP '^letra o cadena que queramos';

Mostrar algo que contenga la letra que queramos > SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna' REGEXP 'letra o cadena que queramos';

Mostrar algo que termine por la letra que queramos -> SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna' REGEXP 'letra o cadena que queramos$'

Mostar algo que tenga las mismas letras que puntos pongamos -> SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna' REGEXP '^....$'

Mostar algo que tenga dos veces la letra que queramos -> SELECT * FROM 'nombre de la tabla' WHERE 'nombre de la columna' REGEXP 'letra que queramos.* letra que queramos'

--MÉTODO DE JOIN, HACER CONSULTAS RELACIONANDO 2 TABLAS--

Coge la interseccion entre dos tablas -> SELECT * FROM 'nombre de una tabla' INNER JOIN 'nombre de otra tabla' ON '1ªtabla'.'nombre de la columna' = '2ªtabla'.'nombre de la columna';

--CLAÚSULAS PARA LAS SUBCONSULTAS--

clausula exist -> SELECT * FROM 'nombre de tabla = X' WHERE EXISTS (SELECT * FROM 'nombre de la tabla' WHERE 'campo de la tabla' = 'X'.'campo de la tabla X')

clausula not exist -> SELECT * FROM 'nombre de tabla = X' WHERE EXISTS (SELECT * FROM 'nombre de la tabla' WHERE 'campo de la tabla' = 'X'.'campo de la tabla X')

clausula IN -> SELECT * FROM 'nombre de tabla = X' WHERE 'campo de la tabla X' IN (SELECT 'campo de la tabla' FROM 'nombre de la tabla')

clausula NOT IN -> 	SELECT * FROM 'nombre de tabla = X' WHERE 'campo de la tabla X' NOT IN (SELECT 'campo de la tabla' FROM 'nombre de la tabla')

clausula all -> select * from 'nombre de tabla = X' where 'campo de la tabla X' <> all (select 'campo de la tabla' from 'nombre de la tabla')

clausula ANY -> select * from 'nombre de tabla = X' where 'campo de la tabla X' = any (select 'campo de la tabla' from 'nombre de la tabla')

