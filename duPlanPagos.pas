unit duplanpagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ComCtrls;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmplanpagos = class(TForm)
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    pnlbusca: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    dtsplanpagos_listado: TDataSource;
    Panel6: TPanel;
    Label1: TLabel;
    btnmuestra: TSpeedButton;
    Panel7: TPanel;
    dblckestatus: TDBLookupComboBox;
    imgdown: TImage;
    dsestatus: TZQuery;
    dtsestatus: TDataSource;
    imgup: TImage;
    chktodoestatus: TCheckBox;
    Estatus: TLabel;
    dsestatusest_id: TIntegerField;
    dsestatusest_descripcion: TWideStringField;
    chktodoproducto: TCheckBox;
    dblckproducto: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cbxplazo: TComboBox;
    chktodoplazo: TCheckBox;
    pnlright: TPanel;
    btnbusca: TPanel;
    chktodofecha: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dt2: TDateTimePicker;
    dt1: TDateTimePicker;
    dsproducto: TZQuery;
    dtsproducto: TDataSource;
    dsproductoprd_id: TIntegerField;
    dsproductoprd_descripcion: TWideStringField;
    imgrefresh: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlNuevoClick(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnmodificaClick(Sender: TObject);
    procedure btnmuestraClick(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure imgdownClick(Sender: TObject);
    procedure imgupClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnbuscaClick(Sender: TObject);
    procedure chktodoestatusClick(Sender: TObject);
    procedure chktodoproductoClick(Sender: TObject);
    procedure chktodoplazoClick(Sender: TObject);
    procedure chktodofechaClick(Sender: TObject);
    procedure imgrefreshClick(Sender: TObject);
    procedure edbuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btneliminaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure busca;
    procedure elimina;
  public
    { Public declarations }
  end;

var
  frmplanpagos: Tfrmplanpagos;
  filtro : string;
  rebote : boolean;

implementation

{$R *.dfm}

uses dudm, duactplanpagos, duplanpagosdetalle, dutiposolicitud, dumensaje;



procedure Tfrmplanpagos.elimina;
begin
  dm.cambia(dm.ds1, 'update plan_pagos set est_fk = 2 where pp_id =' + dm.dsplan_pagospp_id.AsString);
  edbusca.Text := '';
  busca;
end;

procedure Tfrmplanpagos.busca;
begin

if edbusca.Text = '' then
  dm.Activa_DS(dm.dsplan_pagos)
  else
  dm.filtra(dm.dsplan_pagos, 'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.pp_fecha, plan_pagos.pp_plazo, productos.prd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_periodicidad, '+
'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_freccapint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres, pp_comision, pp_gastos, '+
'sbp_descripcion, estatus.est_descripcion '+
'from plan_pagos, estatus, productos, subproducto '+
'where plan_pagos.est_fk = estatus.est_id '+
'and plan_pagos.prd_fk = productos.prd_id '+
'and sbp_id = sbp_fk and est_fk  <> 2 and pp_descripcion like ' + quotedstr ('%' + edbusca.Text + '%'));
end;


procedure Tfrmplanpagos.btnbuscaClick(Sender: TObject);
begin
filtro := 'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.pp_fecha, plan_pagos.pp_plazo, productos.prd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_periodicidad, '+
'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_freccapint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres, pp_comision, pp_gastos, '+
'sbp_descripcion, estatus.est_descripcion '+
'from plan_pagos, estatus, productos, subproducto '+
'where plan_pagos.est_fk = estatus.est_id '+
'and plan_pagos.prd_fk = productos.prd_id '+
//and est_descripcion <> 'CANCELADO'
'and sbp_id = sbp_fk '  ;

rebote := false;

if (chktodoestatus.Checked = false) and (dblckestatus.Text = '') then
begin
  rebote := true;
  showmessage('debe indicar un estatus.');
end;



if (chktodoproducto.Checked = false) and (dblckproducto.Text = '') then
begin
  rebote := true;
  showmessage('debe indicar un producto.');
end;

if (chktodoplazo.Checked = false) and (cbxplazo.Text = '') then
begin
  rebote := true;
  showmessage('debe indicar un plazo.');
end;

     if rebote = false then
        begin

             if (dblckestatus.Text <> '')then
                 filtro  := filtro + ' and estatus.est_descripcion = ' + quotedstr(dblckestatus.Text) + ' ';

             if (dblckproducto.Text <> '')then
                 filtro  := filtro + ' and productos.prd_id  = ' + inttostr(dblckproducto.KeyValue) + ' ';

            if cbxplazo.Text <> '' then
            filtro := filtro +  ' and pp_plazo = ' + cbxplazo.Text;

            if (chktodofecha.Checked = false) then
                filtro  := filtro  + ' and pp_fecha between '+ quotedstr(formatdatetime('yyyy-mm-dd', dt1.Date)) + ' and ' +  quotedstr(formatdatetime('yyyy-mm-dd', dt2.Date));





         dm.filtra(dm.dsplan_pagos, filtro);       imgrefresh.Visible := true;
        end;

end;

procedure Tfrmplanpagos.btneliminaClick(Sender: TObject);
begin
application.CreateForm(Tfrmmensaje, frmmensaje);

frmmensaje.lblmensaje.Caption := '¿Confirme que desea eliminar el Plan de Pagos ' + #13 + dm.dsplan_pagospp_descripcion.AsString +'?' ;

if frmmensaje.showmodal = mrOk then
elimina;

end;

procedure Tfrmplanpagos.btnmodificaClick(Sender: TObject);
begin
   application.CreateForm(Tfrmactplanpagos, frmactplanpagos);
 frmplanpagos.AlphaBlend := true;
  frmplanpagos.AlphaBlendValue := 55;

frmactplanpagos.envia := 'M';
dm.activa_ds(dm.dsprod);

frmactplanpagos.edid.text := dm.dsplan_pagospp_id.asstring;
frmactplanpagos.eddescripcion.text  :=  dm.dsplan_pagospp_descripcion.asstring ;
frmactplanpagos.dt1.date := dm.dsplan_pagospp_fecha.value;
frmactplanpagos.edMonto.Text := dm.dsplan_pagospp_monto.AsString;
frmactplanpagos.cbxestatus.text := dm.dsplan_pagosest_descripcion.asstring;

frmactplanpagos.seplazo.text := dm.dsplan_pagospp_plazo.asstring;
frmactplanpagos.dblckprod.keyvalue:= dm.dsplan_pagosprd_fk.value;
frmactplanpagos.cbxtipointeres.Text := dm.dsplan_pagospp_tipointeres.Value;


frmactplanpagos.showmodal;
end;

procedure Tfrmplanpagos.btnmuestraClick(Sender: TObject);
begin
      application.CreateForm(Tfrmplanpagosdetalle, frmplanpagosdetalle);
      frmplanpagosdetalle.show;


end;

procedure Tfrmplanpagos.chktodoestatusClick(Sender: TObject);
begin
if chktodoestatus.Checked = false then
   dblckestatus.Enabled := true
   else
   begin
     dblckestatus.KeyValue := -1;
     dblckestatus.Enabled := false;
   end;
end;

procedure Tfrmplanpagos.chktodofechaClick(Sender: TObject);
begin
if (chktodofecha.Checked = false) then
begin
dt1.Enabled := true;
dt2.Enabled := true;
end
else
begin
dt1.Enabled := false;
dt2.Enabled := false;

end;
end;

procedure Tfrmplanpagos.chktodoplazoClick(Sender: TObject);
begin
if chktodoplazo.Checked = false then
   cbxplazo.Enabled := true
   else
   begin
     cbxplazo.text := '';
     cbxplazo.Enabled := false;
   end;
end;

procedure Tfrmplanpagos.chktodoproductoClick(Sender: TObject);
begin
if chktodoproducto.Checked = false then
   dblckproducto.Enabled := true
   else
   begin
     dblckproducto.KeyValue := -1;
     dblckproducto.Enabled := false;
   end;

end;

procedure Tfrmplanpagos.DBGrid1CellClick(Column: TColumn);
begin
if dm.dsplan_pagosest_descripcion.AsString = 'ASIGNADO' then
btnelimina.Visible := false
else
btnelimina.visible := true;

end;

procedure Tfrmplanpagos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (DBGrid1) do MRect:= CellRect (6,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
btnmodifica.Parent := DBGrid1 ;
btnmodifica.Left := (MRect.Right - btnmodifica.Width) -30 ;
btnmodifica.Top := MRect.Top ;
btnmodifica.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (7,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
btnelimina.Parent := DBGrid1 ;
btnelimina.Left := (MRect.Right - btnelimina.Width)-30 ;
btnelimina.Top := MRect.Top ;
btnelimina.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
btnmuestra.Parent := DBGrid1 ;
btnmuestra.Left := (MRect.Right - btnmuestra.Width)-30 ;
btnmuestra.Top := MRect.Top ;
btnmuestra.Height := (MRect.Bottom-MRect.Top);
  //



  if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00F2F2F2//$00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;
 if (Sender as TDBGrid).SelectedRows.CurrentRowSelected then
         begin
          (Sender as TDBGrid).Canvas.Font.Color := clWhite;
          (Sender as TDBGrid).Canvas.Brush.Color := clRed
         end;
(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

end;

procedure Tfrmplanpagos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if dm.dsplan_pagosest_descripcion.AsString = 'ASIGNADO' then
btnelimina.Visible := false
else
btnelimina.visible := true;
end;

procedure Tfrmplanpagos.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
if dm.dsplan_pagosest_descripcion.AsString = 'ASIGNADO' then
btnelimina.Visible := false
else
btnelimina.visible := true;
end;

procedure Tfrmplanpagos.edbuscaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   busca;
end;

procedure Tfrmplanpagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmplanpagos.FormShow(Sender: TObject);
begin


dm.Activa_DS(dsestatus);

dm.Activa_DS(dsproducto);


dt1.Date := date - 30;
dt2.Date := date;
end;

procedure Tfrmplanpagos.Image2Click(Sender: TObject);
begin
busca;
end;

procedure Tfrmplanpagos.imgupClick(Sender: TObject);
begin
imgup.Visible := false;
imgdown.Visible := true;
pnlbusca.Height := 88;
end;

procedure Tfrmplanpagos.imgdownClick(Sender: TObject);
begin
//abro el panel de busquedas
imgup.Visible := true;
imgdown.Visible := false;
pnlbusca.Height := 224;
end;

procedure Tfrmplanpagos.imgrefreshClick(Sender: TObject);
begin

dm.filtra(dm.dsplan_pagos, 'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.pp_fecha, plan_pagos.pp_plazo, productos.prd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_periodicidad, '+
'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_freccapint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres, pp_comision, pp_gastos, '+
'sbp_descripcion, estatus.est_descripcion '+
'from plan_pagos, estatus, productos, subproducto '+
'where plan_pagos.est_fk = estatus.est_id '+
'and plan_pagos.prd_fk = productos.prd_id '+
'and est_fk <> 2 '+
'and sbp_id = sbp_fk ' );

end;

procedure Tfrmplanpagos.Label1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmplanpagos.Panel7Click(Sender: TObject);
begin
//de aqui debo mandar a llamar el form de tipo de solicitud y enviar como param el id del plan de pago s

if dm.dsplan_pagosest_descripcion.AsString = 'ASIGNADO' then
 begin
     application.CreateForm(Tfrmmensaje, frmmensaje);
     frmmensaje.lblmensaje.Caption := 'Este plan de pagos se encuentra en estatus Asignado,'+ #13+' No puede utilizarse para una nueva solicitud.';
     frmmensaje.pnlcerrar.visible:= false;
     frmmensaje.pnlguarda.Caption := 'Aceptar';
     frmmensaje.ShowModal;
 end
 else
 begin
 application.CreateForm(Tfrmtiposolicitud, frmtiposolicitud);
            frmtiposolicitud.edidpp.text := dm.dsplan_pagospp_id.asstring;

            frmtiposolicitud.showmodal;
 end;






end;

procedure Tfrmplanpagos.pnlNuevoClick(Sender: TObject);
begin
  application.CreateForm(Tfrmactplanpagos, frmactplanpagos);
  frmactplanpagos.dt1.Date := Now;

  frmplanpagos.AlphaBlend := true;
  frmplanpagos.AlphaBlendValue := 55;

  dm.activa_ds(dm.dsprod);
//dm.dsplan_pagos.Append;
  frmactplanpagos.cbxfrecpagointeres.Enabled:= False;
  frmactplanpagos.cbxfreccapital.Enabled:= False;
  frmactplanpagos.cbxfreccapinteres.Enabled:= False;
  frmactplanpagos.cbxPeriodicidad.Enabled:= False;
  frmactplanpagos.cbxtipointeres.Enabled := False;


  frmactplanpagos.envia := 'N';
  frmactplanpagos.showmodal;
end;

procedure Tfrmplanpagos.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
pnlnuevo.Color := $00C08000;
end;

end.
