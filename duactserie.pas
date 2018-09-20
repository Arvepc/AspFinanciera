unit duactserie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB;

type
  Tfrmactserie = class(TForm)
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Memo1: TMemo;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    procedure Panel3Click(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    envia: string;
  end;
            //1
var
  frmactserie: Tfrmactserie;

implementation

{$R *.dfm}

uses dudm;

procedure Tfrmactserie.FormShow(Sender: TObject);
begin
if envia='M' then
  begin
    Memo1.Text:= dm.dsserieser_descripcion.Value;
    Caption:= 'Modificar serie';
    pnlGuarda.Caption:='Guardar cambios';
  end;
end;

procedure Tfrmactserie.Panel3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmactserie.pnlguardaClick(Sender: TObject);
begin
if envia='N' then
begin
  dm.dsserieser_descripcion.Value:= Memo1.Text;
  dm.dsserie.Post;
  showMessage('Serie agregada');
  close;
end
  else
  if envia='M' then
  begin
    dm.dsserie.Edit;
    dm.dsserieser_descripcion.Value:= Memo1.Text;
    dm.dsserie.ApplyUpdates;

    showMessage('Serie modificada');
    close;
  end;
end;

end.
