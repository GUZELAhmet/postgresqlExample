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
