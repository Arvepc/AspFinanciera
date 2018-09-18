program financiera;

uses
  Vcl.Forms,
  Controls,
  duinicio in 'duinicio.pas' {frminicio},
  duprincipal in 'duprincipal.pas' {frmprincipal},
  dudm in 'dudm.pas' {dm: TDataModule},
  Hashes in 'Hashes.pas',
  duusuarios in 'duusuarios.pas' {frmusuarios},
  duactusuario in 'duactusuario.pas' {frmactusuario},
  ducp in 'ducp.pas' {frmcp},
  duProducto in 'duProducto.pas' {frmproducto},
  duPersonas in 'duPersonas.pas' {frmPersonas},
  duActProd in 'duActProd.pas' {frmActProducto},
  duactpersonas in 'duactpersonas.pas' {Frmactpersonas},
  duactfisicas in 'duactfisicas.pas' {Frmactfisicas},
  duactmorales in 'duactmorales.pas' {FrmactMorales},
  dumonedas in 'dumonedas.pas' {frmmonedas},
  duactividades in 'duactividades.pas' {Frmactividades},
  duactactividades in 'duactactividades.pas' {frmactactividades},
  DgieWS in 'DgieWS.pas',
  duempresa in 'duempresa.pas' {Frmempresa},
  duacciones in 'duacciones.pas' {Frmacciones},
  dubancos in 'dubancos.pas' {frmbancos},
  ducentrostrabajo in 'ducentrostrabajo.pas' {frmcentrostrabajo},
  duactcentrostrabajo in 'duactcentrostrabajo.pas' {Frmactcentrostrabajo},
  durecuperar in 'durecuperar.pas' {Frmrecuperar},
  dudocumentos in 'dudocumentos.pas' {Frmdocumentos},
  dulistasolicitudes in 'dulistasolicitudes.pas' {frmlistasolicitudes},
  dutiposolicitud in 'dutiposolicitud.pas' {frmtiposolicitud},
  dusolicitud in 'dusolicitud.pas' {frmsolicitud},
  dusolicitudmoral in 'dusolicitudmoral.pas' {frmsolicitudmoral},
  duactdispercion in 'duactdispercion.pas' {frmactdispercion},
  dudispercion in 'dudispercion.pas' {frmdispercion},
  duanalisis in 'duanalisis.pas' {frmanalisis},
  dumesacontrolcredito in 'dumesacontrolcredito.pas' {frmmesacontrolcredito},
  dumesacontrolfinal in 'dumesacontrolfinal.pas' {frmmesacontrolfinal},
  timeline in 'timeline.pas' {frmtimeline},
  duActPlanpagos in 'duActPlanpagos.pas' {frmactplanpagos},
  duPlanPagos in 'duPlanPagos.pas' {frmplanpagos},
  duplanpagosdetalle in 'duplanpagosdetalle.pas' {frmplanpagosdetalle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrminicio, frminicio);
  Application.CreateForm(Tdm, dm);
  frminicio.ShowModal;


   if frminicio.ModalResult <> mrCancel then
  begin
    frminicio.Free;
    application.CreateForm(TfrmPrincipal,frmprincipal);
    Application.Run;
  end ;



end.
