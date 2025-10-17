SELECT 
    p.Nombre AS Empleado,
    e.Cargo,
    e.Salario
FROM datosempleado e
INNER JOIN datospersonales p ON e.FK_datospersonales = p.ID;


SELECT 
    Cargo,
    AVG(Salario) AS SalarioPromedio
FROM datosempleado
GROUP BY Cargo;


SELECT 
    NombreSucursal,
    Cantidad_ventas_anuales AS VentasTotales
FROM Sucursal;


SELECT p.Genero, COUNT(e.Codigo) AS TotalEmpleados
FROM datosempleado e
JOIN datospersonales p ON e.FK_datospersonales = p.ID
GROUP BY p.Genero;

USE datosgenerales;
GO
SELECT TOP 1 
    p.Nombre AS Empleado,
    e.Cargo,
    e.Salario
FROM datosempleado e
JOIN datospersonales p ON e.FK_datospersonales = p.ID
ORDER BY e.Salario DESC;

USE datosgenerales;
GO

SELECT TOP 1 
    NombreSucursal,
    Cantidad_ventas_anuales
FROM Sucursal
ORDER BY Cantidad_ventas_anuales ASC;

USE datosgenerales;
GO

SELECT 
    p.Genero,
    COUNT(*) AS Total
FROM datosempleado e
JOIN datospersonales p ON e.FK_datospersonales = p.ID
WHERE p.Genero = 'Masculino'
GROUP BY p.Genero;
