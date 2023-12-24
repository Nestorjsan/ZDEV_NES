@EndUserText.label: 'Proyeccion Diagnostico'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZMM_C_ZTDIAGNOSTICOMOD as projection on ZMM_I_ZTDIAGNOSTICOMOD
{
    key IdCedula,
    FecDiagnostico,
    IdMolestia,
    Descripcion,
    IdEspecialidad,
    IdMedico,
    /* Associations */
    _diagnosticopc: redirected to parent ZMM_C_ZTPACIENTESMOD
}
