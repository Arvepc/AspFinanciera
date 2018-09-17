unit duusuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmusuarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edbusca: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    Label2: TLabel;
    DataSource2: TDataSource;
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Panel7MouseLeave(Sender: TObject);
    procedure Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmusuarios: Tfrmusuarios;
    filtro : string;
implementation

{$R *.dfm}

uses duactusuario, dudm, duprincipal;

procedure Tfrmusuarios.Button1Click(Sender: TObject);
begin

frmusuarios.AlphaBlend := true;

end;

procedure Tfrmusuarios.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tfrmusuarios.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtro := 'select * from usuario where '+
'usr_usuario like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'usr_nombre like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'usr_email like '+ quotedstr('%'+edbusca.text+'%') ;



  if edbusca.text = '' then
  begin
    dm.filtra(dm.dsusuario, 'select * from usuario');
    dbgrid1.datasource.Enabled:=false;
  end
  else
   begin
    dm.filtra(dm.dsusuario, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsusuario.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
   end;
end;

procedure Tfrmusuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmusuarios.FormShow(Sender: TObject);
begin

TStringGrid(DBGrid1).DefaultRowHeight := 25;//https://www.clubdelphi.com/foros/showthread.php?t=49710
end;

procedure Tfrmusuarios.Image1MouseLeave(Sender: TObject);
begin
image2.Visible := true;
end;

procedure Tfrmusuarios.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.visible := false;
image2.visible := true;
end;

procedure Tfrmusuarios.Image2Click(Sender: TObject);
begin

filtro := 'select * from usuario where '+
'usr_usuario like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'usr_nombre like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'usr_email like '+ quotedstr('%'+edbusca.text+'%') ;



if edbusca.text = '' then
    dm.filtra(dm.dsusuario, 'select * from usuario')
   else
   dm.filtra(dm.dsusuario, filtro);
end;

procedure Tfrmusuarios.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.visible := true;
image2.visible := false;
end;

procedure Tfrmusuarios.Panel6Click(Sender: TObject);
begin
application.CreateForm(Tfrmactusuario, frmactusuario);


frmusuarios.AlphaBlend := true;
frmusuarios.AlphaBlendValue := 55;
dm.activa_ds(dm.dsrol);

dm.dsusuario.Open;
dm.dsusuario.Append;
frmactusuario.envia := 'N';
frmactusuario.showmodal;

end;

procedure Tfrmusuarios.Panel6MouseLeave(Sender: TObject);
begin
panel6.Color := $00C08000;
end;

procedure Tfrmusuarios.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
panel6.Color := $00C1C760;
end;

procedure Tfrmusuarios.Panel7Click(Sender: TObject);
begin

//frxReport1.ShowReport();
end;

procedure Tfrmusuarios.Panel7MouseLeave(Sender: TObject);
begin
  Panel7.Color:=$0034B0F1
end;

procedure Tfrmusuarios.Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel7.Color:=$008FD3F8
end;

procedure Tfrmusuarios.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('¿Está seguro de borrar el registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.cambia(dm.ds1, 'UPDATE usuario SET usr_estatus="INACTIVO" WHERE usr_id='+inttostr(dm.dsusuariousr_id.Value));
    dm.filtra(dm.dsusuario, 'SELECT * FROM usuario WHERE usr_estatus="ACTIVO"');
  end;
end;

procedure Tfrmusuarios.SpeedButton2Click(Sender: TObject);
begin
application.CreateForm(Tfrmactusuario, frmactusuario);

frmusuarios.AlphaBlend := true;
frmusuarios.AlphaBlendValue := 55;
frmactusuario.Caption:='Editar usuario';
frmactusuario.pnlguarda.Caption:='Guardar cambios';

frmactusuario.envia := 'M';

frmactusuario.showmodal;
end;

end.
