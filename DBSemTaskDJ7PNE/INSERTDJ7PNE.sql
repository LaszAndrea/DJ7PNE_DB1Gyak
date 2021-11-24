USE DJ7PNE;
INSERT INTO Nyomtatógép VALUES("1kg Gyermelyi fehérliszt", "VF001", 120000, 20);
INSERT INTO Nyomtatógép VALUES("1kg Hajdú fehérliszt", "VF001", 30000, 5);
INSERT INTO Nyomtatógép VALUES("5kg Gyermelyi fehérliszt", "VF003", 75000, 10);
INSERT INTO Nyomtatógép VALUES("McDonalds A tasak", "VF002", 300000, 40);

INSERT INTO Raszterhenger VALUES("180/20", "McDonalds", "McDonalds A tasak"); 
INSERT INTO Raszterhenger VALUES("120/10", "McDonalds", "McDonalds A tasak"); 
INSERT INTO Raszterhenger VALUES("100", "McDonalds", "McDonalds A tasak"); 
INSERT INTO Raszterhenger VALUES("180/20", "Hajdú", "1kg Hajdú fehérliszt"); 
INSERT INTO Raszterhenger VALUES("180/20", "Hajdú", "1kg Hajdú fehérliszt"); 
INSERT INTO Raszterhenger VALUES("120/10", "Gyermelyi", "5kg Gyermelyi fehérliszt"); 
INSERT INTO Raszterhenger VALUES("140/12", "Gyermelyi", "5kg Gyermelyi fehérliszt"); 
INSERT INTO Raszterhenger VALUES("180/20", "Gyermelyi", "1kg Gyermelyi fehérliszt"); 
INSERT INTO Raszterhenger VALUES("100/10", "Gyermelyi", "1kg Gyermelyi fehérliszt"); 
INSERT INTO Raszterhenger VALUES("GSS", "Gyermelyi", "1kg Gyermelyi fehérliszt"); 

INSERT INTO Tasakrendelés VALUES(0, "barna", 250000, "McDonalds A tasak");
INSERT INTO Tasakrendelés VALUES("1", "fehér Artic", 90000, "1kg Hajdú fehérliszt");
INSERT INTO Tasakrendelés VALUES("2", "fehér Artic", 55000, "5kg Gyermelyi fehérliszt");
INSERT INTO Tasakrendelés VALUES("3", "fehér", 45000, "1kg Gyermelyi fehérliszt");
INSERT INTO Tasakrendelés VALUES("4", "fehér", 4000, "1kg Hajdú fehérliszt");

INSERT INTO Vevő VALUES(123456789, "McDonalds", NULL, 4054, NULL);
INSERT INTO Vevő VALUES(234543211, "Gyermelyi", "szlovák", 6032, "Siugjku utca");
INSERT INTO Vevő VALUES(999876545, "Hajdú", "magyar", 5050, NULL);
INSERT INTO Vevő VALUES(432123459, "Good Mills", NULL, 2156, "Petőfi utca");
INSERT INTO Vevő VALUES(776655443, "KFC", NULL, 3021, NULL); 

INSERT INTO Szerződésszáma VALUES("2020.12.15.", 202012151, "1kg Gyermelyi fehérliszt", "3", 234543211);
INSERT INTO Szerződésszáma VALUES("2021.06.12.", 202106122, "1kg Hajdú fehérliszt", "1", 999876545);
INSERT INTO Szerződésszáma VALUES("2020.06.12.", 202006122, "1kg Hajdú fehérliszt", "4", 999876545);
INSERT INTO Szerződésszáma VALUES("2021.04.04.", 202104045, "5kg Gyermelyi fehérliszt", "2", 234543211);
INSERT INTO Szerződésszáma VALUES("2020.12.15.", 202012152, "McDonalds A tasak", "0", 123456789);

INSERT INTO Festék VALUES("PMS123", 1200, "2022.06.15");
INSERT INTO Festék VALUES("PMS124", 1000, "2021.12.15");
INSERT INTO Festék VALUES("PMS323", 43, NULL);
INSERT INTO Festék VALUES("PMS723", NULL, NULL);
INSERT INTO Festék VALUES("C123", 30, "2025.02.05");
INSERT INTO Festék VALUES("U123", 100, NULL);
INSERT INTO Festék VALUES("U1222", NULL, NULL);
INSERT INTO Festék VALUES("U1123", 500, "2023.06.24");
INSERT INTO Festék VALUES("U1323", 145, "2022.06.15");
INSERT INTO Festék VALUES("C443", NULL, NULL);
INSERT INTO Festék VALUES("C1223", 300, "2022.06.15");
INSERT INTO Festék VALUES("C1673", NULL, NULL);

