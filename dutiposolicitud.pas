unit dutiposolicitud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  Tfrmtiposolicitud = class(TForm)
    imgmoral: TImage;
    imgfisica: TImage;
    Label2: TLabel;
    lblmoral: TLabel;
    Panel1: TPanel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    btnmuestra: TSpeedButton;
    Panel6: TPanel;
    Label1: TLabel;
    edidpp: TEdit;
    procedure imgfisicaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure imgfisicaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgfisicaMouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgmoralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgmoralMouseLeave(Sender: TObject);
    procedure imgmoralClick(Sender: TObject);
  private
    { Private declarations }
    procedure muestra;
  public
    { Public declarations }

  end;

var
  frmtiposolicitud: Tfrmtiposolicitud;

implementation

{$R *.dfm}

uses dusolicitud, dudm, dusolicitudmoral;
procedure Tfrmtiposolicitud.muestra;
begin

 application.CreateForm(Tfrmsolicitud, frmsolicitud);
 application.ProcessMessages;
 //frmsolicitud.Visible := false;

dm.activa_ds(dm.dsfisicas);

frmsolicitud.envia := 'N';

dm.activa_ds(dm.dsbancos);
dm.activa_ds(dm.dsmonedas);
dm.activa_ds(frmsolicitud.dsmonedas); // ds local
dm.activa_ds(dm.dssubproducto); // tipo de credito
dm.activa_ds(frmsolicitud.dssubproducto);
dm.activa_ds(dm.dsactividades); //este se va a cargar con un filtro al momento de usarse
  //1 es activo .

if edidpp.Text = '0' then
dm.filtra(dm.dsplan_pagos, 'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.pp_fecha, plan_pagos.pp_plazo, productos.prd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_periodicidad, '+
'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_freccapint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres, pp_comision, pp_gastos, '+
'sbp_descripcion, estatus.est_descripcion '+
'from plan_pagos, estatus, productos, subproducto '+
'where plan_pagos.est_fk = estatus.est_id '+
'and plan_pagos.prd_fk = productos.prd_id '+
'and sbp_id = sbp_fk and est_fk = 1 ')
else
begin
dm.filtra(dm.dsplan_pagos, 'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.pp_fecha, plan_pagos.pp_plazo, productos.prd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_periodicidad, '+
'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_freccapint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres, pp_comision, pp_gastos, '+
'sbp_descripcion, estatus.est_descripcion '+
'from plan_pagos, estatus, productos, subproducto '+
'where plan_pagos.est_fk = estatus.est_id '+
'and plan_pagos.prd_fk = productos.prd_id '+
'and sbp_id = sbp_fk and est_fk = 1 and pp_id =' + edidpp.Text);



frmsolicitud.pnlplan.visible:= false;
frmsolicitud.inicial;

end;




frmsolicitud.show;
close;

end;
procedure Tfrmtiposolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmtiposolicitud.imgfisicaClick(Sender: TObject);
begin


imgmoral.Visible := false;
lblmoral.Top := lblmoral.Top - 40;
lblmoral.Left := lblmoral.Left - 190;
lblmoral.Caption := 'espere un momento mientras se cargan los catálogos necesarios.';

application.ProcessMessages;
muestra;
end;

procedure Tfrmtiposolicitud.imgfisicaMouseLeave(Sender: TObject);
begin
imgfisica.Width := 90;
imgfisica.Height := 90;

imgfisica.Top := 69;
imgfisica.Left := 304;
end;

procedure Tfrmtiposolicitud.imgfisicaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
imgfisica.Width := 115;
imgfisica.Height := 115;

imgfisica.Top := 54;
imgfisica.Left := 289;
end;

procedure Tfrmtiposolicitud.imgmoralClick(Sender: TObject);
begin

lblmoral.Left := lblmoral.Left - 190;
lblmoral.Caption := 'espere un momento mientras se cargan los catálogos necesarios.';

 application.ProcessMessages;

 application.CreateForm(Tfrmsolicitudmoral, frmsolicitudmoral);
 dm.activa_ds(dm.dsfisicas);

frmsolicitudmoral.envia := 'N';

frmsolicitudmoral.edantiguedad.Text := '';
frmsolicitudmoral.edantiguedadrep.Text := '';
frmsolicitudmoral.edtelcasa.Text := '';
frmsolicitudmoral.edcelular.Text := '';
frmsolicitudmoral.edcel2.Text := '';
frmsolicitudmoral.edtelfam.Text := '';
frmsolicitudmoral.edcorreo.Text := '';

 frmsolicitudmoral.pnlplan.visible:= false;
frmsolicitudmoral.inicial;

frmsolicitudmoral.show;
close;
end;

procedure Tfrmtiposolicitud.imgmoralMouseLeave(Sender: TObject);
begin
imgmoral.Width := 90;
imgmoral.Height := 90;

imgmoral.Top := 213;
imgmoral.Left := 304;
end;

procedure Tfrmtiposolicitud.imgmoralMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
imgmoral.Width := 115;
imgmoral.Height := 115;

imgmoral.Top := 198;
imgmoral.Left := 289;
end;

procedure Tfrmtiposolicitud.Label1Click(Sender: TObject);
begin
close;
end;

end.
