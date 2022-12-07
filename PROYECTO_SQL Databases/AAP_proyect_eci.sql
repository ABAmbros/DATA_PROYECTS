--1. Genera una consulta que obtenga la lista ordenada de todas las referencias sin venta--

SELECT *
FROM articulo
WHERE not exists (SELECT * FROM venta WHERE venta.referencia = articulo.referencia);


--2.Genera una consulta que obtenga las ventas comprendidas entre 2010 y 2011 (ambos incluidos),-- 
--que estén asociados a una campaña de tipo VENTA y que sean del departamento de JOYERÍA--

SELECT  *
FROM venta as v, campania as c, departamento as d 
WHERE year(FECHA_VENTA) in ('2010','2011') and c.tipo = 'VENTA' and d.DESC_DPTO = 'JOYERIA';