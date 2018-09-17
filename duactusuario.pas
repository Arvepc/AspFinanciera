unit duactusuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfrmactusuario = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    lblpass: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    dblckrol: TDBLookupComboBox;
    dtsrol: TDataSource;
    lblcolonia: TLabel;
    Image2: TImage;
    lblmunestado: TLabel;
    edcp: TEdit;
    lblconfirma: TLabel;
    edconfirma: TEdit;
    edidcp: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlguardaClick(Sender: TObject);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    envia : char;
  end;

var
  frmactusuario: Tfrmactusuario;

implementation

{$R *.dfm}
  uses
  Hashes, dudm, duusuarios, ducp;
procedure Tfrmactusuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmusuarios.AlphaBlendValue := 225;
action := cafree;
end;

procedure Tfrmactusuario.FormShow(Sender: TObject);
begin
if envia = 'M' then
   begin
   dm.filtra(dm.dscp, 'select * from cp where cp.cp_id = ' + dm.dsusuariocp_fk.asstring) ;
   lblcolonia.caption := dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
   lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
   edcp.text := dm.dscpcp_codigopostal.asstring;
   edidcp.text :=  dm.dsusuariocp_fk.asstring ;
   dm.filtra(dm.dsrol, 'select * from roles');
   dblckrol.keyvalue := dm.dsusuariorls_fk.Value;
   //dm.filtra(dm.dsrol, 'select * from roles');

   //oculto la contraseña
   lblpass.visible:= false;
   lblconfirma.visible:= false;
   edconfirma.visible:= false;
   dbedit3.visible:= false;

   end;



end;

procedure Tfrmactusuario.Image2Click(Sender: TObject);
begin

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
application.createform(Tfrmcp, frmcp) ;
frmcp.envia:= 'U';
frmcp.show;

end;

procedure Tfrmactusuario.Panel3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmactusuario.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure Tfrmactusuario.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure Tfrmactusuario.pnlguardaClick(Sender: TObject);
var
rebote: boolean;
begin
  rebote:= false;
  if(DBEdit4.text =  '') then
    begin
      showmessage('Ingrese el nombre');
      rebote := true;
    end
  else
  begin
    if(DBEdit5.text= '')then
    begin
      showmessage('Ingrese el puesto');
      rebote := true;
    end
    else
    begin
      if(DBEdit6.text= '')then
      begin
        showmessage('Ingrese un correo');
        rebote:= true;
      end
      else
      begin
        if(DBEdit7.text= '')then
        begin
          showmessage('Ingrese el teléfono');
          rebote:= true;
        end
        else
        begin
          if(DBEdit8.text= '') then
          begin
            showmessage('Ingrese la calle');
            rebote := true;
          end
          else
          begin
            if(DBEdit9.text= '')then
            begin
              showmessage('Ingrese el numero exterior');
              rebote := true;
            end
          else
            begin
              if (edidcp.text=  '')then
              begin
                showmessage('Debe indicar un codigo postal del listado de codigos postales');
                rebote:= true;
              end
              else
              begin
                if(dblckrol.text= '')then
                begin
                  showmessage('Debe indicar un rol de usuario.');
                  rebote:= true;
                end
                else
                begin
                  if(DBEdit2.text= '')then
                  begin
                    showmessage('Ingrese el nombre de usuario');
                    rebote:= true;
                  end
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

  if envia = 'N' then
  begin
    dm.dsusuariousr_fecpswd.value := date; //esto podria ir en un trigger before insert;
    if (dbedit3.text <> edconfirma.text) then
    begin
      showmessage('Confirme el password ingresado');
      rebote := true;
    end
    else
    begin
      if (length(edconfirma.text) < 8 )then
      begin
        showmessage('el password debe tener como mínimo 8 caracteres.');
        rebote := true;
      end;
    end;

  end;

  dm.filtra(DM.DS1, 'select * from usuario where usr_email= ' + quotedstr(dbedit6.text));
  if (dm.ds1.recordcount > 0) then
  begin
    showmessage('El correo ya esta asociado con otro usuario');
    rebote := true;
  end;

  if rebote=false then
  begin
    if dbedit10.text = '' then
      dm.dsusuariousr_noint.value := '0';
    DBedit1.Text:= dm.formatotexto(DBedit1.Text);
    DBedit2.Text:= dm.formatotexto(DBedit2.Text);
    DBedit4.Text:= dm.formatotexto(DBedit4.Text);
    DBedit5.Text:= dm.formatotexto(DBedit5.Text);
    DBedit6.Text:= dm.formatotexto(DBedit6.Text);
    DBedit7.Text:= dm.formatotexto(DBedit7.Text);
    DBedit8.Text:= dm.formatotexto(DBedit8.Text);

    if envia='N' then
    begin
      dm.dsusuariocp_fk.value := dm.dscpcp_id.value;
      dm.dsusuariorls_fk.value := dblckrol.keyvalue;

      dm.dsusuario.FieldByName('usr_pswd').Value :=  CalcHash2(dbedit3.Text, haMD5);
      dm.dsusuario.FieldByName('usr_ultintcnx').Value := formatdatetime('yyyy/mm/dd tt', Now);
      dm.dsusuario.post;
      showMessage('Usuario agregado');
      close;
    end;

    if envia='M' then
    begin
      dm.dsusuario.Edit;
      dm.dsusuariocp_fk.value := dm.dscpcp_id.value;
      dm.dsusuariorls_fk.value := dblckrol.keyvalue;

      //dm.dsusuario.FieldByName('usr_pswd').Value :=  CalcHash2(dbedit3.Text, haMD5);
      dm.dsusuario.FieldByName('usr_ultintcnx').Value := formatdatetime('yyyy/mm/dd tt', Now);
      dm.dsusuario.ApplyUpdates;
      showMessage('Usuario modificado');
      close;
    end;
  end;

end;

procedure Tfrmactusuario.pnlguardaMouseLeave(Sender: TObject);
begin
pnlguarda.color := $00906028;
end;

procedure Tfrmactusuario.pnlguardaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
pnlguarda.color := $00C08000;
end;

end.
