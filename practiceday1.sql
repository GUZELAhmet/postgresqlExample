create table ogrenciler
(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);
--- INSERT:Veritabanına yeni veri ekler.
insert into ogrenciler values(120, 'Ali Can', 'Ankara', 75);
insert into ogrenciler values(121, 'Veli Mert', 'Trabzon', 85);
insert into ogrenciler values(122, 'Ayşe Tan', 'Bursa', 65);
insert into ogrenciler values(123, 'Derya Soylu', 'Istanbul', 95);
insert into ogrenciler values(124, 'Yavuz Bal', 'Ankara', 85);
insert into ogrenciler values(125, 'Emre Gül', 'Hatay', 90);
insert into ogrenciler values(126, 'Harun Reşit', 'Isparta', 100);
select * from ogrenciler;
--SORU : ogrenciler tablosundaki id ve isim sutununu getiriniz

select id, isim from ogrenciler;

--SORU: Sınav notu 80'den büyük olan öğrencilerin tüm bilgilerini listele
select * from ogrenciler where sinav_notu>80;

--SORU: Adresi Ankara olan ögrencilerin tüm bilgilerini listele
select * from ogrenciler where adres='Ankara';

--SORU: Sınav notu 85 ve adresi Ankara olan öğrenci ismini listele

 and adres='Ankara';

select isim from ogrenciler where adres in ('Ankara') and sinav_notu in (85);


--SORU: .Sınav notu 65 veya 85 olan ogrencilerin tüm bilgilerini listele
select * from ogrenciler where sinav_notu=85 or sinav_notu=65;


select * from ogrencilerr where sinav_notu in (65,85);

--SORU: adres'i Trabzon olan satırı siliniz
delete from ogrenciler WHERE adres='Trabzon';

--SORU: ismi Derya Soylu veya Yavuz Bal olan satırları siliniz

delete from ogrenciler WHERE isim='Derya Soylu' or isim=' Yavuz Bal' ;

--SORU: sınav notu 100 den küçük olan satırları siliniz
delete from ogrenciler WHERE sinav_notu<100;

--SORU: Tablodaki tüm satırları siliniz

delete from ogrenciler;
truncate table ogrenciler;


/*SORU: memurlar isminde bir tablo oluşturunuz. 
id, isim, maas sutunları olsun.
id sutununun data tipi int olsun. PRİMARY KRY kısıtlaması olsun.
isim sutununun data tipi varchar(30) olsun. UNIQUE kısıtlaması olsun.
maas sutununun data tipi int olsun. maas 5000 buyuk olsun. NOT NULL kısıtlaması olsun.

*/
create table memurlar(
id	int primary key,
isim	varchar(30) UNIQUE ,
maas  int check (maas>500) not null
	
);


/*SORU: insanlar isminde bir tablo oluşturunuz. 
isim, soyisim sutunları olsun.
isim sutununun data tipi int olsun. 
PRİMARY KEY kısıtlaması olsun. Kısıtlamanın ismi pr_ks olsun
soyisim sutununun data tipi varchar(30) olsun.
UNIQUE kısıtlaması olsun. Kısıtlamanın ismi uni_ks olsun

*/
create table(
isim int 
soyisimvarchar(30) unique
	constraint pr_ks primary key (isim)
	constraint uni_ks unique (soyisim)
);





