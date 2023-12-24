@EndUserText.label: 'Proyeccion Pacientes'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZMM_C_ZTPACIENTESMOD as projection on ZMM_I_ZTPACIENTESMOD
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
    _diagnosticopc: redirected to composition child ZMM_C_ZTDIAGNOSTICOMOD
}
