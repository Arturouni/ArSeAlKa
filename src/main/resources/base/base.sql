DROP TABLE IF EXISTS lugares CASCADE;
CREATE TABLE lugares(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(250) UNIQUE,
    descripcion TEXT,
    caracteristicas TEXT
);

/*
DROP TABLE IF EXISTS caracteristicas CASCADE;
CREATE TABLE caracteristicas(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(250) UNIQUE
);

DROP TABLE IF EXISTS lugares_caracteristicas CASCADE;
CREATE TABLE lugares_caracteristicas(
    id SERIAL PRIMARY KEY,
    id_lugar INTEGER REFERENCES lugares(id),    
    id_caracteristica INTEGER REFERENCES caracteristicas(id)    
);
*/

/* datos de prueba */
INSERT INTO lugares(nombre,descripcion,caracteristicas) VALUES('Tulum 1','descripción bla bla','calido, alpinismo');
INSERT INTO lugares(nombre,descripcion,caracteristicas) VALUES('Tulum 2','descripción bla bla','calido, alpinismo');
INSERT INTO lugares(nombre,descripcion,caracteristicas) VALUES('Tulum 3','descripción bla bla','calido, alpinismo');
INSERT INTO lugares(nombre,descripcion,caracteristicas) VALUES('Tulum 4','descripción bla bla','calido, alpinismo');

/*
INSERT INTO caracteristicas(nombre) VALUES ('calido');
INSERT INTO caracteristicas(nombre) VALUES ('alpinismo');
INSERT INTO caracteristicas(nombre) VALUES ('senderismo');
INSERT INTO caracteristicas(nombre) VALUES ('equitacion');
INSERT INTO caracteristicas(nombre) VALUES ('pan de cocodrilo');

INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(1,1);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(1,2);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(1,3);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(1,4);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(1,5);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(2,1);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(2,2);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(2,3);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(3,1);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(3,4);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(3,5);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(4,1);
INSERT INTO lugares_caracteristicas(id_lugar, id_caracteristica) VALUES(4,2);
*/

/** EJEMPLO JOIN ENTRE TRES TABLAS */
/* 
SELECT * FROM lugares l
INNER JOIN lugares_caracteristicas l_c
ON l.id=l_c.id_lugar
INNER JOIN caracteristicas c
on c.id=l_c.id_caracteristica
*/
