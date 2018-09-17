unit duplanpagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmplanpagos = class(TForm)
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    dtsplanpagos_listado: TDataSource;
    Panel6: TPanel;
    Label1: TLabel;
    btnmuestra: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlNuevoClick(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnmodificaClick(Sender: TObject);
    procedure btnmuestraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplanpagos: Tfrmplanpagos;

implementation

{$R *.dfm}

uses dudm, duactplanpagos, duplanpagosdetalle;

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
frmactplanpagos.cbxestatus.text := dm.dsplan_pagospp_estatus.asstring;

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

procedure Tfrmplanpagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmplanpagos.Label1Click(Sender: TObject);
begin
close;
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
