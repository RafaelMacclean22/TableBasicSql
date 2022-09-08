use SFCIB 

--Trabajar con Municipio

Delete from Municipios where Id_Mun=4

select * from Municipios

alter table Municipios  add EstadoD bit default 1 

update Municipios EstadoD=1

create procedure NMNP
@NDS nvarchar(45)
as
declare @nde as nvarchar(45)
set @nde=(select NombreMun from Municipios
where NombreMun=@NDS)
if(@NDS='')
begin
  print 'No puede ser nulo'
end
else
begin
  if(@NDS=@nde)
  begin
    print 'Municipio duplicado'
  end
  else
  begin
    insert into Municipios values(@NDS,1)
  end
end

NMNP'Mulukukú'

select * from Municipios

