unit timeline;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrmtimeline = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    lblfecrevision: TLabel;
    lblfechainicio: TLabel;
    Label3: TLabel;
    imgaprueba: TImage;
    lbltituloaproba: TLabel;
    imgcancela: TImage;
    Image4: TImage;
    lblfechaanalisis: TLabel;
    lbltitulorechazado: TLabel;
    lblfechacancela: TLabel;
    lbltitulodispersion: TLabel;
    lblfechaaprobacion: TLabel;
    lblfechadispersion: TLabel;
    Panel4: TPanel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    btnmuestra: TSpeedButton;
    Panel6: TPanel;
    Label5: TLabel;
    lbltitulo: TLabel;
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtimeline: Tfrmtimeline;

implementation

{$R *.dfm}

procedure Tfrmtimeline.Label5Click(Sender: TObject);
begin
close;
end;

end.
