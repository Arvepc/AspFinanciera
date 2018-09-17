unit dumesacontrolfinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.ExtCtrls, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, strutils,
  IdSMTPBase, IdSMTP, Vcl.Buttons, Vcl.OleCtrls, SHDocVw;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmmesacontrolfinal = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pnlguarda: TPanel;
    pnlobservaciones: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edid: TEdit;
    Label6: TLabel;
    dssolicitud: TZQuery;
    DBMemo1: TDBMemo;
    dtssolicitud: TDataSource;
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dssolicitudsol_id: TIntegerField;
    dssolicitudsol_folio: TIntegerField;
    dssolicitudsol_fecha: TDateField;
    dssolicitudsol_fecaproba: TDateField;
    dssolicitudsol_monto: TFloatField;
    dssolicitudsol_montoaut: TFloatField;
    dssolicitudsol_plazo: TFloatField;
    dssolicitudpp_fk: TIntegerField;
    dssolicitudsol_destino: TWideStringField;
    dssolicitudsol_tasaord: TFloatField;
    dssolicitudsol_tasamor: TFloatField;
    dssolicitudsol_periodicidad: TFloatField;
    dssolicitudsol_iva: TFloatField;
    dssolicitudsol_freccapint: TFloatField;
    dssolicitudsol_frecpagcap: TFloatField;
    dssolicitudsol_frecpagint: TFloatField;
    dssolicitudsol_prodseg: TWideStringField;
    dssolicitudsol_producto: TWideStringField;
    dssolicitudsol_clinombre: TWideStringField;
    dssolicitudsol_clirfc: TWideStringField;
    dssolicitudsol_clicalle: TWideStringField;
    dssolicitudsol_clinoint: TWideStringField;
    dssolicitudsol_clinoext: TWideStringField;
    dssolicitudsol_clicol: TWideStringField;
    dssolicitudsol_clicp: TIntegerField;
    dssolicitudsol_cliant: TWideStringField;
    dssolicitudsol_clitel1: TWideStringField;
    dssolicitudsol_clitel2: TWideStringField;
    dssolicitudsol_clitel3: TWideStringField;
    dssolicitudsol_clitel4: TWideStringField;
    dssolicitudsol_cliemail: TWideStringField;
    dssolicitudsol_clinac: TWideStringField;
    dssolicitudsol_clireg: TWideStringField;
    dssolicitudsol_comision: TFloatField;
    dssolicitudsol_gastos: TFloatField;
    dssolicitudusr_fk: TIntegerField;
    dssolicitudsol_fecrev: TDateField;
    dssolicitudsol_observarev: TWideStringField;
    dssolicitudsol_estatus: TWideStringField;
    dssolicitudsol_FecRec: TDateTimeField;
    dssolicitudsol_observaRec: TWideStringField;
    dssolicitudsol_FecAnalisis: TDateTimeField;
    dssolicitudsol_observaAnalisis: TWideStringField;
    dssolicitudsol_folcred: TIntegerField;
    dssolicitudsol_seriecred: TWideStringField;
    dssolicitudfrmpago_fk: TIntegerField;
    dssolicitudctadestino_fk: TIntegerField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    mmcorreo: TMemo;
    dbgrdexpediente: TDBGrid;
    dsexpediente: TZQuery;
    dsexpedientesld_id: TIntegerField;
    dsexpedientesol_fk: TIntegerField;
    dsexpedientesld_descripcion: TWideStringField;
    dsexpedientesld_documento: TBlobField;
    dsexpedientesld_estatus: TSmallintField;
    dsexpedienteestatus: TWideStringField;
    dtsexpediente: TDataSource;
    btnupload: TSpeedButton;
    btnmuestraexp: TSpeedButton;
    od1: TOpenDialog;
    wb1: TWebBrowser;
    pnltitulo: TPanel;
    Image4: TImage;
    edfolio: TEdit;
    Label4: TLabel;
    procedure pnlguardaClick(Sender: TObject);
    procedure edfolioKeyPress(Sender: TObject; var Key: Char);
    procedure Panel3Click(Sender: TObject);
    procedure dbgrdexpedienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnuploadClick(Sender: TObject);
    procedure btnmuestraexpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure matatemporales;

    procedure enviacorreo;
  public
    { Public declarations }
  end;

