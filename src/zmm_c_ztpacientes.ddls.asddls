@EndUserText.label: 'Proyeccion Pacientes'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZMM_C_ZTPACIENTES
  provider contract transactional_query  as projection on ZMM_I_ZTPACIENTES
{
   key IdCedula,
   Nombre,
   Direccion,
   Telefonno,
   FecNacimiento,
   Departamento,
   Ciudad,
   CiudadRes,
   OpeSalud,
   Estado,
   /* Associations */
   _diagnostico :redirected to composition child ZMM_C_ZTDIAGNOSTICO
}
