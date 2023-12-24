@AbapCatalog.sqlViewName: 'ZCDS_VISTA001'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de Clientes'
@Metadata.allowExtensions: true

define view ZCDS_0001 
with parameters 
   @EndUserText.label: 'Id'
   p_idcli : abap.int4 //zed_dev001
as select from ztclientes
{
    key cliente as Cliente,
    nombre as Nombre,
    direccion as Direccion
}
where cliente = $parameters.p_idcli
