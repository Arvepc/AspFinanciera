unit dumonedas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfrmmonedas = class(TForm)
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
    DBMemo1: TDBMemo;
    XMLDocument1: TXMLDocument;
    Label2: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmonedas: Tfrmmonedas;
  filtro: String;

implementation

{$R *.dfm}

uses dudm, duactusuario, duusuarios, duprincipal;

procedure Tfrmmonedas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmmonedas.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtro := 'select * from monedas where '+
'mnd_id like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'mnd_descripcion like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'mnd_valor like '+ quotedstr('%'+edbusca.text+'%') ;

  if edbusca.text = '' then
  begin
    dm.filtra(dm.dsMonedas, 'select * from monedas');
    dbgrid1.datasource.Enabled:=false;
  end
  else
  begin
    dm.filtra(dm.dsMonedas, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsMonedas.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
  end;
end;

procedure Tfrmmonedas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmmonedas.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
end;

procedure Tfrmmonedas.Image1MouseLeave(Sender: TObject);
begin
   image2.Visible := true;
end;

procedure Tfrmmonedas.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := false;
  image2.visible := true;
end;

procedure Tfrmmonedas.Image2Click(Sender: TObject);
begin
  filtro := 'select * from monedas where '+
'mnd_id like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'mnd_descripcion like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'mnd_valor like '+ quotedstr('%'+edbusca.text+'%') ;



if edbusca.text = '' then
    dm.filtra(dm.dsMonedas, 'select * from monedas')
   else
   dm.filtra(dm.dsMonedas, filtro);
end;


procedure Tfrmmonedas.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := true;
  image2.visible := false;
end;

end.
