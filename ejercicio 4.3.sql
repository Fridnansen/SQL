CREATE TABLE CICLISTA
       (
       ID_CICLISTA INTEGER NOT NULL PRIMARY KEY,                              
       NOMBRE TEXT NOT NULL,                              
       NACIONALIDAD TEXT NOT NULL,                              
       FECHA_NACIMIENTO DATETIME NOT NULL,                              
       );



CREATE TABLE EQUIPO
       (
       ID_EQUIPO BIGINT NOT NULL,                              
       NOMBRE CHAR(50) NOT NULL,                              
       NACIONALIDAD CHAR(30) NOT NULL,                              
       DIRECTOR CHAR(50) NOT NULL,                              
       PRIMARY KEY
               (
               ID_EQUIPO
               )
       );



CREATE TABLE PRUEBAS
       (
       ID_PRUEBAS BIGINT NOT NULL,                              
       ID_CICLISTA BIGINT NOT NULL,                              
       NOMBRE CHAR(30) NOT NULL,                              
       AÑO DATETIME NOT NULL,                              
       ETAPA BIGINT NOT NULL,                              
       KILOMETROS BIGINT NOT NULL,                              
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
       ID_EQUIPO BIGINT NOT NULL,                              
       ID_CICLISTA BIGINT NOT NULL,                              
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
       ID_PRUEBAS BIGINT NOT NULL,                              
       ID_EQUIPO BIGINT NOT NULL,                              
       PUESTO BIGINT NOT NULL,                              
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