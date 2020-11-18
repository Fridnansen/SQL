/*   COMPRA AUTO   */

CREATE TABLE CLIENTE
       (
       ID_CLIENTE INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       DIRECCION TEXT NOT NULL,                              
       TELEFONO INTEGER NOT NULL,                              
       APELLIDO TEXT NOT NULL,                              
       PRIMARY KEY
               (
               ID_CLIENTE
               )
       );



CREATE TABLE AUTO
       (
       ID_AUTO INTEGER NOT NULL,                              
       MARCA TEXT NOT NULL,                              
       MODELO TEXT NOT NULL,                              
       COLOR TEXT NOT NULL,                              
       MATRICULA INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_AUTO
               )
       );



CREATE TABLE COMPRA
       (
       ID_AUTO INTEGER NOT NULL,                              
       ID_CLIENTE INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_AUTO,
               ID_CLIENTE
               ),
       FOREIGN KEY
               (
               ID_AUTO
               )
          REFERENCES AUTO
               (
               ID_AUTO
               ),
       FOREIGN KEY
               (
               ID_CLIENTE
               )
          REFERENCES CLIENTE
               (
               ID_CLIENTE
               )
       );

/*   ESCUELA   */

CREATE TABLE ALUMNO
       (
       ID_ALUMNO INTEGER NOT NULL,                              
       NOMBRES TEXT NOT NULL,                              
       APELLIDOS TEXT NOT NULL,                              
       DNI INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_ALUMNO
               )
       );



CREATE TABLE CURSO
       (
       ID_CURSO INTEGER NOT NULL,                              
       TITULO TEXT NOT NULL,                              
       DIA TEXT NOT NULL,                              
       FECHA_INICIO DATETIME NOT NULL,                              
       FECHA_FIN DATETIME NOT NULL,                              
       PRIMARY KEY
               (
               ID_CURSO
               )
       );



CREATE TABLE PROFESOR
       (
       ID_PROFESOR INTEGER NOT NULL,                              
       ID_CURSO INTEGER NOT NULL,                              
       NOMBRES TEXT NOT NULL,                              
       APELLIDOS TEXT NOT NULL,                              
       DNI INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_PROFESOR
               ),
       FOREIGN KEY
               (
               ID_CURSO
               )
          REFERENCES CURSO
               (
               ID_CURSO
               )
       );



CREATE TABLE ASIGNADO
       (
       ID_ALUMNO INTEGER NOT NULL,                              
       ID_CURSO INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_ALUMNO,
               ID_CURSO
               ),
       FOREIGN KEY
               (
               ID_ALUMNO
               )
          REFERENCES ALUMNO
               (
               ID_ALUMNO
               ),
       FOREIGN KEY
               (
               ID_CURSO
               )
          REFERENCES CURSO
               (
               ID_CURSO
               )
       );

/*   Restaurante    */

CREATE TABLE CATEGORIA
       (
       ID_CATEGORIA INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       DESCRIPCION TEXT NOT NULL,                              
       ENCARGADO TEXT NOT NULL,                              
       PRIMARY KEY
               (
               ID_CATEGORIA
               )
       );



CREATE TABLE INGREDIENTE
       (
       ID_INGREDIENTE INTEGER NOT NULL,
       CANT_ALMACENADA REAL NOT NULL,
       UNIDAD_MEDIDA TEXT NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       PRIMARY KEY
               (
               ID_INGREDIENTE
               )
       );



CREATE TABLE PLATO
       (
       ID_PLATO INTEGER NOT NULL,                              
       ID_CATEGORIA INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       DESCRIPCION TEXT NOT NULL,                              
       NIVEL_DIFICULTAD INTEGER NOT NULL,                              
       FOTO TEXT NOT NULL,                              
       PRECIO REAL NOT NULL,                              
       PRIMARY KEY
               (
               ID_PLATO
               ),
       FOREIGN KEY
               (
               ID_CATEGORIA
               )
          REFERENCES CATEGORIA
               (
               ID_CATEGORIA
               )
       );



CREATE TABLE RECETA
       (
       ID_PLATO INTEGER NOT NULL,                              
       ID_INGREDIENTE INTEGER NOT NULL,                              
       CANTIDAD INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_PLATO,
               ID_INGREDIENTE
               ),
       FOREIGN KEY
               (
               ID_PLATO
               )
          REFERENCES PLATO
               (
               ID_PLATO
               ),
       FOREIGN KEY
               (
               ID_INGREDIENTE
               )
          REFERENCES INGREDIENTE
               (
               ID_INGREDIENTE
               )
       );

/*   Tour   */

CREATE TABLE CICLISTA
       (
       ID_CICLISTA INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       NACIONALIDAD TEXT NOT NULL,                              
       FECHA_NACIMIENTO DATETIME NOT NULL,                              
       PRIMARY KEY
               (
               ID_CICLISTA
               )
       );



