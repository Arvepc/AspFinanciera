unit duactcentrostrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Imaging.pngimage;

type
  TFrmactcentrostrabajo = class(TForm)
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    DBEdit9: TDBEdit;
    edcp: TEdit;
    Image2: TImage;
    Label11: TLabel;
    lblcolonia: TLabel;
    lblmunestado: TLabel;
    edidcp: TEdit;
    procedure Panel3Click(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
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
    envia:char;
  end;

var
  Frmactcentrostrabajo: TFrmactcentrostrabajo;

implementation

{$R *.dfm}

uses dudm, ducp;

procedure TFrmactcentrostrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{if envia='N' then
  begin}
    dm.dsCentroTrabajo.Cancel;
  ///end;
end;

procedure TFrmactcentrostrabajo.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lblcolonia.caption := dm.colonia;
  lblmunestado.caption := dm.estado;
  edcp.text := dm.cp;
  edidcp.text := dm.idcp;
end;

procedure TFrmactcentrostrabajo.FormShow(Sender: TObject);
begin
  if envia='M' then
  begin
    dm.filtra(dm.dscp, 'select * from cp where cp.cp_id = ' +dm.dsCentroTrabajocp_fk.AsString);
    dm.colonia:= dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
    dm.estado:= dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
    dm.cp:= dm.dscpcp_codigopostal.asstring;
    dm.idcp:= dm.dscpcp_id.AsString;
    lblcolonia.caption := dm.colonia;
    lblmunestado.caption := dm.estado;
    edcp.text := dm.cp;
    edidcp.text := dm.idcp;
  end
  else
   begin
    dm.colonia:= '';
    dm.estado:='';
    dm.cp:='';
    dm.idcp:= '';
   end;
end;

procedure TFrmactcentrostrabajo.Image2Click(Sender: TObject);
begin

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
application.createform(Tfrmcp, frmcp) ;
dm.colonia:= '';
dm.estado:='';
dm.cp:='';
dm.idcp:= '';
frmcp.envia:= 'C';
frmcp.show;

 //dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
{lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
edcp.text := dm.dscpcp_codigopostal.asstring;
edidcp.text := dm.dscpcp_id.asstring;}
end;

procedure TFrmactcentrostrabajo.Panel3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmactcentrostrabajo.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure TFrmactcentrostrabajo.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure TFrmactcentrostrabajo.pnlguardaClick(Sender: TObject);
var
rebote: boolean;
begin
  rebote:= false;

  if(DBEdit1.text =  '') then
  begin
      showmessage('Ingrese la clave');
      rebote := true;
  end
  else
  begin
    if(DBEdit2.text= '' )then
    begin
      showmessage('Ingrese la descripción');
      rebote := true;
    end
    else
    begin
      if(edcp.text= '' )then
      begin
        showmessage('Ingrese el código postal');
        rebote:= true;
      end
    end;
  end;

  if rebote=false then
  begin
    DBedit1.Text:= dm.formatotexto(DBedit1.Text);
    DBedit2.Text:= dm.formatotexto(DBedit2.Text);
    DBedit4.Text:= dm.formatotexto(DBedit4.Text);
    DBedit5.Text:= dm.formatotexto(DBedit5.Text);
    DBedit6.Text:= dm.formatotexto(DBedit6.Text);
    DBedit7.Text:= dm.formatotexto(DBedit7.Text);
    DBedit8.Text:= dm.formatotexto(DBedit8.Text);
    if envia='N' then
    begin
      dm.dsCentrotrabajocp_fk.Value:=StrToInt(dm.idcp);
      dm.dsCentrotrabajo.Post;

      showMessage('Centro de trabajo agregado');
      close;
    end;

    if envia='M' then
    begin
      dm.dsCentrotrabajo.Edit;
      dm.dsCentrotrabajocp_fk.Value:=StrToInt(dm.idcp);
      dm.dsCentrotrabajo.ApplyUpdates;
      showMessage('Centro de trabajo modificado');
      close;
    end;
  end;
end;

procedure TFrmactcentrostrabajo.pnlguardaMouseLeave(Sender: TObject);
begin
  pnlguarda.color := $00906028;
end;

procedure TFrmactcentrostrabajo.pnlguardaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlguarda.color := $00C08000;
end;

end.
