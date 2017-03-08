-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2017-03-07 23:58:20 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE
  TABLE contribuyente
  (
    id                 NUMBER (10) NOT NULL ,
    nombre             VARCHAR2 (150 CHAR) NOT NULL ,
    nit                VARCHAR2 (20 CHAR) NOT NULL ,
    direccion          VARCHAR2 (250 CHAR) NOT NULL ,
    correo_electronico VARCHAR2 (150 CHAR) NOT NULL
  ) ;
ALTER TABLE contribuyente ADD CONSTRAINT contribuyente_PK PRIMARY KEY ( id ) ;


CREATE
  TABLE factura
  (
    id               NUMBER (10) NOT NULL ,
    contribuyente_id NUMBER (10) NOT NULL ,
    nit              CHAR (20 CHAR) NOT NULL ,
    fecha            DATE NOT NULL ,
    serie            VARCHAR2 (15 CHAR) NOT NULL ,
    numero           VARCHAR2 (15 CHAR) NOT NULL ,
    monto            NUMBER (15,2) NOT NULL ,
    notas            VARCHAR2 (250 CHAR)
  ) ;
ALTER TABLE factura ADD CONSTRAINT factura_PK PRIMARY KEY ( id ) ;


CREATE
  TABLE foto_factura
  (
    id         NUMBER (10) NOT NULL ,
    factura_id NUMBER (10) NOT NULL ,
    nombre     VARCHAR2 (150 BYTE) ,
    foto BLOB
  ) ;
ALTER TABLE foto_factura ADD CONSTRAINT foto_factura_PK PRIMARY KEY ( id ) ;


CREATE
  TABLE proveedor
  (
    nit       CHAR (20 CHAR) NOT NULL ,
    nombre    VARCHAR2 (150 CHAR) NOT NULL ,
    telefono  VARCHAR2 (20 CHAR) ,
    direccion VARCHAR2 (250 CHAR)
  ) ;
ALTER TABLE proveedor ADD CONSTRAINT proveedor_PK PRIMARY KEY ( nit ) ;


ALTER TABLE factura ADD CONSTRAINT factura_contribuyente_FK FOREIGN KEY (
contribuyente_id ) REFERENCES contribuyente ( id ) ;

ALTER TABLE factura ADD CONSTRAINT factura_proveedor_FK FOREIGN KEY ( nit )
REFERENCES proveedor ( nit ) ;

ALTER TABLE foto_factura ADD CONSTRAINT foto_factura_factura_FK FOREIGN KEY (
factura_id ) REFERENCES factura ( id ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
