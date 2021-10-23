CREATE DATABASE DJ7PNE;
USE DJ7PNE;
CREATE TABLE TANFOLYAM(tkód INT, ár INT check(ÁR>0), tipus CHAR(30), megnevezés CHAR(30), PRIMARY KEY(tkód));
CREATE TABLE RESZTVEVO(tajszám INT, név CHAR(30) not null, lakcím CHAR(40), PRIMARY KEY(tajszám));
CREATE TABLE BEFIZETES(tanfolyamok INT REFERENCES TANFOLYAM, resztvevok INT REFERENCES RESZTVEVO, befizetes INT);