unit dubancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrmbancos = class(TForm)
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
    Label2: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbancos: Tfrmbancos;
  filtro: String;

implementation

{$R *.dfm}

uses dudm, duprincipal;

procedure Tfrmbancos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmbancos.edbuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      filtro := 'select * from bancos where '+
'bnc_nombrecorto like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'bnc_descricpion like '+ quotedstr('%'+edbusca.text+'%');


  if edbusca.text = '' then
  begin
     dm.filtra(dm.dsBancos, 'select * from bancos');
     dbgrid1.datasource.Enabled:=false;
  end
  else
  begin
    dm.filtra(dm.dsBancos, filtro);
    dbgrid1.datasource.Enabled:=true;
    if dm.dsBancos.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;
  end;

end;

procedure Tfrmbancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmbancos.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
end;

procedure Tfrmbancos.Image1MouseLeave(Sender: TObject);
begin
  image2.Visible := true;
end;

procedure Tfrmbancos.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := false;
  image2.visible := true;
end;

procedure Tfrmbancos.Image2Click(Sender: TObject);
begin
    filtro := 'select * from bancos where '+
'bnc_nombrecorto like '+ quotedstr('%'+edbusca.text+'%') + ' or ' +
'bnc_descricpion like '+ quotedstr('%'+edbusca.text+'%');


if edbusca.text = '' then
    dm.filtra(dm.dsBancos, 'select * from bancos')
   else
    dm.filtra(dm.dsBancos, filtro);
end;

procedure Tfrmbancos.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  image1.visible := true;
  image2.visible := false;
end;

end.
