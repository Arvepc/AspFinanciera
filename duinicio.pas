unit duinicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.DateUtils,
  System.ImageList, Vcl.ImgList;

type
  Tfrminicio = class(TForm)
    pnlmensaje: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    pnlingresa: TPanel;
    Panel8: TPanel;
    edusuario: TEdit;
    lblusuario: TLabel;
    edpass: TEdit;
    lblpassword: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    lbltitulo: TLabel;
    ImageList1: TImageList;
    Panel7: TPanel;
    btnAccesar: TButton;
    PnlMsj: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure pnlingresaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlingresaMouseLeave(Sender: TObject);
    procedure pnlingresaClick(Sender: TObject);
    procedure edpassKeyPress(Sender: TObject; var Key: Char);
    procedure edpassEnter(Sender: TObject);
    procedure edpassExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edusuarioEnter(Sender: TObject);
    procedure edusuarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PnlMsjClick(Sender: TObject);
  private
    { Private declarations }
    procedure entra;
    procedure guarda_password;
    procedure inicio;
    procedure ingresa;
  //  procedure nuevo_password;
  public
    IdUsr:Integer;
    entrar: Integer;
    Intentos: Integer;
    Clave: String;

    procedure generarClave;
    procedure cambia_password;
    { Public declarations }
  end;

var
  frminicio: Tfrminicio;

implementation

{$R *.dfm}

uses duprincipal, dudm, Hashes, durecuperar;


