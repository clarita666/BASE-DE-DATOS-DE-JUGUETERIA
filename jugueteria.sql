-- insertar datos 
INSERT INTO Productos (nombre, descripcion, precio, destacado, stock)
VALUES ('Auto a control remoto', 'Auto eléctrico con control inalámbrico', 12000, 1, 15);

--actualizar datos
UPDATE Productos 
SET sotck = 25 
WHERE id = 3;

--borrar datos 
DELETE FROM Productos 
WHERE id = 5;