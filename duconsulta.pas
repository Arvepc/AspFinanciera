unit duconsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdAttachmentFile,
  IdSSL, IdSSLOpenSSL, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    Memo1: TMemo;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dudm;

procedure TForm1.Button1Click(Sender: TObject);
var
blob: tstream;

begin


{dm.qry_x.close;
 dm.qry_x.Open('select * from hpexpediente where folio_pac = 333333');


 blob:= dm.qry_x.CreateBlobStream(dm.qry_x.FieldByName('archivo'), bmwrite);
  //
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create('archivo_prueba.pdf', fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free
  end;}


end;

procedure TForm1.Button2Click(Sender: TObject);

 //********************************************
 begin
   //es necesario reemplazar el 333333 por el num
{dm.qry_x.close;
dm.qry_x.Open('select * from hpexpediente where folio_pac = 333333');


dm.qry_x.First;



  while not(dm.qry_x.Eof) do

  begin
  TBlobField(dm.qry_x.FieldByName('archivo')).SaveToFile('c:\gacse\'+dm.qry_x.FieldByName('nombre_archivo').AsString);
  dm.qry_x.Next;
  end;




  ruta:= ExtractFilePath( Application.ExeName ) ;

  archiver := TZipForge.Create(nil);
  showmessage('ruta: '+ ruta);
  try

  with archiver do
  begin


//
    filename:= ruta + dm.qry_x.FieldByName('folio_pac').AsString + '_pack.zip';
    OpenArchive(fmCreate);
    BaseDir := ruta;


  dm.qry_x.First;
  while not(dm.qry_x.Eof) do

  begin

 //        showmessage(ruta + dm.qry_x.FieldByName('nombre_archivo').AsString);
       addfiles(ruta + dm.qry_x.FieldByName('nombre_archivo').AsString);

  dm.qry_x.Next;
  end;

      CloseArchive();

  end;


  finally

  end;}

end;

procedure TForm1.Button3Click(Sender: TObject);
var
ruta: string;
	Password: String;
  filename, filename2: String;
begin


  idMessage.Clear;
  idMessage.FromList.EMailAddresses := 'arvepc@gmail.com';
  idMessage.Recipients.EMailAddresses := edit1.Text;
	idMessage.Subject := 'Correo de prueba pdf expediente';




  memo1.Lines.Add('Envío de Cexpediente electronico');

 idMessage.Body.AddStrings(memo1.Lines);


  	idSMTP.Username := 'arvepc@gmail.com';
    idSMTP.Password := 'ex48bn12x';



    try
      if not idSMTP.Connected then
				idSMTP.Connect;

      idSMTP.Send(IdMessage);
      showmessage('el expediente ha sido enviado por correo ...');
     CLOSE;
   except
             on E: Exception do
    begin
      ShowMessage(E.Message);


     // showmessage('Ocurrio un error al Intentar enviar el Correo, Verifique el password indicado');

     end;


    end;


end;

end.
