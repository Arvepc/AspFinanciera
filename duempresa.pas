unit duempresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Jpeg, Vcl.Imaging.pngimage;

type
  TFrmempresa = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    pnlEditar: TPanel;
    pnlCancelar: TPanel;
    Panel4: TPanel;
    lblTitulo: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    Button1: TButton;
    OpenPic1: TOpenPictureDialog;
    pnlGuardar: TPanel;
    Image2: TImage;
    lblmunestado: TLabel;
    lblcolonia: TLabel;
    Label34: TLabel;
    edcp: TEdit;
    edidcp: TEdit;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure pnlEditarClick(Sender: TObject);
    procedure pnlGuardarClick(Sender: TObject);
    procedure pnlCancelarClick(Sender: TObject);
    procedure pnlEditarMouseLeave(Sender: TObject);
    procedure pnlEditarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CargarImagen();
    procedure FormShow(Sender: TObject);
    procedure pnlGuardarMouseLeave(Sender: TObject);
    procedure pnlGuardarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure pnlCancelarMouseLeave(Sender: TObject);
    procedure pnlCancelarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmempresa: TFrmempresa;

implementation

{$R *.dfm}

uses dudm, ducp;

procedure TFrmempresa.Button1Click(Sender: TObject);
var
  Dir: String;
begin
  OpenPic1.Execute();
  Dir:= OpenPic1.FileName;
  Image1.Picture.LoadFromFile(Dir);
end;

procedure TFrmempresa.CargarImagen;
var
  imgstream:TStream;
  imgJPG:TJpegImage;
begin
  dm.dsEmpresa.Open;
  imgstream := dm.dsEmpresa.CreateBlobStream(dm.dsEmpresa.FieldByName('emp_logo'), bmread);
  imgJPG:= TJPEGImage.Create;
  try
    imgJPG.LoadFromStream(imgstream);
    image1.Picture.Assign(imgJPG);
  finally
    imgstream.Free;
    imgJPG.Free
  end;

end;

procedure TFrmempresa.DataSource1DataChange(Sender: TObject; Field: TField);
var
Jpeg:TJpegImage;
Corriente:TMemoryStream;
begin
end;

procedure TFrmempresa.FormShow(Sender: TObject);
begin
  CargarImagen;
  dm.filtra(dm.dscp, 'select * from cp where cp.cp_id = ' + dm.dsEmpresacp_fk.AsString);
   lblcolonia.caption := dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
   lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
   edcp.text := dm.dscpcp_codigopostal.asstring;
   edidcp.text :=  dm.dsEmpresacp_fk.AsString;
end;

procedure TFrmempresa.Image2Click(Sender: TObject);
begin
  dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
  application.createform(Tfrmcp, frmcp) ;
  frmcp.envia:= 'E';
  frmcp.show;
end;

procedure TFrmempresa.pnlCancelarClick(Sender: TObject);
begin
  DBEdit1.Enabled:=false;
  DBEdit2.Enabled:=false;
  DBEdit3.Enabled:=false;
  DBEdit4.Enabled:=false;
  DBEdit5.Enabled:=false;
  DBEdit6.Enabled:=false;
  DBEdit7.Enabled:=false;
  DBEdit8.Enabled:=false;
  Button1.Enabled:=false;
  edcp.Enabled:= false;
  image2.Enabled:= false;
  pnlGuardar.Visible:=false;
  pnlCancelar.Visible:=false;
  pnlEditar.Visible:=true;
end;

procedure TFrmempresa.pnlCancelarMouseLeave(Sender: TObject);
begin
  pnlCancelar.Color:=clRed;
end;

procedure TFrmempresa.pnlCancelarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlCancelar.Color:=$008080FF;
end;

procedure TFrmempresa.pnlEditarClick(Sender: TObject);
begin
  DBEdit1.Enabled:=true;
  DBEdit2.Enabled:=true;
  DBEdit3.Enabled:=true;
  DBEdit4.Enabled:=true;
  DBEdit5.Enabled:=true;
  DBEdit6.Enabled:=true;
  DBEdit7.Enabled:=true;
  DBEdit8.Enabled:=true;
  Button1.Enabled:=true;
  edcp.Enabled:= true;
  image2.Enabled:= true;
  pnlEditar.Visible:=false;
  pnlGuardar.Visible:=true;
  pnlCancelar.Visible:=true;
end;

procedure TFrmempresa.pnlEditarMouseLeave(Sender: TObject);
begin
  pnleditar.Color := $00C08000;
end;

procedure TFrmempresa.pnlEditarMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnleditar.Color := $00C1C760;
end;

procedure TFrmempresa.pnlGuardarClick(Sender: TObject);
var
  Pic : TPicture;
  rebote: boolean;
begin
  rebote:= false;
  Pic := TPicture.Create;

  if(DBEdit1.text =  '') then
  begin
      showmessage('Ingrese la clave');
      rebote := true;
  end
  else
  begin
    if(DBEdit2.text= '' )then
    begin
      showmessage('Ingrese el nombre');
      rebote := true;
    end
    else
    begin
      if(DBEdit3.text= '' )then
      begin
        showmessage('Ingrese la calle');
        rebote:= true;
      end
      else
      begin
        if(DBEdit4.text= '' )then
        begin
          showmessage('Ingrese el numero interior');
          rebote:= true;
        end
        else
        begin
          if(DBEdit5.text =  '') then
          begin
            showmessage('Ingrese el numero exterior');
            rebote := true;
          end
          else
          begin
            if(DBEdit6.text= '')then
            begin
              showmessage('Ingrese un numero de teléfono');
              rebote := true;
            end
            else
            begin
              if (DBEdit7.text= '') then
              begin
                showmessage('Ingrese el url');
                rebote := true;
              end
              else
              begin
                if(DBEdit8.Text= '' )then
                begin
                  showmessage('Ingrese el email');
                  rebote:= true;
                end
                else
                begin
                  if(edcp.text= '' )then
                  begin
                    showmessage('Debe indicar un codigo postal del listado de codigos postales');
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

  if rebote=false then
  begin
    if Assigned(Image1.Picture.Graphic) then
    begin
      try
        dm.dsEmpresa.Edit;
        if(OpenPic1.FileName<>'') then
        begin
          Pic.LoadFromFile(OpenPic1.FileName);
          dm.dsEmpresa.FieldByName('emp_logo').Assign(Pic);
        end;
        dm.dsEmpresacp_fk.Value:= dm.dscpcp_id.value;
        dm.dsEmpresa.ApplyUpdates;
        ShowMessage('Datos guardados');
      finally
        Pic.Free;
      end;
      DBEdit1.Enabled:=false;
      DBEdit2.Enabled:=false;
      DBEdit3.Enabled:=false;
      DBEdit4.Enabled:=false;
      DBEdit5.Enabled:=false;
      DBEdit6.Enabled:=false;
      DBEdit7.Enabled:=false;
      DBEdit8.Enabled:=false;
      Button1.Enabled:=false;
      edcp.Enabled:= false;
      image2.Enabled:= false;
      pnlGuardar.Visible:=false;
      pnlCancelar.Visible:=false;
      pnlEditar.Visible:=true;
    end
    else
    begin
      ShowMessage('No contiene ninguna imagen');
    end;
  end;
end;

procedure TFrmempresa.pnlGuardarMouseLeave(Sender: TObject);
begin
  pnlguardar.Color := $00C08000;
end;

procedure TFrmempresa.pnlGuardarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlguardar.Color := $00C1C760;
end;

end.
