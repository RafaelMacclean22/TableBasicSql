use SFCIB

select * from Depto
select * from Municipios
select * from Proveedor
select * from Productos

-- Procedimientos Almacenados
-- CRUD
-- Ingresar, dar de baja, Modificar, Buscar y Listar
-- 1.- Ingresar
create procedure Nuevo
@NDxz nvarchar(45)
as
declare @nomd as nvarchar(45)
set @nomd=(select Id_Mun from Municipios where NombreMun=@NDxz)
if(@NDxz='')
begin
  print 'No puede ser nulo'
end
else
begin
  if(@nomd=@NDxz)
  begin
    print 'Municipios ya registrado'
  end
  else
  begin
    insert into Municipios values(@NDxz)
  end
end


Nuevo 'Leon'

select * from Municipios

-- Dar de baja

alter table Municipios add EstadoD bit default 1

update Municipios set EstadoD=2

create procedure BD
@IDS int
as
declare @iddept as int
set @iddept=(select Id_Mun from Municipios where Id_Mun=@IDS)
if(@iddept=@IDS)
begin
  update Depto set EstadoD=0 where Id_Mun=@IDS
end
else
begin
  print 'Depto no encontrado'
end

BD 1

-- Actualizacion
alter procedure Act
@ID int,
@ND nvarchar(35)
as
declare @idd as int
set @idd=(select Id_Mun from Municipios where Id_Mun=@ID)
declare @nde as nvarchar(35)
set @nde=(select NombreMun from Municipios  where NombreMun=@ND)
declare @ed as bit
set @ed=(select EstadoD from Municipios where Id_Mun=@ID)
if(@ND='')
begin
  print 'No puede ser nulo'
end
else
begin
  if(@idd=@ID)
  begin
    if(@ND=@nde)
	begin
	  print 'Depto no puede duplicarse'
	end
	else
	begin
	  if(@ed=1)
	  begin
	  update Municipios set NombreMun=@ND where Id_Mun=@ID
	  end
	  else
	  begin
	    print 'Depto inactivo'
	  end
	end
  end
  else
  begin
    print 'Dpto no registrado'
  end
end

select * from Municipios 

Act 1,'Tipitapa'

-- Busqueda
create procedure BuscarDpto
@ID int
as
declare @idde as int
set @idde=(select Id_Mun from Municipios where Id_Mun=@ID)
if(@idde=@ID)
begin
  select * from Municipios where Id_Mun=@ID
end
else
begin
  print 'Dpto no encontrado'
end

BuscarDpto 1

-- Lista
create procedure Listarzz
as
select * from Municipios where EstadoD=2

Listarzz