var
  frmmesacontrolfinal: Tfrmmesacontrolfinal;

implementation

{$R *.dfm}

uses dudm, duanalisis, duprincipal;
procedure Tfrmmesacontrolfinal.matatemporales;
begin


if dsexpediente.Active = true  then

  begin

  dsexpediente.First;
while not (dsexpediente.eof) do
begin

  if FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dsexpedientesld_id.AsString + '.pdf') then
    DeleteFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' +  dsexpedientesld_id.AsString  + '.pdf');




  dsexpediente.Next;
end;

end;
end;





procedure Tfrmmesacontrolfinal.enviacorreo;
var
	Password: String;
  filename, filename2: String;
begin

  idMessage.Clear;
  idMessage.FromList.EMailAddresses := 'arvepc@gmail.com';
  idMessage.Recipients.EMailAddresses :=  'gortega@nextcom.com.mx';//'arve_pc@hotmail.com';//dm.dssolicitudessol_cliemail.AsString;
	idMessage.Subject := 'ASp financiera';

  mmcorreo.Lines.Add('Correo de Prueba');
  mmcorreo.Lines.Add('estimado (a): '+ dbedit2.Text) ;
  mmcorreo.Lines.Add('El presente correo es para informarle que su credito con el folio: '+ dbedit3.Text);
  mmcorreo.Lines.Add('Solicitado en nuestras oficinas ha sido aprobado, por lo cual se requiere:');
  mmcorreo.Lines.Add('XXXXXXXXXXXXXXXXXXXX');



 idMessage.Body.AddStrings(mmcorreo.Lines);


  	idSMTP.Username := 'arvepc@gmail.com';
    idSMTP.Password := 'ex48bn12x';



    try
      if not idSMTP.Connected then
				idSMTP.Connect;

      idSMTP.Send(IdMessage);
      showmessage('El aviso de crédito aprobado se ha enviado por correo...');
     CLOSE;
   except
             on E: Exception do
    begin
      ShowMessage(E.Message);
     end;


    end;

end;

procedure Tfrmmesacontrolfinal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
matatemporales;
action := cafree;


end;

procedure Tfrmmesacontrolfinal.Panel3Click(Sender: TObject);
begin
matatemporales;
close;
end;

procedure Tfrmmesacontrolfinal.btnmuestraexpClick(Sender: TObject);
var
url : string;
begin

if dsexpediente.FieldByName('estatus').AsString = 'ENTREGADO' then
  begin
      if not(FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dsexpedientesld_id.AsString+ '.pdf')) then
           dsexpedientesld_documento.SaveToFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dsexpedientesld_id.AsString+ '.pdf');


  panel1.Visible := false;
  pnlobservaciones.Visible := false;
  pnltitulo.Visible := false;
  pnlguarda.Caption := 'Volver Datos';
  wb1.FreeOnRelease;
  wb1.Align := alclient;
  wb1.Visible := true;

      URL := 'file://'+ ExtractFilePath( Application.ExeName ) + 'TEMP_' + dsexpedientesld_id.AsString+ '.pdf';
      wb1.Navigate(WideString(URL));

        while wb1.ReadyState <> READYSTATE_COMPLETE do
        begin
          Application.ProcessMessages;
          Sleep(0);
        end;

   end
else
begin

 wb1.FreeOnRelease;
 wb1.Align := alnone;
 wb1.Width:= 0;
 wb1.Visible := false;
{ panel1.Visible := true;
 pnltitulo.Visible := true;
 pnlobservaciones.Visible := true;}
end;


end;

procedure Tfrmmesacontrolfinal.btnuploadClick(Sender: TObject);
var
nombre, url: string;
begin

