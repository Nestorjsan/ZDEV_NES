@EndUserText.label: 'Proyeccion Consumo'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view entity ZMM_C_ZTDIAGNOSTICO as projection on ZMM_I_ZTDIAGNOSTICOMOD
{
    key IdCedula,
    FecDiagnostico,
    IdMolestia,
    Descripcion,
    IdEspecialidad,
    IdMedico,
    /* Associations */
    _diagnosticopc: redirected to parent ZMM_C_ZTPACIENTE
}