INSERT INTO Gyártó VALUES("Colorpint", "PMS123");
INSERT INTO Gyártó VALUES("Colorpint", "C1673");
INSERT INTO Gyártó VALUES("Colorpint", "C1223");
INSERT INTO Gyártó VALUES("Colorpint", "C443");
INSERT INTO Gyártó VALUES("Colorpint", "U1323");
INSERT INTO Gyártó VALUES("Colorpint", "PMS124");
INSERT INTO Gyártó VALUES("Colorpint", "PMS323");
INSERT INTO Gyártó VALUES("Colorpint", "PMS723");
INSERT INTO Gyártó VALUES("Colorpint", "C123");
INSERT INTO Gyártó VALUES("Colorpint", "U123");
INSERT INTO Gyártó VALUES("Colorpint", "U1222");
INSERT INTO Gyártó VALUES("Colorpint", "U1123");
INSERT INTO Gyártó VALUES("Polifarbe", "PMS123");
INSERT INTO Gyártó VALUES("Polifarbe", "C1673");
INSERT INTO Gyártó VALUES("Polifarbe", "U1323");

INSERT INTO Felhasználás VALUES("gyermelyi tasak", "1kg Gyermelyi fehérliszt", "PMS123");
INSERT INTO Felhasználás VALUES("gyermelyi tasak", "1kg Gyermelyi fehérliszt", "U1222");
INSERT INTO Felhasználás VALUES("gyermelyi tasak", "1kg Gyermelyi fehérliszt", "PMS323");
INSERT INTO Felhasználás VALUES("gyermelyi tasak", "5kg Gyermelyi fehérliszt", "PMS323");
INSERT INTO Felhasználás VALUES("gyermelyi tasak", "5kg Gyermelyi fehérliszt", "U1323");
INSERT INTO Felhasználás VALUES("mcdonalds tasak", "McDonalds A tasak", "PMS124");
INSERT INTO Felhasználás VALUES("mcdonalds tasak", "McDonalds A tasak", "U1323");
INSERT INTO Felhasználás VALUES("mcdonalds tasak", "McDonalds A tasak", "C1673");
INSERT INTO Felhasználás VALUES("hajdú tasak", "1kg Hajdú fehérliszt", "PMS723");
INSERT INTO Felhasználás VALUES("hajdú tasak", "1kg Hajdú fehérliszt", "U1123");

INSERT INTO Gyár VALUES("111111111", "2002.12.01.", "1-es", NULL);
INSERT INTO Gyár VALUES("222222222", "2004.06.07.", "2-es", "Nyíregyháza");
INSERT INTO Gyár VALUES("333333333", "2013.02.23.", "3-es", "Nyíregyháza");

INSERT INTO VGY VALUES(111111111, 123456789);
INSERT INTO VGY VALUES(222222222, 123456789);
INSERT INTO VGY VALUES(111111111, 234543211);
INSERT INTO VGY VALUES(222222222, 234543211);
INSERT INTO VGY VALUES(333333333, 234543211);
INSERT INTO VGY VALUES(111111111, 999876545);

INSERT INTO Tulajdonos VALUES(111222333, "Kiss István", NULL, NULL, 111111111);
INSERT INTO Tulajdonos VALUES(222333444, "Nagy Péter", "1996.04.05.", NULL, 222222222);
INSERT INTO Tulajdonos VALUES(333444555, "Tóth Klaudia", "1989.08.23", "2016.09.01", 333333333);

INSERT INTO Színek VALUES("FFF000");
INSERT INTO Színek VALUES("000000");
INSERT INTO Színek VALUES("00435");
INSERT INTO Színek VALUES("U1554");
INSERT INTO Színek VALUES("U5443");
INSERT INTO Színek VALUES("C2345");

INSERT INTO Logo VALUES(3, "2002.01.01.", NULL, 111111111, "FFF000");
INSERT INTO Logo VALUES(3, "2002.01.01.", NULL, 111111111, "00435");
INSERT INTO Logo VALUES(3, "2002.01.01.", NULL, 111111111, "C2345");
INSERT INTO Logo VALUES(5, "2004.01.01.", "Nagy Zoltán",  222222222, "000000");
INSERT INTO Logo VALUES(5, "2004.01.01.", "Nagy Zoltán",  222222222, "C2345");
INSERT INTO Logo VALUES(1, "2013.01.01.", "Papp Boglárka",  333333333, "FFF000");

SELECT * FROM Nyomtatógép;
SELECT * FROM  Raszterhenger;
SELECT * FROM  Tasakrendelés;
SELECT * FROM  Vevő;
SELECT * FROM  Szerződésszáma;
SELECT * FROM  Festék;
SELECT * FROM  Gyártó;
SELECT * FROM  Felhasználás;
SELECT * FROM  Gyár;
SELECT * FROM  VGY;
SELECT * FROM  Tulajdonos;
SELECT * FROM  Színek;
SELECT * FROM  Logo;

