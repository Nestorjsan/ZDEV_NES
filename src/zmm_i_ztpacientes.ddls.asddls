@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Pacientes'
define root view entity ZMM_I_ZTPACIENTES 
     as select from ztpacientes
composition [0..*] of ZMM_I_ZTDIAGNOSTICO as _diagnostico
{
    key ztpacientes.id_cedula as IdCedula,
    ztpacientes.nombre as Nombre,
    ztpacientes.direccion as Direccion,
    ztpacientes.telefonno as Telefonno,
    ztpacientes.fec_nacimiento as FecNacimiento,
    ztpacientes.departamento as Departamento,
    ztpacientes.ciudad as Ciudad,
    ztpacientes.ciudad_res as CiudadRes,
    ztpacientes.ope_salud as OpeSalud,
    ztpacientes.estado as Estado,
    _diagnostico // Make association public
}