Od1.Execute;
   nombre := Od1.FileName;
   if  nombre <> '' then
   begin

 //  wb1.FreeOnRelease;
    if (uppercase(AnsiRightStr(nombre, 3 )) = 'PDF') then

    begin


    //bueno aqui guardamos.

    dsexpediente.Edit;
    dsexpedientesld_documento.LoadFromFile(nombre);
    dsexpedientesld_estatus.Value := 1;
    dsexpediente.Post;

     //actualizo el data set

     dm.filtra(dsexpediente, 'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus '+
'when 0 then '+ quotedstr('POR ENTREGAR') +' else '+ quotedstr('ENTREGADO') + ' end as estatus '+
'from sol_doc  where sol_fk = ' + edid.Text);



    end;

   end;


end;

procedure Tfrmmesacontrolfinal.dbgrdexpedienteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
MRect : TRect ;
begin
with TCrackDBGrid (dbgrdexpediente) do MRect:= CellRect (3,Row);

btnupload.Parent := dbgrdexpediente ;
btnupload.Left := (MRect.Right - btnupload.Width) ;
btnupload.Top := MRect.Top ;
btnupload.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (dbgrdexpediente) do MRect:= CellRect (4,Row);

btnmuestraexp.Parent := dbgrdexpediente ;
btnmuestraexp.Left := (MRect.Right - btnmuestraexp.Width) ;
btnmuestraexp.Top := MRect.Top ;
btnmuestraexp.Height := (MRect.Bottom-MRect.Top);


frmprincipal.colorgrid(Rect, sender, dbgrdexpediente, DataCol, Column, State);


end;

procedure Tfrmmesacontrolfinal.edfolioKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
begin
dm.filtra(dssolicitud, 'select * from solicitudes where sol_folio = '+ edfolio.Text) ;


if (dm.dssolicitudessol_estatus.asstring = trim('POR FONDEAR'))then
showmessage('La solicitud del folio indicado ya se encuentra en estatus Por Fondear')
else
begin


if (dm.dssolicitudessol_estatus.asstring = trim('EN ANALISIS')) or (dm.dssolicitudessol_estatus.asstring = trim('EN PROCESO')) then
          begin
                  if dm.dssolicitudessol_estatus.asstring = trim('EN ANALISIS') then
                     showmessage('La solicitud del folio: ' + edfolio.Text + ' se encuentra en analisis, selecione esa opcion del menú principal.');

                  if dm.dssolicitudessol_estatus.asstring = trim('EN PROCESO') then
                     showmessage('La solicitud del folio: ' + edfolio.Text + ' se encuentra en Proceso, seleccione la opción Mesa de control inicial del menú principal');



                  pnlguarda.Visible := false;
          end
          else
          begin

              edid.Text := dssolicitudsol_id.AsString;

              dm.filtra(dsexpediente, 'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus '+
              'when 0 then '+ quotedstr('POR ENTREGAR') +' else '+ quotedstr('ENTREGADO') + ' end as estatus '+
              'from sol_doc  where sol_fk = ' + edid.Text);
             pnlguarda.Visible := true;

          end;



end;
end; //if fondear

end;

procedure Tfrmmesacontrolfinal.pnlguardaClick(Sender: TObject);
var
cta : integer;
begin

if (pnlguarda.Caption = 'Aprobado') then
  begin

dsexpediente.First;   cta := 0;

while not (dsexpediente.eof) do
begin

         if dsexpedientesld_estatus.Value = 0 then
        inc(cta);


  dsexpediente.Next;
end;



//aqui no se bien que va a pasar
//se tiene que cambiar el estatus a por fondear

if (cta > 0) then
showmessage('No se puede aprobar la solicitud si hacen falta registrar documentos')
else
begin


dm.cambia(dm.ds1, 'update solicitudes set sol_estatus = ' + quotedstr(trim('POR FONDEAR')) + ' where sol_id = ' + edid.text);

//adicionalmente se tiene que enviar un correo

enviacorreo;


//matar los archivos temporales si es que se generaron


matatemporales;


end;

  end
  else
  begin
 wb1.FreeOnRelease;
 wb1.Align := alnone;
 wb1.Width:= 0;
 wb1.Visible := false;
 pnltitulo.Visible := true;
 panel1.Visible := true;
 pnlobservaciones.Visible := true;
 pnlguarda.Caption := 'Aprobado';

//  tengo que matar el archivo

if FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' + '.pdf') then
    DeleteFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' + '.pdf');

  end;

end;

end.
