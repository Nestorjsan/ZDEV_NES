@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Pacientes'
define root view entity ZMM_I_ZTPACIENTESMOD
  as select from ztpacientes
  composition [0..*] of ZMM_I_ZTDIAGNOSTICOMOD as _diagnosticopc
{
  key ztpacientes.id_cedula      as IdCedula,
      ztpacientes.nombre         as Nombre,
      ztpacientes.direccion      as Direccion,
      ztpacientes.telefonno      as Telefonno,
      ztpacientes.fec_nacimiento as FecNacimiento,
      ztpacientes.departamento   as Departamento,
      ztpacientes.ciudad         as Ciudad,
      ztpacientes.ciudad_res     as CiudadRes,
      ztpacientes.ope_salud      as OpeSalud,
      ztpacientes.estado         as Estado,
      _diagnosticopc // Make association public
}
