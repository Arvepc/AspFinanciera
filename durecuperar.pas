unit durecuperar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP;

type
  TFrmrecuperar = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    pnlingresa: TPanel;
    Panel8: TPanel;
    lblcodigo: TLabel;
    lbltitulo: TLabel;
    edemail: TEdit;
    edcodigo: TEdit;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    pnlmensaje: TPanel;
    Panel6: TPanel;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    Memo1: TMemo;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure pnlingresaClick(Sender: TObject);
    procedure pnlingresaMouseLeave(Sender: TObject);
    procedure pnlingresaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6Click(Sender: TObject);
    procedure Panel6MouseLeave(Sender: TObject);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmrecuperar: TFrmrecuperar;

implementation

{$R *.dfm}

uses duinicio, dudm;

procedure TFrmrecuperar.FormShow(Sender: TObject);
begin
  //frminicio.Visible:= false;
end;

procedure TFrmrecuperar.Label3Click(Sender: TObject);
begin
  close;
  frminicio.Close;
end;

procedure TFrmrecuperar.Panel6Click(Sender: TObject);
begin
  close;
end;

procedure TFrmrecuperar.Panel6MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure TFrmrecuperar.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure TFrmrecuperar.pnlingresaClick(Sender: TObject);
begin
if pnlingresa.Caption='Enviar código' then
begin
  if edemail.text='' then
  begin
    showMessage('Ingrese un correo');
  end
  else
  begin
    dm.filtra(DM.DS1, 'select * from usuario where usr_email = ' + quotedstr(edemail.text));
    if (dm.ds1.recordcount > 0) then
      begin
        idMessage.Clear;
        idMessage.FromList.EMailAddresses := 'alfredo.mcorona@gmail.com';
        idMessage.Recipients.EMailAddresses := edemail.Text;
        idMessage.Subject := 'Recuperación de contraseña';
        //memo1.Lines.Add('Ingrese el siguiente codigo en el sistema ASP para recuperar la contraseña');
        frminicio.generarClave;
        memo1.Lines.Add('Código: '+frminicio.Clave);
        idMessage.Body.AddStrings(memo1.Lines);


        idSMTP.Username := 'alfredo.mcorona@gmail.com';
        idSMTP.Password := 'Mitzi_96';

        try
          idSMTP.Connect;
          idSMTP.Send(IdMessage);
          showmessage('Un código ha sido enviado a su correo');
          edemail.Enabled:= false;
          lblcodigo.Visible:= true;
          edcodigo.Visible:= true;
          label1.Visible:= false;
          pnlingresa.Caption:= 'Recuperar contraseña';
        except
          showmessage('Ocurrio un error al intentar enviar el correo.');
        end;
    end
    else
      showMessage('El correo electronico no corresponde a un usuario registrado');
  end;
end
else
begin
  if edcodigo.Text=frminicio.Clave then
  begin
    close;
    frminicio.cambia_password;
  end
  else
    showMessage('Codigo no valido');

end;
end;

procedure TFrmrecuperar.pnlingresaMouseLeave(Sender: TObject);
begin
  pnlingresa.Color := $00C08000;
end;

procedure TFrmrecuperar.pnlingresaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlingresa.Color := $00C1C760;
end;

end.
