unit dumesacontrolcredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfrmmesacontrolcredito = class(TForm)
    Label2: TLabel;
    edfolio: TEdit;
    pnlobservaciones: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pnlguarda: TPanel;
    mmobserva: TMemo;
    Label3: TLabel;
    Image4: TImage;
    Panel1: TPanel;
    ednombre: TEdit;
    Label4: TLabel;
    edid: TEdit;
    Label1: TLabel;
    dtrev: TDateTimePicker;
    procedure pnlguardaClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure edfolioKeyPress(Sender: TObject; var Key: Char);
    procedure Panel3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmesacontrolcredito: Tfrmmesacontrolcredito;

implementation

{$R *.dfm}

uses dudm, dulistasolicitudes;

procedure Tfrmmesacontrolcredito.edfolioKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13)  then
begin
dm.filtra(dm.dssolicitudes, 'select * from solicitudes where sol_folio = '+ edfolio.Text) ;
if dm.dssolicitudessol_clinombre.AsString = '' then
 showmessage('No se encontraron datos para el folio indicado, utilize el boton de busqueda...')
 else
 begin
      if (dm.dssolicitudessol_estatus.asstring = trim('EN PROCESO')) then
          begin
          ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
          edid.Text := dm.dssolicitudessol_id.AsString;
          mmobserva.SetFocus;
           pnlguarda.Visible := true;
          end
          else
         begin
         showmessage('La solicitud del folio: ' + edfolio.Text + ' ya se encuentra en estatus ' + dm.dssolicitudessol_estatus.AsString);
          pnlguarda.Visible := false;
         end;
 end;
end;
end;

procedure Tfrmmesacontrolcredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmmesacontrolcredito.Image4Click(Sender: TObject);
begin
// aqui deb mandar a llaar el form de solicitud
application.CreateForm(Tfrmlistasolicitudes, frmlistasolicitudes);
frmlistasolicitudes.envia := 'MC';
frmlistasolicitudes.show;
 frmmesacontrolcredito.Hide;
end;

procedure Tfrmmesacontrolcredito.Panel3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmmesacontrolcredito.pnlguardaClick(Sender: TObject);
begin
//se supone que aqui tengo que cambiar el estatus de la solicitud

dm.cambia(dm.ds1, 'update solicitudes set sol_fecrev= '+
quotedstr(formatdatetime('yyyy-mm-dd', dtrev.Date)) + ', sol_observarev = ' +
quotedstr(mmobserva.Text) +', sol_estatus =' + quotedstr('EN ANALISIS') + ' where sol_id = ' + edid.text);

showmessage('Se ha registrado la revision de la solicitud ' + edfolio.Text);
close;
end;

end.
