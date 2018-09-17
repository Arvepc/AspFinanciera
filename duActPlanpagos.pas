unit duactplanpagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Samples.Spin;

type
  Tfrmactplanpagos = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    pnlguarda: TPanel;
    dtsprod: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbxestatus: TComboBox;
    dt1: TDateTimePicker;
    DataSource1: TDataSource;
    eddescripcion: TEdit;
    edid: TEdit;
    Label1: TLabel;
    edMonto: TEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    dblckprod: TDBLookupComboBox;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    dbtiva: TDBEdit;
    dbtord: TDBEdit;
    dbtmor: TDBEdit;
    cbxfrecpagointeres: TComboBox;
    cbxfreccapital: TComboBox;
    cbxfreccapinteres: TComboBox;
    cbxtipointeres: TComboBox;
    cbxPeriodicidad: TComboBox;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    sePlazo: TSpinEdit;
    procedure pnlguardaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxfreccapinteresChange(Sender: TObject);
    procedure cbxfreccapitalChange(Sender: TObject);
    procedure cbxfrecpagointeresChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure dtsprodDataChange(Sender: TObject; Field: TField);
    procedure cbxPeriodicidadChange(Sender: TObject);
  private
    { Private declarations }
    procedure agrega;
    procedure modifica;
    procedure combos;
  public
    { Public declarations }
    envia : char;
  end;

var
  frmactplanpagos: Tfrmactplanpagos;

implementation

{$R *.dfm}

uses dudm, duplanpagos;



procedure Tfrmactplanpagos.combos;
begin
    cbxtipointeres.Text := dm.dsProdprd_tipoInteres.asstring;

    if dm.dsprodprd_freccapint.value = 0.25 then cbxfreccapinteres.itemindex := 0;
    if dm.dsprodprd_freccapint.value = 0.50 then cbxfreccapinteres.itemindex := 1;
    if dm.dsprodprd_freccapint.value = 1    then cbxfreccapinteres.itemindex := 2;
    if dm.dsprodprd_freccapint.value = 2    then cbxfreccapinteres.itemindex := 3;
    if dm.dsprodprd_freccapint.value = 3    then cbxfreccapinteres.itemindex := 4;
    if dm.dsprodprd_freccapint.value = 6    then cbxfreccapinteres.itemindex := 5;
    if dm.dsprodprd_freccapint.value = 12   then  cbxfreccapinteres.itemindex := 6;

    if dm.dsprodprd_frecpagcap.value = 0.25 then cbxfreccapital.itemindex := 0;
    if dm.dsprodprd_frecpagcap.value = 0.50 then cbxfreccapital.itemindex := 1;
    if dm.dsprodprd_frecpagcap.value = 1 then cbxfreccapital.itemindex := 2;
    if dm.dsprodprd_frecpagcap.value = 2 then cbxfreccapital.itemindex := 3;
    if dm.dsprodprd_frecpagcap.value = 3 then cbxfreccapital.itemindex := 4;
    if dm.dsprodprd_frecpagcap.value = 6 then cbxfreccapital.itemindex := 5;
    if dm.dsprodprd_frecpagcap.value = 12 then  cbxfreccapital.itemindex := 6;

    if dm.dsprodprd_frecpagint.value = 0.25 then cbxfrecpagointeres.itemindex := 0;
    if dm.dsprodprd_frecpagint.value = 0.50 then cbxfrecpagointeres.itemindex := 1;
    if dm.dsprodprd_frecpagint.value = 1    then cbxfrecpagointeres.itemindex := 2;
    if dm.dsprodprd_frecpagint.value = 2    then cbxfrecpagointeres.itemindex := 3;
    if dm.dsprodprd_frecpagint.value = 3    then cbxfrecpagointeres.itemindex := 4;
    if dm.dsprodprd_frecpagint.value = 6    then cbxfrecpagointeres.itemindex := 5;
    if dm.dsprodprd_frecpagint.value = 12   then  cbxfrecpagointeres.itemindex := 6;

    if dm.dsProdprd_periodicidad.Value = 0.25 then cbxPeriodicidad.itemindex := 0;
    if dm.dsprodprd_periodicidad.Value = 0.50 then cbxPeriodicidad.itemindex := 1;
    if dm.dsprodprd_periodicidad.Value = 1    then cbxPeriodicidad.itemindex := 2;
    if dm.dsprodprd_periodicidad.Value = 2    then cbxPeriodicidad.itemindex := 3;
    if dm.dsprodprd_periodicidad.Value = 3    then cbxPeriodicidad.itemindex := 4;
    if dm.dsprodprd_periodicidad.Value = 6    then cbxPeriodicidad.itemindex := 5;
    if dm.dsprodprd_periodicidad.Value = 12   then cbxPeriodicidad.itemindex := 6;

 end;

procedure Tfrmactplanpagos.modifica;
begin

