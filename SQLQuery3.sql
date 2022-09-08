use SFCIB 

select count (CodProd) as CantReg, 
sum(existp) as Cantp, avg(preciop) as PrecioProm, min (preciop) as
PrecioProm, min(preciop) as PrecioMin, max(preciop) as precioMax, var (preciop) 
as VarianzaP, stdev(preciop) as DesvEp
from Productos 

create view FAG as 
select count (CodProd) as CantReg, 
sum(existp) as Cantp, avg(preciop) as PrecioProm, min (preciop) as
PrecioProm, min(preciop) as PrecioMin, max(preciop) as precioMax, var (preciop) 
as VarianzaP, stdev(preciop) as DesvEp
from Productos

select  * from FAG

--FechaActual
select getdate() as FechaHoraActual
--Conversion
--Año
select year(getdate()) as AñoActual,
year ('19710619') as MiAñoNac
--Mes
select month(getdate()) as MesActual,
month('19710619') as MiMesNac
--Dia
select day(getdate()) as DiaActual, 
day('19710619')as MiDiaNac
--Datadiff
select datediff(year,'20040722',getdate())as
edada,datediff(Month,'20040722',getdate())as
edadm, datediff(Week,'20040722',getdate())as
edad5, datediff(day,'20040722',getdate())as
edadD, datediff(hour,'20040722',getdate())
as edadh
--Sumarfechas 
select dateadd (day, 10, getdate()) as DiezDD
--Datename
select Datename (year, getdate()) as AñoActual
,DATENAME(month, getdate()) as MesActual
,DATENAME(day, getdate ()) as diaactual
,DATENAME (dayofyear, getdate ()) as diadelaño
,DATENAME (weekday, getdate()) as diasem
--datepart
select datepart(year, getdate ()) as AñoActual

-- Cadena 
--2.1 len(): Devuelve la logintud
select len(NombreProd) as LNP from Productos

--2.2 Char(): Devuelve el caracter a partir de su codigo ascii 
select char(61) as Caract 

--2.3 Ascii() :Devuelve el codigo ascii de un caracter 
select ascii('ñ') as ValorA

--2.4 Lower() : cambia a minuscula 
select lower('JOSWAR GUAPO') as Minus 

--2.5 Upper(): transforma a mayuscula
select Upper('Joswar Guapo') as Mayus

--2.6 substring(): Abstrae una subcadena
select substring ('001-190671-0011Y',5,6) as FechaNac

--2.7 charindex(): Coincide a partir de un indice 
DECLARE @document VARCHAR(6);
SELECT @document = 'reflectors are vital safety' +
                    'components of your bicycle' ;
SELECT CHARINDEX ('bicicle', @document) as Indice 

--2.8 Concta(). CONCATENA CADENAS 
SELECT CONCAT ('Happy', 'Birthday ', 11, '/', '25') As result 

--2.9 Reverse(): revierte la cadena 
select REVERSE ('ZXZ') AS INVERTIR

--2.10 LEFT(): Valores a partir de la izquierda
select left('Msc. de sisemas', 8) as Partizq

--2.11 rigth : Valores a partir de la Derecha 
select right('Msc.Sistemas ', 8) as Partder

--2.12 Ltrim(): Elimina espacios ala derecha 
select LTrim('Msc.Sistemas ') as Eespaciosizq

--2.13 RTrim () : elimiana espacios ala derecha 
select RTrim ('Msc.Sistemas ') as EespaciosDer

--3.Covertir 
--Cast 
 declare @ani as int 
 set @ani = (select cast(substring('001-190671-0011Y',9,2) as int) as 
 AñoNac)
 print @ani
--Convert
declare @anint as int 
 set @ani = (select convert(int,substring('001-190671-0011Y',9,2)) as 
 AñoNac)
 print @ani
 --Parse 
 select parse('Monday, 13 December 2010' As datetime2 USING 'EN-US')as result 

 declare @ane as int 
 set @ane = (select cast(year ('001-190671-001
 