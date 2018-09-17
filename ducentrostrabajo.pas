unit ducentrostrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TCrackDBGrid = class (TDBGrid);
  Tfrmcentrostrabajo = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    Panel4: TPanel;
    lblTitulo: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    frxReport1: TfrxReport;
    DataEmpresa: TDataSource;
    Label2: TLabel;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlNuevoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pnlImprimirClick(Sender: TObject);
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
  frmcentrostrabajo: Tfrmcentrostrabajo;
  filtro:String;

implementation

{$R *.dfm}

uses dudm, duactcentrostrabajo, duprincipal;

procedure Tfrmcentrostrabajo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmcentrostrabajo.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtro := 'select * from centrotrabajo where '+
'cd_clave like'+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'ct_descripcion like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'ct_telefono like '+ quotedstr('%'+edbusca.text+'%') ;

  if edbusca.text = '' then
  begin
    dm.filtra(dm.dsCentrotrabajo, 'select * from centrotrabajo');
    dbgrid1.datasource.Enabled:=false;
  end
   else
   begin
   dm.filtra(dm.dsCentrotrabajo, filtro);
   dbgrid1.datasource.Enabled:=true;
   if dm.dscentrotrabajo.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
   end;
end;

procedure Tfrmcentrostrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmcentrostrabajo.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
end;

procedure Tfrmcentrostrabajo.Image1MouseLeave(Sender: TObject);
begin
  image2.Visible := true;
end;

procedure Tfrmcentrostrabajo.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  image1.visible := false;
  image2.visible := true;
end;

procedure Tfrmcentrostrabajo.Image2Click(Sender: TObject);
begin
  filtro := 'select * from centrotrabajo where '+
'cd_clave like'+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'ct_descripcion like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'ct_telefono like '+ quotedstr('%'+edbusca.text+'%') ;


if edbusca.text = '' then
    dm.filtra(dm.dsCentrotrabajo, 'select * centrotrabajo')
   else
   dm.filtra(dm.dsCentrotrabajo, filtro);
end;

procedure Tfrmcentrostrabajo.Image2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
image1.visible := true;
image2.visible := false;
end;

procedure Tfrmcentrostrabajo.pnlImprimirClick(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure Tfrmcentrostrabajo.pnlImprimirMouseLeave(Sender: TObject);
begin
  pnlImprimir.Color:=$0034B0F1
end;

procedure Tfrmcentrostrabajo.pnlImprimirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlImprimir.Color:=$008FD3F8
end;

procedure Tfrmcentrostrabajo.pnlNuevoClick(Sender: TObject);
var
frmactcentrostrabajo: Tfrmactcentrostrabajo;
begin
    frmactcentrostrabajo:= Tfrmactcentrostrabajo.Create(Application);
    Application.CreateForm(Tfrmactcentrostrabajo, frmactcentrostrabajo);
    dm.dsCentrotrabajo.Open;
    dm.dsCentrotrabajo.Append;
    frmactcentrostrabajo.envia:='N';
    frmactcentrostrabajo.ShowModal;
end;

procedure Tfrmcentrostrabajo.pnlNuevoMouseLeave(Sender: TObject);
begin
  pnlnuevo.Color := $00C08000;
end;

procedure Tfrmcentrostrabajo.pnlNuevoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlnuevo.Color := $00C1C760;
end;

procedure Tfrmcentrostrabajo.SpeedButton1Click(Sender: TObject);
begin
    if MessageDlg('¿Está seguro de borrar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dm.dsCentrotrabajo.Delete;
end;

procedure Tfrmcentrostrabajo.SpeedButton2Click(Sender: TObject);
var
frmactcentrostrabajo: Tfrmactcentrostrabajo;
begin
    frmactcentrostrabajo:= Tfrmactcentrostrabajo.Create(Application);
    Application.CreateForm(Tfrmactcentrostrabajo, frmactcentrostrabajo);
    frmactcentrostrabajo.envia:='M';
    frmactcentrostrabajo.Caption:='Modificar centro de trabajo';
    frmactcentrostrabajo.pnlguarda.Caption:= 'Guardar cambios';

    frmactcentrostrabajo.ShowModal;
end;

end.
