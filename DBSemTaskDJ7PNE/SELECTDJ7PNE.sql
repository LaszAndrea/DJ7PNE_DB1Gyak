USE DJ7PNE;

SELECT adószám, név, származás, irányítószám, utca  FROM Vevő, Szerződésszáma WHERE Adószám=AdószámSZFK group by név;
select adószám, név, származás, irányítószám, utca, terméknév  FROM szerződésszáma right outer join tasakrendelés on tasakid=tasakidszfk right outer join vevő on adószám=adószámszfk;
SELECT név as Vevő, termékneveSZFK as Terméknév,  rendelésdátuma FROM Vevő, szerződésszáma where rendelésdátuma=(select min(rendelésdátuma) from szerződésszáma where ((DATEDIFF(CURDATE(), rendelésdátuma)) < 300)) AND Adószám=AdószámSZFK;
SELECT név, termékneveSZFK as termék,mennyiség FROM vevő,tasakrendelés,szerződésszáma where mennyiség=(select max(mennyiség) from tasakrendelés) and AdószámSZFK=adószám and tasakidszfk=tasakid;
SELECT név, adószám FROM vevő where adószám in (select adószámszfk from szerződésszáma group by AdószámSZFK having count(AdószámSZFK)>1);
select termékneveffk as terméknév, count(pantonszámffk) as festékszám FROM felhasználás group by termékneveffk having count(pantonszámffk)=(select max(darab) from (select count(pantonszámffk) as darab from felhasználás group by termékneveffk) as maxc);

select név, mennyiség, rendelésdátuma from vevő, szerződésszáma, Tasakrendelés where AdószámSZFK=adószám and tasakidszfk=tasakid and mennyiség>(select avg(mennyiség) from tasakrendelés) and rendelésdátuma in ((select rendelésdátuma from szerződésszáma where rendelésdátuma > "2021.03.01")) ;
select gynév, avg(mennyiség) from gyár, vgy, vevő, szerződésszáma, tasakrendelés where gynév="1-es" and GyAdószámVGYFK=gyadószám and adószám = adószámvgyfk and adószám=adószámszfk and tasakid=tasakidszfk;
select count(TermékneveFFK) from festék, felhasználás where raktáronlévőmennyiség=((select max(raktáronlévőmennyiség) from festék)) and pantonszámffk=pantonszám;
select terméknév, szerződésszám, count(raszterhenger) as raszterhengerek from raszterhenger, szerződésszáma right outer join tasakrendelés on tasakid=tasakidszfk right outer join nyomtatógép on termékneve=termékneveszfk where Termékneve=Termékneverfk group by szerződésszám;
select név, TermékneveSZFK from logo, gyár, vgy, vevő, szerződésszáma where GyAdószámLFK=GyAdószám and logoid=1 and GyAdószámVGYFK=GyAdószám and adószám=adószámvgyfk and AdószámSZFK=adószám;