unit duactactividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB;

type
  Tfrmactactividades = class(TForm)
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    DBEdit4: TDBEdit;
    procedure pnlguardaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    envia: char;
  end;

var
  frmactactividades: Tfrmactactividades;

implementation

{$R *.dfm}

uses dudm;

procedure Tfrmactactividades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmactactividades.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure Tfrmactactividades.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure Tfrmactactividades.pnlguardaClick(Sender: TObject);
var
rebote: boolean;
begin
  if(DBEdit1.text =  '') then
  begin
      showmessage('Ingrese el codigo');
      rebote := true;
  end
  else
  begin
    if(DBEdit2.text= '' )then
    begin
      showmessage('Ingrese el título');
      rebote := true;
    end
    else
    begin
      if(DBEdit3.text= '' )then
      begin
        showmessage('Ingrese el tipo');
        rebote:= true;
      end
      else
      begin
        if DBMemo1.Text='' then
        begin
          showmessage('Ingrese una descripción');
          rebote:= true;
        end;
      end;
    end;
  end;

  if rebote=false then
  begin
  DBedit1.Text:= dm.formatotexto(DBedit1.Text);
  DBedit2.Text:= dm.formatotexto(DBedit2.Text);
  DBedit3.Text:= dm.formatotexto(DBedit3.Text);
  DBMemo1.Text:= dm.formatotexto(DBMemo1.Text);

    if envia='N' then
    begin
      dm.dsActividades.Post;
      showMessage('Actividad agregada');
      close;
    end;

    if envia='M' then
    begin
      dm.dsActividades.Edit;
      dm.dsActividades.ApplyUpdates;
      showMessage('Actividad modificada');
      close;
    end;
  end;

end;

procedure Tfrmactactividades.pnlguardaMouseLeave(Sender: TObject);
begin
  pnlguarda.color := $00906028;
end;

procedure Tfrmactactividades.pnlguardaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlguarda.color := $00C08000;
end;

end.
