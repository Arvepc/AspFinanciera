unit duPersonas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, frxClass, frxDBSet;

type
  TCrackDBGrid = class (TDBGrid);
  TfrmPersonas = class(TForm)
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
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Fisicas1: TMenuItem;
    Morales1: TMenuItem;
    ComboBox1: TComboBox;
    StaticText1: TStaticText;
    DataEmpresa: TDataSource;
    Label2: TLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlNuevoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Fisicas1Click(Sender: TObject);
    procedure Morales1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pnlImprimirClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlImprimirMouseLeave(Sender: TObject);
    procedure pnlImprimirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo: integer;
    envia: string;
  end;

var
  frmPersonas: TfrmPersonas;
  filtro: String;

implementation

{$R *.dfm}

uses dudm, duactpersonas, duactmorales, duactfisicas, duprincipal;

procedure TfrmPersonas.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  begin
    dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE prs_estatus="ACTIVO"');
  end
  else
  begin
    if ComboBox1.ItemIndex=1 then
      tipo:=1;
    if ComboBox1.ItemIndex=2 then
      tipo:=2;
    if ComboBox1.ItemIndex=3 then
      tipo:=3;
    if ComboBox1.ItemIndex=4 then
      tipo:=4;
    if ComboBox1.ItemIndex=5 then
      tipo:=5;
    if ComboBox1.ItemIndex=6 then
      tipo:=6;
    if ComboBox1.ItemIndex=7 then
      tipo:=7;
    if ComboBox1.ItemIndex=8 then
      tipo:=8;
    if ComboBox1.ItemIndex=9 then
      tipo:=9;
    if ComboBox1.ItemIndex=10 then
      tipo:=10;
    if ComboBox1.ItemIndex=11 then
      tipo:=11;

    dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO"');
  end;
end;