procedure Tfrminicio.generarClave;
const
  Chars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ!?/*+-';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to 6 do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Clave:= S;
end;

procedure Tfrminicio.guarda_password;
var
nvopass: string;
begin

   if (edusuario.text <> edpass.text) then
   showmessage('El password no coincide, vuelva a intentarlo')
   else
   begin
       dm.cambia(dm.ds2, 'update usuario set usr_pswd = ' + quotedstr(CalcHash2(edpass.Text, haMD5))+
         ', usr_fecpswd= ' + quotedstr(formatdatetime('yyyy/mm/dd', date)) +
          ' where usr_id =' + dm.ds1.fieldbyname('usr_id').asString);
       ShowMessage('Cambio de contraseña exitoso, guarde su contrseña en un lugar seguro');
       inicio;
   end;

end;


procedure Tfrminicio.cambia_password;
begin
   dm.filtra(dm.ds1, 'select * from usuario where usr_email= "'+frmrecuperar.edemail.Text+'"');
   lbltitulo.caption := 'Cambio de Password';
   pnlmsj.Caption:= 'Por seguridad debe cambiar su password cada 6 meses';
   pnlingresa.caption := 'Cambiar Password';
   lblusuario.caption := 'Nuevo password';
   lblpassword.caption := 'Confirmar password';
   edusuario.passwordchar := '*';
   edusuario.TextHint:= 'Password';
   edusuario.Text:= '';
   edpass.Text:='';
   edpass.TextHint:='Confirmar password';
end;




procedure Tfrminicio.entra;
begin
   dm.id_usuario := dm.ds1.fieldbyname('usr_id').value ;
   dm.usuario := dm.ds1.fieldbyname('usr_usuario').value;
   dm.id_rol := dm.ds1.FieldByName('rls_fk').Value;
   dm.cambia(dm.ds2,'update usuario set usr_intcnx=0 where usr_id =' + dm.ds1.fieldbyname('usr_id').asString);
   close;
   frminicio.ModalResult := mrOk;
end;


procedure Tfrminicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if dm.dsusuario.IsEmpty then
dm.ZConnection1.Disconnect;
end;

procedure Tfrminicio.FormShow(Sender: TObject);
begin
    intentos:= 0
end;

procedure Tfrminicio.edusuarioEnter(Sender: TObject);
begin
if (pnlingresa.caption = 'Ingresar') then
    lblusuario.Caption := 'Usuario'
    else
    lblusuario.Caption := 'Password';
end;

procedure Tfrminicio.edusuarioExit(Sender: TObject);
begin
if edusuario.Text='' then
 lblusuario.Caption := '';
end;

procedure Tfrminicio.edpassEnter(Sender: TObject);
begin
if (pnlingresa.caption = 'Ingresar') then
    lblpassword.Caption := 'Password'
    else
    lblpassword.Caption := 'Confirmar password';

end;

procedure Tfrminicio.edpassExit(Sender: TObject);
begin
if edpass.Text= '' then
 lblpassword.Caption := '';

end;

procedure Tfrminicio.edpassKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if (pnlingresa.caption = 'Ingresar') then
      ingresa
    else
      guarda_password;
  end;
end;

procedure Tfrminicio.Label3Click(Sender: TObject);
begin
close;
end;


procedure Tfrminicio.ingresa;
var
npass : string;
ahora : string;
intentoTime: String;
begin
//bueno aqui hay que ver

//Paso 1: buscar el usuario

dm.filtra(DM.DS1, 'select * from usuario where usr_usuario = ' + quotedstr(edusuario.text));
IdUsr:=dm.ds1.fieldbyname('usr_id').AsInteger;
ahora:= copy(formatdatetime('dd/mm/yyyy tt', Now), 1, 16);
intentoTime:= copy(formatdatetime('dd/mm/yyyy tt', dm.ds1.fieldbyname('usr_ultintcnx').value), 1, 16);
//ShowMessage(IntToStr(MinutesBetween(strtodatetime(ahora),strtodatetime(intentoTime))));

if (dm.ds1.recordcount > 0) then
    begin
       //si existe, hay que verificar que no este logueado en otra maquina
       if (dm.ds1.fieldbyname('usr_conectado').value = 1) then
            showmessage('Usuario conectado en otro equipo.')
            else
            begin
              if(MinutesBetween(strtodatetime(ahora),strtodatetime(intentoTime))>15)then
              begin
                if (dm.ds1.fieldbyname('usr_intcnx').value < 5) then
                begin
                  //no esta conectado. validamos la clave
                  npass := CalcHash2(edpass.Text, haMD5);

                  if (npass = dm.ds1.fieldbyname('usr_pswd').value) then
                    begin //pasa
                      //hay que checar la fecha de registro del ultimo password
                      if (DaysBetween( dm.ds1.fieldbyname('usr_fecpswd').value , date) > 60) then     //si es mayor a 60
                        cambia_password //debe cambiar su contraseña
                      else
                        entra;
                    end
                    else
                    begin
                      intentos:=dm.ds1.fieldbyname('usr_intcnx').value;
                      intentos := intentos + 1;
                      dm.cambia(dm.ds2,'update usuario set usr_intcnx='+IntToStr(intentos)+' where usr_id =' + dm.ds1.fieldbyname('usr_id').asString);
                      if (intentos>=3) then
                        begin
                          dm.cambia(dm.ds2,'update usuario set usr_ultintcnx='+quotedstr(formatdatetime('yyyy/mm/dd tt', Now))+' where usr_id =' + dm.ds1.fieldbyname('usr_id').asString);
                          showMessage('Ha superado el maximo de intentos, vuelva a intentarlo mas tarde');
                        end
                      else
                      begin
                        showmessage('El password no es correcto, favor de verificarlo.');
                      end;
                    end;
                end
                else
                begin
                    showMessage('Cuenta bloqueada, contacte al administrador para recuperar su cuenta');
                end;
              end
              else
              begin
                  showMessage('Se ha excedido el numero de intentos, vuelva a intentarlo mas tarde');
              end;

            end;
    end
    else
    showmessage('El usuario indicado no existe, favor de verificarlo.');
end;



procedure Tfrminicio.inicio;
begin
   lbltitulo.caption := 'Ingreso a usuarios';
   pnlmsj.Caption:= '¿Olvidó su password?';
   pnlingresa.caption := 'Ingresar';
   lblusuario.caption := 'Usuario';
   lblpassword.caption := 'Password';
   edusuario.passwordchar :='0';
   edusuario.TextHint:= 'usuario';
   edusuario.Text:= '';
   edpass.Text:='';
   edpass.TextHint:='Password';
end;

procedure Tfrminicio.pnlingresaClick(Sender: TObject);
begin
  if (pnlingresa.caption = 'Ingresar') then
    ingresa
  else
    guarda_password;

end;

procedure Tfrminicio.pnlingresaMouseLeave(Sender: TObject);
begin
pnlingresa.Color := $00C08000;
end;

procedure Tfrminicio.pnlingresaMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
pnlingresa.Color := $00C1C760;
end;

procedure Tfrminicio.PnlMsjClick(Sender: TObject);
begin
  if (pnlingresa.caption = 'Ingresar') then
  begin
    application.createForm(Tfrmrecuperar, frmrecuperar);
    frmrecuperar.ShowModal;
  end;
end;

end.