dm.cambia(dm.ds1, 'update plan_pagos set ' +
'pp_fecha = '+ quotedstr(formatdatetime('yyyy-mm-dd', dt1.date)) + ', '+
'pp_descripcion = ' +quotedstr(uppercase(trim(eddescripcion.text))) + ', '+
'pp_estatus = ' + quotedstr(uppercase(trim(cbxestatus.text)))+ ', '+
'pp_plazo = ' + seplazo.text +', '+
'pp_tord = ' + dbtord.text + ', '+
'pp_tmor = ' + dbtmor.text + ', '+
'pp_tiva = ' + dbtiva.text +', '+
'pp_frmintmor = ' + quotedstr('')+', '+
'pp_frmintord = ' + quotedstr('')+', '+
'pp_freccapint = ' + DBEdit13.text + ', '+
'pp_frecpagcap = '+ DBEdit14.text +', ' +
'pp_frecpagint = ' + DBEdit15.text +', '+
'prd_fk = ' + inttostr(dblckprod.keyvalue)+', ' +
'pp_tipointeres = '+quotedstr(cbxtipointeres.text)+
' ,pp_periodicidad = '+DBEdit1.text +
' , pp_monto = '+edMonto.Text+
' , pp_comision = '+dm.dsProdprd_comision.AsString+
' , pp_gastos = '+dm.dsProdprd_gastos.AsString+
' where pp_id = ' + edid.text );

dm.activa_ds(dm.dsplan_pagos);
close;

end;


procedure Tfrmactplanpagos.Panel3Click(Sender: TObject);
begin
Close;
end;

procedure Tfrmactplanpagos.agrega;
begin



dm.cambia(dm.ds1, 'insert into plan_pagos (pp_fecha, pp_descripcion, pp_estatus, pp_plazo, pp_tord, pp_tmor, pp_tiva, '+
' pp_frmintmor, pp_frmintord, pp_freccapint, pp_frecpagcap, pp_frecpagint, prd_fk,pp_tipointeres,pp_periodicidad,pp_monto,pp_comision,pp_gastos)' +
' values (' +
quotedstr(formatdatetime('yyyy-mm-dd', dt1.date)) +', '+
quotedstr(uppercase(trim(eddescripcion.text))) + ', ' +
quotedstr('ACTIVO') + ', ' +
seplazo.text + ', ' +
dbtord.text + ', ' +
dbtmor.text + ', ' +
dbtiva.text + ', ' +
quotedstr('')+ ', ' +
quotedstr('')+ ', ' +
DBEdit13.text + ', ' +
DBEdit14.text + ', '+
DBEdit15.text + ', ' +
inttostr(dblckprod.keyvalue)+ ','+
quotedstr(cbxtipointeres.text)+','+
DBEdit1.text + ', ' +
edMonto.text+
','+dm.dsProdprd_comision.AsString+
','+dm.dsProdprd_gastos.AsString+')');

dm.activa_ds(dm.dsplan_pagos);
close;

end;


procedure Tfrmactplanpagos.cbxfreccapinteresChange(Sender: TObject);
begin
case cbxfreccapinteres.itemindex of
0: DBEdit13.text := '0.25';
1: DBEdit13.text := '0.5';
2: DBEdit13.text := '1';
3: DBEdit13.text := '2';
4: DBEdit13.text := '3';
5: DBEdit13.text := '6';
6: DBEdit13.text := '12';
end;
end;

procedure Tfrmactplanpagos.cbxfreccapitalChange(Sender: TObject);
begin
case cbxfreccapital.itemindex of
0: DBEdit14.text := '0.25';
1: DBEdit14.text := '0.5';
2: DBEdit14.text := '1';
3: DBEdit14.text := '2';
4: DBEdit14.text := '3';
5: DBEdit14.text := '6';
6: DBEdit14.text := '12';
end;
end;

procedure Tfrmactplanpagos.cbxfrecpagointeresChange(Sender: TObject);
begin
 case cbxfrecpagointeres.itemindex of
0: DBEdit15.text := '0.25';
1: DBEdit15.text := '0.5';
2: DBEdit15.text := '1';
3: DBEdit15.text := '2';
4: DBEdit15.text := '3';
5: DBEdit15.text := '6';
6: DBEdit15.text := '12';
end;
end;

procedure Tfrmactplanpagos.cbxPeriodicidadChange(Sender: TObject);
begin
 case cbxperiodicidad.itemindex of
0: DBEdit1.text := '0.25';
1: DBEdit1.text := '0.5';
2: DBEdit1.text := '1';
3: DBEdit1.text := '2';
4: DBEdit1.text := '3';
5: DBEdit1.text := '6';
6: DBEdit1.text := '12';
 end;

end;

procedure Tfrmactplanpagos.dtsprodDataChange(Sender: TObject; Field: TField);
begin
if not dm.dsProd.IsEmpty then
begin
  sePlazo.MaxValue := dm.dsProdprd_PlazoMax.AsInteger;
  sePlazo.MinValue := dm.dsProdprd_plazoMin.AsInteger;
  if envia = 'N' then
    sePlazo.Value := sePlazo.MinValue
      else
       sePlazo.Value:= dm.dsplan_pagospp_plazo.AsInteger;
  combos;
end;

end;

procedure Tfrmactplanpagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmplanpagos.AlphaBlend := false;
frmplanpagos.AlphaBlendValue := 225;
action := cafree;
end;

procedure Tfrmactplanpagos.FormShow(Sender: TObject);
begin
combos;
end;

procedure Tfrmactplanpagos.pnlguardaClick(Sender: TObject);
begin
if envia = 'N' then
agrega;

if envia = 'M' then
Modifica;



end;

end.