procedure TfrmPersonas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect: TRect;
begin
  with TCrackDBGrid (DBGrid1) do MRect:= CellRect (7,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
SpeedButton2.Parent := DBGrid1 ;
SpeedButton2.Left := (MRect.Right - SpeedButton1.Width) ;
SpeedButton2.Top := MRect.Top ;
SpeedButton2.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
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

procedure TfrmPersonas.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  filtro := 'select * from personas where '+
  '(prs_clave like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
  'prs_nombre like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
  'prs_email like '+ quotedstr('%'+edbusca.text+'%')+ ') and (tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO" )' ;


  if edbusca.text = '' then
  begin
    dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO"');
    dbgrid1.datasource.Enabled:=false;
  end
  else
   begin
    dm.filtra(dm.dsPersonas, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsPersonas.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
   end;
end;

procedure TfrmPersonas.Fisicas1Click(Sender: TObject);
var formactfisicas: Tfrmactfisicas;
begin
  formactfisicas:= Tfrmactfisicas.Create(Application);
  Application.CreateForm(Tfrmactfisicas, frmactfisicas);
  formactfisicas.DataSource1.DataSet:= dm.dsfisicas;
  formactfisicas.DataSource3.DataSet:= dm.dsPersonas;
  dm.dsregimen.Open;
  //dm.filtra(dm.dsregimen, 'select * from regimencapital');
  dm.ConsultaIDPersonas.Open;
  dm.dsPersonas.Open;
  dm.dsPersonas.Append;
  dm.dsfisicas.Open;
  dm.dsfisicas.Append;
  formactfisicas.envia:='N';
  formactfisicas.ShowModal;

end;

procedure TfrmPersonas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPersonas.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
  {dm.permisos(2, dm.id_rol);
  if dm.BtnAgregar=0 then
  pnlNuevo.Visible:=false;

  if dm.BtnEditar=0 then
  SpeedButton2.Visible:=false;

  if dm.BtnEliminar=0 then
  SpeedButton1.Visible:=false;

  if dm.BtnImprimir=0 then
  pnlImprimir.Visible:=false;

  //if dm.BtnExportar=0 then
  //BtnExportar.Visible:=false;  }

  dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO"');

end;

procedure TfrmPersonas.Image1MouseLeave(Sender: TObject);
begin
 image2.Visible := true;
end;

procedure TfrmPersonas.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := false;
  image2.visible := true;
end;

procedure TfrmPersonas.Image2Click(Sender: TObject);
begin
  filtro := 'select * from personas where '+
'prs_clave like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'prs_nombre like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'prs_email like '+ quotedstr('%'+edbusca.text+'%');

///edbusca.Text:= filtro;



if edbusca.text = '' then
    dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO"')
   else
   dm.filtra(dm.dsPersonas, filtro);
end;

procedure TfrmPersonas.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.visible := true;
image2.visible := false;
end;

procedure TfrmPersonas.Morales1Click(Sender: TObject);
var formactmorales: Tfrmactmorales;
begin
  formactmorales:= Tfrmactmorales.Create(Application);
  Application.CreateForm(Tfrmactmorales, frmactmorales);
  formactmorales.DataSource1.DataSet:= dm.dsmorales;
  formactmorales.DataSource3.DataSet:= dm.dsPersonas;
  dm.dsregimen.Open;
  dm.ConsultaIDPersonas.Open;
  dm.dsPersonas.Open;
  dm.dsPersonas.Append;
  dm.dsmorales.Open;
  dm.dsmorales.Append;
  formactmorales.envia:='N';
  formactmorales.ShowModal;
end;

procedure TfrmPersonas.pnlImprimirClick(Sender: TObject);
begin
  frxreport1.ShowReport();
end;

procedure TfrmPersonas.pnlImprimirMouseLeave(Sender: TObject);
begin
  pnlImprimir.Color:=$0034B0F1
end;

procedure TfrmPersonas.pnlImprimirMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlImprimir.Color:=$008FD3F8
end;

procedure TfrmPersonas.pnlNuevoClick(Sender: TObject);
var formactpersonas: Tfrmactpersonas;
begin
  if(lbltitulo.Caption='Clientes') then
    begin
      PopUpMenu1.popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    end;
end;

procedure TfrmPersonas.pnlNuevoMouseLeave(Sender: TObject);
begin
pnlNuevo.Color := $00C08000;
end;

procedure TfrmPersonas.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
pnlNuevo.Color := $00C1C760;
end;

procedure TfrmPersonas.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('¿Está seguro de borrar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.cambia(dm.ds1, 'UPDATE personas SET prs_estatus="INACTIVO" WHERE prs_id='+inttostr(dm.dsPersonasprs_id.Value));
    dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(tipo)+' and prs_estatus="ACTIVO"');
    ShowMessage('Cliente eliminado');
  end;
end;

procedure TfrmPersonas.SpeedButton2Click(Sender: TObject);
var
formactfisicas: Tfrmactfisicas;
formactmorales: Tfrmactmorales;
begin
  if dm.dsPersonastpr_tipopersona.Value='FISICAS' then
    begin
      dm.Activa_DS(dm.dsPrsFisica);
      formactfisicas:= Tfrmactfisicas.Create(Application);
      Application.CreateForm(Tfrmactfisicas, frmactfisicas);
      formactfisicas.envia:='M';
      dm.dsPrsFisica.Open;
      dm.dsPrsFisica.Locate('prs_id',trim(dm.dsPersonasprs_id.AsString),[LoCaseInsensitive]);

      formactfisicas.DataSource1.DataSet:= dm.dsPrsFisica;
      formactfisicas.DataSource3.DataSet:= dm.dsPrsFisica;

      formactfisicas.DateTimePicker1.DateTime:= dm.dsPrsFisicafsc_fecnac.Value;
      formactfisicas.ComboBox1.Text:= dm.dsPrsFisicafsc_edocivil.Value;
      formactfisicas.ComboBox2.Text:= dm.dsPrsFisicafsc_genero.Value;

      formactfisicas.pnlguarda.Caption:='Guardar cambios';
      formactfisicas.Caption:= 'Modificar persona fisica';
      formactfisicas.ShowModal;
    end
  else
    begin
      if dm.dsPersonastpr_tipopersona.Value='MORALES' then
        begin
          dm.Activa_DS(dm.dsPrsMoral);
          formactmorales:= Tfrmactmorales.Create(Application);
          Application.CreateForm(Tfrmactmorales, frmactmorales);
          formactmorales.envia:='M';
          dm.dsPrsMoral.Open;
          dm.dsPrsMoral.Locate('prs_id',trim(dm.dsPersonasprs_id.AsString),[LoCaseInsensitive]);

          formactmorales.DataSource1.DataSet:= dm.dsPrsMoral;
          formactmorales.DataSource3.DataSet:= dm.dsPrsMoral;

          formactmorales.DateTimePicker1.DateTime:= dm.dsPrsMoralmrl_fecconstitucion.Value;
          formactmorales.DateTimePicker2.DateTime:= dm.dsPrsMoralmrl_fecinscripcion.Value;
          formactmorales.DateTimePicker3.DateTime:= dm.dsPrsMoralmrl_rlfecesc.Value;
          formactmorales.ComboBox1.Text:= dm.dsPrsMoralmrl_modoadmon.Value;

          formactmorales.pnlguarda.Caption:='Guardar cambios';
          formactmorales.Caption:='Modificar persona moral';
          formactmorales.ShowModal;
        end;
    end;


end;

end.

