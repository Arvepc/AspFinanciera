unit duactividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
TCrackDBGrid = class (TDBGrid);
  TFrmactividades = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel4: TPanel;
    lblTitulo: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    DataEmpresa: TDataSource;
    DataSource2: TDataSource;
    Label2: TLabel;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlNuevoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pnlImprimirClick(Sender: TObject);
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlImprimirMouseLeave(Sender: TObject);
    procedure pnlImprimirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmactividades: TFrmactividades;
  filtro: String;

implementation

{$R *.dfm}

uses dudm, duactactividades, duprincipal;

procedure TFrmactividades.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  MRect : TRect ;
begin
with TCrackDBGrid (DBGrid1) do MRect:= CellRect (5,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
SpeedButton2.Parent := DBGrid1 ;
SpeedButton2.Left := (MRect.Right - SpeedButton1.Width) ;
SpeedButton2.Top := MRect.Top ;
SpeedButton2.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (6,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
SpeedButton1.Parent := DBGrid1 ;
SpeedButton1.Left := (MRect.Right - SpeedButton1.Width)-10 ;
SpeedButton1.Top := MRect.Top ;
SpeedButton1.Height := (MRect.Bottom-MRect.Top);


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

frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure TFrmactividades.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtro := 'select * from actividades where '+
'act_codigo like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'act_titulo like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'act_tipo like '+ quotedstr('%'+edbusca.text+'%');

  if edbusca.text = '' then
  begin
    dm.filtra(dm.dsActividades, 'SELECT * FROM actividades');
    dbgrid1.datasource.Enabled:=false;
  end
  else
   begin
    dm.filtra(dm.dsActividades, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsActividades.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
   end;
end;

procedure TFrmactividades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmactividades.FormShow(Sender: TObject);
begin
  dm.dsActividades.Active:= false;
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
  dm.permisos(7, dm.id_rol);
  if dm.BtnAgregar=0 then
  pnlNuevo.Visible:=false;

  if dm.BtnEditar=0 then
  SpeedButton2.Visible:=false;

  if dm.BtnEliminar=0 then
  SpeedButton1.Visible:=false;

  if dm.BtnImprimir=0 then
  pnlImprimir.Visible:=false;

  //if dm.BtnExportar=0 then
  //BtnExportar.Visible:=false;
end;

procedure TFrmactividades.Image1MouseLeave(Sender: TObject);
begin
  image2.Visible := true;
end;

procedure TFrmactividades.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := false;
  image2.visible := true;
end;

procedure TFrmactividades.Image2Click(Sender: TObject);
begin
  filtro := 'select * from actividades where '+
'act_codigo like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'act_titulo like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'act_tipo like '+ quotedstr('%'+edbusca.text+'%') ;

if edbusca.text = '' then
  begin
    dm.filtra(dm.dsActividades, 'select * from actividades');
    dbgrid1.datasource.Enabled:=false;
  end
  else
   begin
    dm.filtra(dm.dsActividades, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsActividades.IsEmpty then
     label2.Visible:=true
    else
      label2.Visible:=false;
   end
end;

procedure TFrmactividades.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := true;
  image2.visible := false;
end;

procedure TFrmactividades.pnlImprimirClick(Sender: TObject);
begin
  frxreport1.ShowReport();
end;

procedure TFrmactividades.pnlImprimirMouseLeave(Sender: TObject);
begin
  pnlImprimir.Color:=$0034B0F1
end;

procedure TFrmactividades.pnlImprimirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlImprimir.Color:=$008FD3F8
end;

procedure TFrmactividades.pnlNuevoClick(Sender: TObject);
begin
  application.CreateForm(Tfrmactactividades, frmactactividades);

  dm.dsActividades.Open;
  dm.dsActividades.Append;
  frmactactividades.envia := 'N';
  frmactactividades.showmodal;
end;

procedure TFrmactividades.pnlNuevoMouseLeave(Sender: TObject);
begin
  pnlNuevo.Color := $00C08000;
end;

procedure TFrmactividades.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlNuevo.Color := $00C1C760;
end;

procedure TFrmactividades.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('¿Está seguro de borrar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dm.dsActividades.Delete;
end;

procedure TFrmactividades.SpeedButton2Click(Sender: TObject);
begin

  application.CreateForm(Tfrmactactividades, frmactactividades);
  frmactactividades.envia := 'M';
  frmactactividades.Caption:='Modificar actividades';
  frmactactividades.pnlguarda.Caption:= 'Guardar cambios';
  frmactactividades.showmodal;

end;

end.
