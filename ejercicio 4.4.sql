CREATE TABLE ALUMNO
       (
       ID_ALUMNO INTEGER NOT NULL PRIMARY KEY,                              
       NOMBRES TEXT NOT NULL,                              
       APELLIDOS TEXT NOT NULL,                              
       DNI REAL NOT NULL,                              
       );



CREATE TABLE CURSO
       (
       ID_CURSO INT NOT NULL,                              
       TITULO CHAR(50) NOT NULL,                              
       DIA CHAR(10) NOT NULL,                              
       FECHA_INICIO DATETIME NOT NULL,                              
       FECHA_FIN DATETIME NOT NULL,                              
       PRIMARY KEY
               (
               ID_CURSO
               )
       );



CREATE TABLE PROFESOR
       (
       ID_PROFESOR INT NOT NULL,                              
       ID_CURSO INT NOT NULL,                              
       NOMBRES CHAR(30) NOT NULL,                              
       APELLIDOS CHAR(30) NOT NULL,                              
       DNI INT NOT NULL,                              
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
       ID_ALUMNO INT NOT NULL,                              
       ID_CURSO INT NOT NULL,                              
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