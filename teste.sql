INSTALACION
1.mysql community server
2.mysql windows installer v.400mg
3.server only
4.devop machine
5.introducir senha

LOGIN
mysql -u root -p 

--- // ---

CREATE DATABASE cadastro;
USE cadastro;
Cual DB esta en uso ? SELECT DATABASE();

--- // ---

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT,
    nombre VARCHAR (50),
    email VARCHAR (50),
    register_date DATETIME,
    PRIMARY KEY (id)
);

INSERT INTO usuarios (nombre, email,Fecha_Registro) VALUES (
    "Martin",
    "Pedro@hotmail.com",
    now()
);

CREATE TABLE company.employee (
    fname VARCHAR (10) NOT NULL,
    lname VARCHAR (10) NOT NULL,
    ssn VARCHAR (9) NOT NULL,
    Bdate DATE,
    Salary DECIMAL (10,2)NULL
);

INSERT INTO employee (fname,lname,ssn,Bdate,Salary) VALUES (
    "Peter","Cozinha","123783","1985-01-09","1384"
);

--- // ---

RENAME TABLE usuarios TO sqltest;

RENOMBRAR UN CAMPO
ALTER TABLE usuarios CHANGE COLUMN register_date Fecha_Registro VARCHAR(20);
Precisa tener misma cantidad de caracteres.  Tirar un describe primero.

---//---

ELIMINAR FILAS, TABLAS O DB
DROP TABLE usuarios; / ELIMINA TABLA
DROP DATABASE cadastro;
DELETE FROM usuarios WHERE id = 1; / Eliminar fila
DELETE FROM cadastro; ELIMINAR CONTENIDO TABLA
DELETE FROM usuarios WHERE idade = "" or idade IS NULL;

* DIFERENCIA ENTRE DROP Y DELETE *
DROP apaga columna / DELETE contenido 

---//---

DESCRIBE usuarios para ver detalles de tabla. 

---//---

AGREGAR UN ID A COLUMNA
ALTER TABLE usuariodos ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY

AGREGAR UNA COLUMNA - QUITAR COLUMNA
ALTER TABLE usuarios ADD COLUMN Edad INT; + FIRST para adicionar en primer lugar
ALTER TABLE usuarios DROP COLUMN Edad;

---//---

ACTUALIZAR UN CAMPO
UPDATE usuarios SET Edad = 30 WHERE id = 3;

---//---

RETREIVE QUERY
SELECT * FROM usuarios ORDER BY id ASC;
SELECT * FROM usuarios ORDER BY id DESC;
SELECT * FROM sqltest where age BETWEEN 20 AND 24;
SELECT nome,sobrenome from usuarios where salario>10000;

SELECT DISTINCT salary from usuarios; (apaga repetidos)
SELECT * from usuarios,funcionarios where departamento="cozinha";

MULTI-TABLE SELECTION
SELECT nome, endereco, salario, profissao from usuarios, carreira where salario>10000

SELECCIONAR CUANDO CONTIENE CIERTA PALABRA:
SELECT * FROM usuarios WHERE nombre LIKE '%Martin%'; 
...WHERE Bdate like "__6______"

SELECCIONAR UN RANGO
SELECT * FROM usuarios WHERE idade BETWEEN 23 and 32;

SELECCIONAR POR GRUPO
SELECT lname, COUNT(*), AVG(salary) FROM employee GROUP BY lname;

AGREGATE FUNCTIONS
SELECT SUM(salary), MAX(salary), MIN(salary), AVG(salary)
FROM employee;

---//---

CONTAR CANTIDAD DE CAMPOS (FIELDS) + OUTROS QUERIES
SELECT COUNT(*) FROM usuariodos;
SELECT COUNT(DISTINCT salary) from employee;

---//---

CREA UNA NUEVA TABLA QUE SE ACTUALIZA
CREATE VIEW works as select fname,lname,register_date from employee,funcionarios where salary>1

---//---

PARA AMPLIAR:
AS 
IN 
DISTINCT 
UNION (nested QUERY)
JOIN 
ON 
CREATE TRIGGER FOR EACH ROW WHEN (NEW.X)
TIMESTAMP
