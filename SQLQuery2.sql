use SFCIB

create view EjCPT as 
select * from Productos where preciop<30

select * from EjCPT 
select NombreProd, preciop, existp, from Productos 

where preciop between 1 and 100

create view EjCPD as 
select NombreProd, preciop, existp from Productos 
where preciop between 1 and 100

select * from EjCPD 

create procedure Productosexist 
@pinicial int, 
@pfinal int 
as
select NombreProd, preciop, existp from 
Productos where preciop between @pinicial and @pfinal

--Evaluación Diagnostica 
--Diseñar e Implementar consulta
--Algebra Relacional / Calculo de Predicado 
--Tipo de Operación 
--Nombre de Operación 
--Diseño de la consulta 
--Implementacion de la Consulta 

--1.Municipio x Dptos
select NombreDpto, id_Dpto, NombreMun, id_Mun from Municipios full join
Deptos on Municipios.id_Mun = Deptos.id_Dptos

create view JMD as
select NombreDpto, id_Dpto, NombreMun, id_Mun from Municipios full join
Deptos on Municipios.id_Mun = Deptos.id_Dptos

select * from JMD

--2.Pedidos x Proveedor 

select Id_Prov, NombreProv, DirProv, TelProv, EstadoProv, Id_Pedido, FechaPedido, Id_Prov, SubTotalP, TotalP, EstadoPedido from 
Proveedor full join Pedidos on Proveedor.id_Prov = Pedido.id_Pedido

create view JMS as
select Id_Prov, NombreProv, DirProv, TelProv, EstadoProv, Id_Pedido, FechaPedido, SubTotalP, TotalP, EstadoPedido from 
Proveedor full join Pedidos on Proveedor.Id_Prov = Pedidos.Id_Pedido

select * from JMS

--3.Ventas x Fecha