CREATE TABLE EQUIPO
       (
       ID_EQUIPO INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       NACIONALIDAD TEXT NOT NULL,                              
       DIRECTOR TEXT NOT NULL,                              
       PRIMARY KEY
               (
               ID_EQUIPO
               )
       );



CREATE TABLE PRUEBAS
       (
       ID_PRUEBAS INTEGER NOT NULL,                              
       ID_CICLISTA INTEGER NOT NULL,                              
       NOMBRE TEXT NOT NULL,                              
       AÑO DATETIME NOT NULL,                              
       ETAPA INTEGER NOT NULL,                              
       KILOMETROS INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_PRUEBAS
               ),
       FOREIGN KEY
               (
               ID_CICLISTA
               )
          REFERENCES CICLISTA
               (
               ID_CICLISTA
               )
       );



CREATE TABLE PERTENECE
       (
       ID_EQUIPO INTEGER NOT NULL,                              
       ID_CICLISTA INTEGER NOT NULL,                              
       FECHA_INICIO DATETIME NOT NULL,                              
       FECHA_FIN DATETIME NOT NULL,                              
       PRIMARY KEY
               (
               ID_EQUIPO,
               ID_CICLISTA
               ),
       FOREIGN KEY
               (
               ID_EQUIPO
               )
          REFERENCES EQUIPO
               (
               ID_EQUIPO
               ),
       FOREIGN KEY
               (
               ID_CICLISTA
               )
          REFERENCES CICLISTA
               (
               ID_CICLISTA
               )
       );



CREATE TABLE PARTICIPADO
       (
       ID_PRUEBAS INTEGER NOT NULL,                              
       ID_EQUIPO INTEGER NOT NULL,                              
       PUESTO INTEGER NOT NULL,                              
       PRIMARY KEY
               (
               ID_PRUEBAS,
               ID_EQUIPO
               ),
       FOREIGN KEY
               (
               ID_PRUEBAS
               )
          REFERENCES PRUEBAS
               (
               ID_PRUEBAS
               ),
       FOREIGN KEY
               (
               ID_EQUIPO
               )
          REFERENCES EQUIPO
               (
               ID_EQUIPO
               )
       );

/*  INSERTAR COMPRA AUTO    */
	   
INSERT INTO CLIENTE(ID_CLIENTE, NOMBRE, DIRECCION, TELEFONO, APELLIDO) VALUES (1, 'Maria', 'LaValle', 5491134567567, 'Rodriguez'),
																			  (2, 'Juan', 'Finochietto', 5491140756798, 'Perez'),
																			  (3, 'Pedro', 'Caceros', 5491156587867, 'Dominguez'),
																			  (4, 'Jesús', 'Montes de Oca', 5491134563265, 'Landaeta'),
																			  (5, 'Martin', 'Constitución', 5491134567567, 'Villarreal');

INSERT INTO AUTO(ID_AUTO, MARCA , MODELO, COLOR, MATRICULA) VALUES (1, 'Toyota', 'Fortuner', 'Azul', 1351521),
																	  (2, 'Renault', 'Clio', 'Rojo', 1113333),
																	  (3, 'Dodge', 'Forza', 'Negro', 1213233),
																	  (4, 'Ford', 'Mustang', 'Marron', 4132413),
																	  (5, 'Hiunday', 'Atos', 'Gris', 2513251);


INSERT INTO COMPRA (ID_AUTO, ID_CLIENTE) VALUES (1, 4),
												(2, 5),
												(3, 2),
												(4, 3),
												(5, 1);
												
/*  INSERTAR ESCUELA    */
												
INSERT INTO ALUMNO(ID_ALUMNO, NOMBRES, APELLIDOS, DNI) VALUES (1, 'Francisco', 'Aranguren', 34351521),
															  (2, 'José', 'Suarez', 12113333),
															  (3, 'Manuel', 'Gutierrez', 65213233),
															  (4, 'Pedro', 'Parra', 26132413),
														      (5, 'Antonella', 'Gregoriny', 42513251);
	
						
INSERT INTO CURSO(ID_CURSO,TITULO,DIA,FECHA_INICIO,FECHA_FIN) VALUES (1, 'Matemática', 'Miercoles', '07/07/2021', '28/07/2021'),
																	 (2, 'Fisica', 'Jueves', '08/07/2021', '29/07/2021' ),
																	 (3, 'Castellano', 'Viernes', '09/07/2021', '30/07/2021'),
																	 (4, 'Geometria', 'Lunes', '05/07/2021', '26/07/2021'),
																	 (5, 'Ingles', 'Martes', '06/07/2021', '27/07/2021');

INSERT INTO PROFESOR (ID_PROFESOR,ID_CURSO,NOMBRES,APELLIDOS,DNI) VALUES (1, 3, 'Diego', 'Mosquera', 28072021),
																		 (2, 4, 'Mayra', 'Montoya', 29021323 ),
																	     (3, 1, 'Tamara', 'Castellanos', 32072021),
																	     (4, 5, 'Belinda', 'Araujo', 26072021),
																	     (5, 2, 'Alberto', 'Ibarra', 27072041);	
		
