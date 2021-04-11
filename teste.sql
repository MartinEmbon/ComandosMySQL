LOGIN
mysql -u root -p 

CREATE DATABASE cadastro;

Eliminar? DROP DATABASE cadastro;

Te gusto? USE cadastro;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT,
    nombre VARCHAR (50),
    email VARCHAR (50),
    register_date DATETIME,
    PRIMARY KEY (id)
);

RENAME TABLE usuarios TO sqltest;

Eliminar? DROP TABLE usuarios;

DESCRIBE usuarios;

INSERT INTO usuarios (nombre, email,Fecha_Registro) VALUES (
    "Martin",
    "Pedro@hotmail.com",
    now()
);

RENOMBRAR UN CAMPO
ALTER TABLE usuarios CHANGE COLUMN register_date Fecha_Registro VARCHAR(20);

AGREGAR UNA COLUMNA
ALTER TABLE usuarios ADD COLUMN Edad INT;

ORDENAR FILA
SELECT * FROM usuarios ORDER BY id ASC;
SELECT * FROM usuarios ORDER BY id DESC;

ELIMINAR UNA FILA
DELETE FROM usuarios WHERE id = 1;

ACTUALIZAR UN CAMPO
UPDATE usuarios SET Edad = 30 WHERE id = 3;

OPCIONES DE SELECT 
SELECT * FROM sqltest where age BETWEEN 20 AND 24;

INSERT INTO sqltest (nombre,email,Fecha_Registro,Edad) VALUES (
    "Juan",
    "juan@hotmail.com",
    now(),
    23
);
