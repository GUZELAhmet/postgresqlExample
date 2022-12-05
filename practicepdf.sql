--S37 practice
--“tedarikciler” isminde bir tablo olusturun ve “tedarikci_id”,
--“tedarikci_ismi”, 
--“tedarikci_adres”
--ve “ulasim_tarihi” field’lari olsun. 
create table tedarikciler(
teadikciId char(4),
	tedarikci_ismi varchar(50),
	tedarikci_adres varchar(50),
ulasım_tarihi date);

--“tedarikçi_ziyaret” isminde bir tabloyu
--“tedarikciler” tablosundan olusturun.
--Icinde “tedarikci_ismi”, “ulasim_tarihi” field’lari
--olsun.
create table tedarikci_ziyaret 
as select tedarikci_ismi,ulasım_tarihi
from tedarikciler;

/*Practice2:  sy 38
“ ogretmenler” isminde tablo olusturun. Icinde “kimlik_no”, “isim”, “brans” ve “cinsiyet”
field’lari olsun.
“ogretmenler” tablosuna bilgileri asagidaki gibi olan bir kisi ekleyin.
Kimlik_no: 234431223, isim: Ayse Guler, brans : Matematik, cinsiyet: kadin.
Ekleme :
“ogretmenler” tablosuna bilgileri asagidaki gibi olan bir kisi ekleyin.
Kimlik_no: 567597624, isim: Ali Veli

*/

create table ogretmenler (
kimlik_no char(4),
	isim  varchar(15),
	brans varchar(10),
	cinsiyet char(1)
);
insert into ogretmenler values(1223,'Ayse Guler', 'Matematik', 'k');
select * from ogretmenler;
insert into ogretmenler values(1235,'ali veli', 'dev','e');



/*Practice 3: sy:46
“sehirler” isimli bir Table olusturun.
Tabloda “alan_kodu”, “isim”, “nufus”
field’lari olsun. Isim field’i bos
birakilamasin.
1.Yontemi kullanarak “alan_kodu”
field’ini “Primary Key” yapin

*/

create table sehirler(
alan_kodu char(4) primary key,
isim varchar(15) not null,
nufus int
);

/*sy 50;
Practice5:
“calisanlar” isimli bir Tablo olusturun. Icinde “id”, “”, “maas”, 
“ise_baslama”field’lari olsun.“id” yi Primary Keyyapin, “isim” i Unique,
“maas” i Not Nullyapın.
“adresler” isminde baska bir tablo olusturun.Icinde “adres_id”,“sokak”, 
“cadde” ve “sehir”fieldlari olsun. “adres_id” field‘iileForeign Key oluşturun.

*/


create table calisanlar (
id char(4) primary key,
isim   varchar(15)  Unique,
maas  int    Not Null
);

create table adresler(
adres_id char(4) ,
sokak	varchar(15),
cadde	varchar(15),
sehir   varchar(15),
	foreign key (adres_id) References calisanlar(id)

);

INSERT INTO calisanlar VALUES('1002', 'Mehmet Yılmaz' ,12000, '2018-04-14');

INSERT INTO calisanlar VALUES('1008', null, 5000, '2018-04-14');

INSERT INTO calisanlar VALUES('1010', 'Mehmet Yılmaz', 5000, '2018-04-14');

INSERT INTO calisanlar VALUES('1003', 'CAN', 5000, '2018-04-14');

INSERT INTO calisanlar VALUES( null, 'filiz ' ,12000, '2018-04-14');

INSERT INTO calisanlar VALUES('', 'osman', 2000, '2018-04-14');

INSERT INTO adresler VALUES('1003','Ağa Sok', '30.Cad.','Antep');

INSERT INTO adresler VALUES(NULL,'Ağa Sok', '30.Cad.','Antep');

INSERT INTO adresler VALUES('1002','Ağa Sok', '30.Cad.','Antep');

--sy59
CREATE TABLE talebeler
(
id CHAR(3) primary key,
isim VARCHAR(50),
veli_isim VARCHAR(50),
yazili_notu int
);

CREATE TABLE notlar(
talebe_id char(3),
ders_adi varchar(30),
yazili_notu int,
CONSTRAINT notlar_fk FOREIGN KEY (talebe_id) REFERENCES talebeler(id)
on delete cascade
);

INSERT INTO talebeler VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO talebeler VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO talebeler VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO talebeler VALUES(126, 'Nesibe Yılmaz', 'Ayse',95);
INSERT INTO talebeler VALUES(127, 'Mustafa Bak', 'Can',99);

INSERT INTO notlar VALUES ('123','kimya',75);
INSERT INTO notlar VALUES ('124', 'fizik',65);
INSERT INTO notlar VALUES ('125', 'tarih',90);
INSERT INTO notlar VALUES ('126', 'Matematik',90);


DELETE from notlar where talebe_id='123';--child
--child tablodaki veriyi sildiğimiz zaman sadece child'daki veri silinir. parent taki veri silinmez.
DELETE from talebeler where id='126';--parent
--parent tablodaki veriyi sildiğimiz zaman child'daki veride silinir.
DELETE FROM talebeler; --Parent tablo ile birlikte child tablo daki verileride siler
DROP TABLE talebeler CASCADE; --İlişkili tablolardan parent olan talebeler tablosunu siler