INSERT INTO ASIGNADO(ID_ALUMNO,ID_CURSO) VALUES (1, 4),
												(2, 5),
												(3, 2),
												(4, 3),
												(5, 1);		
					
/*  INSERTAR RESTAURANTE    */
					
INSERT INTO CATEGORIA(ID_CATEGORIA,NOMBRE, DESCRIPCION,ENCARGADO) VALUES (1, 'Italiana', 'Espaguetti, pasticho, pizza, etc.', 'Manuel'),
																		 (2, 'Americana', 'Hamburgesa, pancho, sandwich, etc.', 'Jesus'),
																		 (3, 'China', 'Arroz chino, lumpia, chop suey, etc.', 'Bruce Lee'),
															             (4, 'Venezolana', 'Arepa, cachapa, hallaca, etc.', 'Fernando'),
														                 (5, 'Francesa', 'Pan Frances, factura, media luna', 'Keyla');

INSERT INTO INGREDIENTE(ID_INGREDIENTE,CANT_ALMACENADA,UNIDAD_MEDIDA,NOMBRE) VALUES (1, 30000.567, 'KG', 'CARNE PICADA'),
																					(2, 44657.768, 'CC', 'LECHE'),
																					(3, 156767.757, 'LB', 'JUGO'),
																					(4, 555775.879, 'MG', 'ARROZ'),
																					(5, 20000.679, 'KG', 'ESPAGUETTI');		
			
INSERT INTO PLATO (ID_PLATO, ID_CATEGORIA, NOMBRE, DESCRIPCION, NIVEL_DIFICULTAD, FOTO, PRECIO) VALUES (1, 4, 'Espaguetti', 'A la milanesa', 'Dificil', 'htttp:\\espagueti_a_la_milanesa', 250.25),
																									  (2, 3, 'Hamburgesa', 'Especial doble capa', 'Dificil', 'htttp:\\hamburgesa_doble_capa', 200.50),
																								      (3, 5, 'Arroz chino', 'Sencillo con carne de cerdo', 'Medio', 'htttp:\\arroz_cerdo', 300.99),
																								      (4, 2, 'Arepa', 'De pabellon', 'Medio','htttp:\\arepa_de_pabellon', 100.78),
																								      (5, 1, 'Media luna', 'Sencilla con cafe con leche', 'Facil','htttp:\\media_luna_con_cafe_con_leche', 70.50);			
																 
INSERT INTO RECETA(ID_PLATO,ID_INGREDIENTE,CANTIDAD) VALUES (1, 4, 3000 ),
															(2, 5, 20),
															(3, 2, 234),
															(4, 3, 2000),
															 (5, 1, 30);	
						
/*  Tour    */
INSERT INTO CICLISTA (ID_CICLISTA,NOMBRE, NACIONALIDAD,FECHA_NACIMIENTO) VALUES (1, 'Amarilis', 'Española', '30/03/1988'),
																			    (2, 'Andreinha', 'Brasileña', '03/06/1990'),
																			    (3, 'Wlliam', 'EEUU', '27/05/1986'),
																			    (4, 'Fei Liu', 'Japonesa', '17/06/1995'),
																			    (5, 'Anderson', 'Argentina', '12/09/1998');
																				
INSERT INTO EQUIPO(ID_EQUIPO,NOMBRE,NACIONALIDAD, DIRECTOR) VALUES (1, 'Avancor', 'Española', 'Miranda'),
																   (2, 'Batafogo', 'Brasileña', 'Ferreriro'),
																   (3, 'Snaider', 'EEUU', 'Gates'),
																   (4, 'Zuka', 'Japonesa', 'Chang thu Sun'),
																   (5, 'Boca', 'Argentina', 'Belgrano');
										
INSERT INTO PRUEBAS (ID_PRUEBAS,ID_CICLISTA,NOMBRE, AÑO,ETAPA,KILOMETROS) VALUES (1, 4, 'Montañosa', '2021', 5, 250.25),
																				 (2, 3, 'Planicie', '2022', 7, 200.50),
																				 (3, 5, 'Urbana', '2021', 9, 300.99),
																				 (4, 2, 'Costa', '2024', 4, 100.78),
																				 (5, 1, 'Desierto', '2023', 6,70.50);		
																				
	
INSERT INTO PERTENECE (ID_EQUIPO,ID_CICLISTA,FECHA_INICIO, FECHA_FIN) VALUES (1, 2, '07/07/2021', '28/07/2021'),
																			 (2, 1, '08/07/2021', '29/07/2021' ),
																			 (3, 4, '09/07/2021', '30/07/2021'),
																			 (4, 5, '05/07/2021', '26/07/2021'),
																	         (5, 3, '06/07/2021', '27/07/2021');	
				
INSERT INTO PARTICIPADO(ID_PRUEBAS,ID_EQUIPO,PUESTO) VALUES (1, 4, 1 ),
															(2, 5, 20),
															(3, 2, 2),
															(4, 3, 15),
															(5, 1, 3);				



