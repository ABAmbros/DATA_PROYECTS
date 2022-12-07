--CREACIÓN DE TABLAS--

CREATE TABLE FAMILIA (
    ID_DPTO      INT            NOT NULL,
    COD_FAMILIA  NVARCHAR (255) NOT NULL,
    DESC_FAMILIA NVARCHAR (255) NOT NULL,
    CONSTRAINT PK_familia PRIMARY KEY (
        ID_DPTO,
        COD_FAMILIA
    )
);

CREATE TABLE DEPARTAMENTO (
    ID_DPTO   INT           NOT NULL,
    DESC_DPTO VARCHAR (255) NOT NULL,
    CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (
        ID_DPTO
    )
);

CREATE TABLE ARTICULO (
    REFERENCIA  VARCHAR (255) NOT NULL,
    ID_DPTO     INT           NOT NULL,
    COD_FAMILIA VARCHAR (255) NOT NULL,
    FECHA_ALTA  DATE          NOT NULL,
    CONSTRAINT PK_ARTICULO PRIMARY KEY (
        REFERENCIA
    )
);

CREATE TABLE CAMPANIA (
    ID_CAMPANIA VARCHAR (255) NOT NULL,
    TIPO        VARCHAR (255) NOT NULL,
    FECHA_CAMP  DATE          NOT NULL,
    CONSTRAINT PK_CAMPANIA PRIMARY KEY (
        ID_CAMPANIA
    )
);

CREATE TABLE DEPTO_CAMPANIA (
    ID_DPTO     INT           NOT NULL,
    ID_CAMPANIA VARCHAR (255) NOT NULL,
    CONSTRAINT PK_DEPTO_CAMPANIA PRIMARY KEY (
        ID_DPTO,
        ID_CAMPANIA
    )
);

CREATE TABLE VENTA (
    TALON       VARCHAR (255) NOT NULL,
    REFERENCIA  VARCHAR (255) NOT NULL,
    PRECIO      FLOAT         NOT NULL,
    FECHA_VENTA DATE          NOT NULL,
    CONSTRAINT PK_VENTAS PRIMARY KEY (
        TALON
    )
);


--RELLENAMOS LA TABLA DE 'ARTICULO'--

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("A",1,"1F1","2010/02/21");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("B",2,"2F1","2014/02/07");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("C",2,"2F1","2014/05/15");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("D",2,"2F1","2005/10/01");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("E",2,"2F1","2010/10/31");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("F",3,"3F1","2001/04/20");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("G",3,"3F1","2015/02/14");

INSERT INTO `ARTICULO` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ("H",4,"4F1","2009/03/25");


--RELLENAMOS LA TABLA DE 'CAMPANIA'--

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA1","VENTA","2012/02/05");

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA2","VENTA","2012/02/04");

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA3","POSVENTA","2009/10/02");

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA4","VENTA","2010/05/06");

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA5","POSVENTA","2010/11/30");

INSERT INTO `CAMPANIA` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ("CA6","POSVENTA","2015/02/07");


--RELLENAMOS LA TABLA DE 'DEPARTAMENTO'--

INSERT INTO `DEPARTAMENTO` (`ID_DPTO`,`DESC_DPTO`) VALUES (1,"JOYERIA");

INSERT INTO `DEPARTAMENTO` (`ID_DPTO`,`DESC_DPTO`) VALUES (2,"BOLSOS");

INSERT INTO `DEPARTAMENTO` (`ID_DPTO`,`DESC_DPTO`) VALUES (3,"ZAPATERIA");

INSERT INTO `DEPARTAMENTO` (`ID_DPTO`,`DESC_DPTO`) VALUES (4,"BAÑO CAB.");


--RELLENAMOS LA TABLA DE 'DEPTO_CAMPANIA'--

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (1,"CA1");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (1,"CA4");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (2,"CA2");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (3,"CA2");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (3,"CA5");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (3,"CA6");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (4,"CA1");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (4,"CA2");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (4,"CA3");

INSERT INTO `DEPTO_CAMPANIA` (`ID_DPTO`,`ID_CAMPANIA`) VALUES (4,"CA6");


--RELLENAMOS LA TABLA DE 'FAMILIA'--

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (1,"1F1","PULSERAS");

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (1,"1F2","ANILLOS");

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (2,"2F1","BOLSOS DE MANO");

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (3,"3F1","NAUTICO");

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (3,"3F2","SANDALIAS");

INSERT INTO `FAMILIA` (`ID_DPTO`,`COD_FAMILIA`,`DESC_FAMILIA`) VALUES (4,"4F1","BERMUDAS");


--RELLENAMOS LA TABLA DE 'VENTA'--

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("01","A",15,"2012/02/11");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("02","A",18,"2012/02/15");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("03","A",14,"2013/10/02");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("04","D",37.95,"2010/08/06");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("05","E",125.95,"2010/11/30");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("06","E",150,"2011/02/05");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("07","H",22.99,"2010/04/11");

INSERT INTO `VENTA` (`TALON`,`REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES ("08","H",24,"2011/08/08");