unit duserie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TCrackDBGrid = class (TDBGrid);
  TFrmserie = class(TForm)
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
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnlNuevoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    procedure selecciona;
  public
    { Public declarations }
    envia: string;
  end;

var
  Frmserie: TFrmserie;

implementation

{$R *.dfm}

uses dudm, duactserie, duActProd;

procedure TFrmserie.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
MRect: TRect;
begin
  with TCrackDBGrid (DBGrid1) do MRect:= CellRect (5,Row);
SpeedButton2.Parent := DBGrid1 ;
SpeedButton2.Left := (MRect.Right - SpeedButton2.Width) ;
SpeedButton2.Top := MRect.Top ;
SpeedButton2.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (6,Row);
SpeedButton1.Parent := DBGrid1 ;
SpeedButton1.Left := (MRect.Right - SpeedButton1.Width)-10 ;
SpeedButton1.Top := MRect.Top ;
SpeedButton1.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (7,Row);
SpeedButton3.Parent := DBGrid1 ;
SpeedButton3.Left := (MRect.Right - SpeedButton3.Width)-10 ;
SpeedButton3.Top := MRect.Top ;
SpeedButton3.Height := (MRect.Bottom-MRect.Top);

if envia='M' then
begin
  if DataCol=6 then
  begin
   Column.Visible:=false;
   SpeedButton3.Visible:= false;
  end;
end;

if envia='P' then
begin
  if DataCol=5 then
  begin
   Column.Visible:=false;
   SpeedButton1.Visible:= false;
  end;

  if DataCol=4 then
  begin
   Column.Visible:=false;
   SpeedButton2.Visible:= false;
  end;
end;

  if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00F2F2F2
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

procedure TFrmserie.FormShow(Sender: TObject);
begin
if envia='P' then
begin
  pnlNuevo.Visible:= false;
  pnlImprimir.Visible:= false;
end;
end;

procedure TFrmserie.Image1MouseLeave(Sender: TObject);
begin
 image1.Visible := true;
image2.Visible := false;
end;

procedure TFrmserie.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.Visible := false;
image2.Visible := true;
end;

procedure TFrmserie.Image2Click(Sender: TObject);
begin
dm.filtra(dm.dsserie, 'select * from serie where '+
'ser_serie like ' + quotedstr('%'+ edbusca.text +'%') + ' or '+
'ser_descripcion like ' + quotedstr('%'+ edbusca.text  +'%') + ' or '+
'ser_folio like ' + quotedstr('%'+ edbusca.text  +'%'));

if dm.dsserie.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
end;

procedure TFrmserie.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image1.visible := true;
image2.visible := false;
end;

procedure TFrmserie.pnlNuevoClick(Sender: TObject);
var formactserie: Tfrmactserie;
begin
formactserie:= Tfrmactserie.Create(Application);
  Application.CreateForm(Tfrmactserie, frmactserie);
  dm.dsserie.Append;
  formactserie.envia:='N';
  formactserie.ShowModal;
end;

procedure TFrmserie.SpeedButton2Click(Sender: TObject);
var formactserie: Tfrmactserie;
begin
  formactserie:= Tfrmactserie.Create(Application);
  Application.CreateForm(Tfrmactserie, frmactserie);
  formactserie.envia:='M';
  formactserie.ShowModal;
end;

procedure TFrmserie.SpeedButton3Click(Sender: TObject);
begin
  selecciona;
end;

procedure TFrmserie.selecciona;
begin
  frmactproducto.EdSerie.Text:=dm.dsserieser_serie.Value;
  frmactproducto.EdIdSerie.Text:= dm.dsserieser_id.AsString;
  close;
  //146
end;
end.
