unit dudocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TCrackDBGrid = class (TDBGrid);
  TFrmdocumentos = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    lblTitulo: TLabel;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    pnlCancelar: TPanel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pnlNuevoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure pnlCancelarClick(Sender: TObject);
    procedure pnlCancelarMouseLeave(Sender: TObject);
    procedure pnlCancelarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmdocumentos: TFrmdocumentos;

implementation

{$R *.dfm}

uses dudm, duprincipal;

procedure TFrmdocumentos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    var
MRect : TRect ;
begin
with TCrackDBGrid (DBGrid1) do MRect:= CellRect (3,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
SpeedButton2.Parent := DBGrid1 ;
SpeedButton2.Left := (MRect.Right - SpeedButton1.Width) ;
SpeedButton2.Top := MRect.Top ;
SpeedButton2.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (4,Row);
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

procedure TFrmdocumentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmdocumentos.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
end;

procedure TFrmdocumentos.pnlCancelarClick(Sender: TObject);
begin
  edit1.Text:='';
  CheckBox1.Checked:=false;
  pnlnuevo.Caption:='Agregar documento';
  pnlcancelar.Visible:=false;
  dbgrid1.Enabled:=true;
end;

procedure TFrmdocumentos.pnlCancelarMouseLeave(Sender: TObject);
begin
  pnlCancelar.Color:=clRed;
end;

procedure TFrmdocumentos.pnlCancelarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlCancelar.Color:=$008080FF;
end;

procedure TFrmdocumentos.pnlNuevoClick(Sender: TObject);
var
DocId: Integer;
check: Integer;
begin
  if edit1.Text='' then
    ShowMessage('Ingrese el nombre del documento')
  else
  begin
    Edit1.Text:= dm.formatotexto(Edit1.Text);
    if checkbox1.Checked=true then
      check:=1
    else
      check:=0;

    if pnlnuevo.Caption='Agregar documento'then
    begin
      dm.filtra(dm.ds2, 'SELECT max(tpd_id) as maximo FROM tipo_doc');
      DocId:= dm.ds2.FieldByName('maximo').AsInteger;
      DocId:= DocId+1;
      dm.cambia(dm.ds1, 'INSERT INTO tipo_doc VALUES ('+IntToStr(DocId)+', "'+edit1.Text+'", 1, '+IntToStr(check)+')');
      dm.Activa_DS(dm.dsdocumentos);
      ShowMessage('Documento agregado');
      edit1.Text:='';
    end;
    if pnlnuevo.Caption='Guardar cambios'then
    begin
      dm.cambia(dm.ds1, 'UPDATE tipo_doc SET tpd_descripcion="'+edit1.Text+'", tpd_docvalor='+IntToStr(check)+' WHERE tpd_id='+IntToStr(dm.dsdocumentostpd_id.Value));
      ShowMessage('Documento modificado');
      edit1.Text:='';
      pnlnuevo.Caption:='Agregar documento';
      pnlcancelar.Visible:=false;
      dbgrid1.Enabled:=true;
      CheckBox1.Checked:=false;
      dm.Activa_DS(dm.dsdocumentos);
    end;
  end;
end;

procedure TFrmdocumentos.pnlNuevoMouseLeave(Sender: TObject);
begin
  pnlNuevo.Color := $00C08000;
end;

procedure TFrmdocumentos.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlNuevo.Color := $00C1C760;
end;

procedure TFrmdocumentos.SpeedButton1Click(Sender: TObject);
begin
  dm.dsdocumentos.Locate('tpd_id',trim(dm.dsdocumentostpd_id.AsString),[LoCaseInsensitive]);
  if MessageDlg('¿Está seguro de borrar el tipo de documento seleccionado?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.cambia(dm.ds1, 'UPDATE tipo_doc SET tpd_estatus=0 WHERE tpd_id='+IntToStr(dm.dsdocumentostpd_id.Value));
    dm.filtra(dm.dsdocumentos, 'SELECT * FROM tipo_doc WHERE tpd_estatus=1');
    ShowMessage('Documento eliminado');
  end;
end;

procedure TFrmdocumentos.SpeedButton2Click(Sender: TObject);
begin
  dm.dsdocumentos.Locate('tpd_id',trim(dm.dsdocumentostpd_id.AsString),[LoCaseInsensitive]);
  Edit1.Text:=dm.dsdocumentostpd_descripcion.Value;
  if dm.dsdocumentostpd_docvalor.Value=1 then
      CheckBox1.Checked:=true
    else
      CheckBox1.Checked:=false;
  pnlnuevo.Caption:='Guardar cambios';
  pnlcancelar.Visible:= true;
  dbgrid1.Enabled:=false;
end;

end.
