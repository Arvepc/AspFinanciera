unit ducp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmcp = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
 procedure selecciona;
  public
  envia: string;

    { Public declarations }
  end;

var
  frmcp: Tfrmcp;
  filtro: string;

implementation

{$R *.dfm}

uses dudm, duactusuario, duactcentrostrabajo, duprincipal, duempresa,
  dusolicitud, dusolicitudmoral;


procedure Tfrmcp.selecciona;
begin
 if envia = 'SF' then
     begin
    frmsolicitud.edcolonia.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitud.edmunicipio.text := dm.dscpcp_municipio.asstring;
    frmsolicitud.edestado.text := dm.dscpcp_estado.asstring;
    frmsolicitud.edcp.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitud.edidcp.text := dm.dscpcp_id.asstring;
    close;
     end;


   if envia = 'SM' then       //solicitud moral
     begin
    frmsolicitudmoral.edcolonia.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitudmoral.edmunicipio.text := dm.dscpcp_municipio.asstring;
    frmsolicitudmoral.edestado.text := dm.dscpcp_estado.asstring;
    frmsolicitudmoral.edcp.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitudmoral.edidcp.text := dm.dscpcp_id.asstring;
    close;
     end;

    if envia = 'SMR' then //solicitud Moral Representante
   begin
    frmsolicitudmoral.edcoloniarep.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitudmoral.edmunicipiorep.text := dm.dscpcp_municipio.asstring;
    frmsolicitudmoral.edestadorep.text := dm.dscpcp_estado.asstring;
    frmsolicitudmoral.edcprep.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitudmoral.edidcprep.text := dm.dscpcp_id.asstring;
    close;

   end;

   if envia = 'SFC' then //solicitud fisica conyuge
   begin
    frmsolicitud.edcoloniacon.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitud.edmunicipiocon.text := dm.dscpcp_municipio.asstring;
    frmsolicitud.edestadocon.text := dm.dscpcp_estado.asstring;
    frmsolicitud.edcpcon.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitud.edidcpcon.text := dm.dscpcp_id.asstring;
    close;
   end;

    if envia = 'SFA' then //solicitud fisica Aval
   begin
    frmsolicitud.edcoloniaaval.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitud.edmunicipioaval.text := dm.dscpcp_municipio.asstring;
    frmsolicitud.edestadoaval.text := dm.dscpcp_estado.asstring;
    frmsolicitud.edcpaval.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitud.edidcpaval.text := dm.dscpcp_id.asstring;
    close;
   end;

   if envia = 'SMA' then //solicitud fisica Aval
   begin
    frmsolicitudmoral.edcoloniaaval.text := dm.dscpcp_asentamiento.asstring ;
    frmsolicitudmoral.edmunicipioaval.text := dm.dscpcp_municipio.asstring;
    frmsolicitudmoral.edestadoaval.text := dm.dscpcp_estado.asstring;
    frmsolicitudmoral.edcpaval.text := dm.dscpcp_codigopostal.asstring;
    frmsolicitudmoral.edidcpaval.text := dm.dscpcp_id.asstring;
    close;
   end ;


    if envia='U' then
    begin

      frmactusuario.lblcolonia.caption := dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
      frmactusuario.lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
      frmactusuario.edcp.text := dm.dscpcp_codigopostal.asstring;
      frmactusuario.edidcp.text := dm.dscpcp_id.asstring;
    end;

    if envia='E' then
    begin

      frmempresa.lblcolonia.caption := dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
      frmempresa.lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
      frmempresa.edcp.text := dm.dscpcp_codigopostal.asstring;
      frmempresa.edidcp.text := dm.dscpcp_id.asstring;
    end;

    if envia='C' then
    begin
     // Frmactcentrostrabajo.Visible:=false;
      dm.colonia:= dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
      dm.estado:= dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
      dm.cp:= dm.dscpcp_codigopostal.asstring;
      dm.idcp:= dm.dscpcp_id.asstring;
      {Frmactcentrostrabajo.lblcolonia.caption := dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
      frmactcentrostrabajo.lblmunestado.caption := dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
      frmactcentrostrabajo.edcp.text := dm.dscpcp_codigopostal.asstring;
      frmactcentrostrabajo.edidcp.text := dm.dscpcp_id.asstring;
    //  Frmactcentrostrabajo.Visible:=true;}
    end;

    close;
end;


procedure Tfrmcp.SpeedButton1Click(Sender: TObject);
begin
selecciona;
end;

procedure Tfrmcp.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
MRect : TRect ;
begin
with TCrackDBGrid (DBGrid1) do MRect:= CellRect (6, Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
SpeedButton1.Parent := DBGrid1 ;
SpeedButton1.Left := (MRect.Right - SpeedButton1.Width)-10 ;
SpeedButton1.Top := MRect.Top ;
SpeedButton1.Height := (MRect.Bottom-MRect.Top);

  if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00F2F2F2//$00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;
 if (Sender as TDBGrid).SelectedRows.CurrentRowSelected then
         begin
          (Sender as TDBGrid).Canvas.Font.Color := clWhite;
          (Sender as TDBGrid).Canvas.Brush.Color := clRed
         end;
(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);
frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmcp.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
selecciona;


end;

procedure Tfrmcp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmcp.Image2Click(Sender: TObject);
begin
dm.filtra(dm.dscp, 'select * from cp where '+
'cp_codigopostal like ' + quotedstr('%'+ edbusca.text +'%') + ' or '+
'cp_municipio like ' + quotedstr('%'+ edbusca.text  +'%') + ' or '+
'cp_estado like ' + quotedstr('%'+ edbusca.text  +'%') + ' or '+
'cp_asentamiento like ' + quotedstr('%'+ edbusca.text  +'%'));

if dm.dscp.IsEmpty then
      label2.Visible:=true
    else
      label2.Visible:=false;

end;

end.
