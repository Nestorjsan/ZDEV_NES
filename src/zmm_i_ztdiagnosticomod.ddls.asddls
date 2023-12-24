@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Diagnostico'
define view entity ZMM_I_ZTDIAGNOSTICOMOD
  as select from ztdiagnostico
  association to parent ZMM_I_ZTPACIENTESMOD as _diagnosticopc on $projection.IdCedula = _diagnosticopc.IdCedula
{
  key ztdiagnostico.id_cedula       as IdCedula,
      ztdiagnostico.fec_diagnostico as FecDiagnostico,
      ztdiagnostico.id_molestia     as IdMolestia,
      ztdiagnostico.descripcion     as Descripcion,
      ztdiagnostico.id_especialidad as IdEspecialidad,
      ztdiagnostico.id_medico       as IdMedico,
      _diagnosticopc // Make association public
}
