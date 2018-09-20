unit dumensaje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrmmensaje = class(TForm)
    Image1: TImage;
    lblmensaje: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pnlguarda: TPanel;
    Button1: TButton;
    procedure pnlguardaClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensaje: Tfrmmensaje;

implementation

{$R *.dfm}

procedure Tfrmmensaje.Panel3Click(Sender: TObject);
begin
ModalResult := mrCancel;
end;

procedure Tfrmmensaje.pnlguardaClick(Sender: TObject);
begin
ModalResult := mrOK;
end;

end.
