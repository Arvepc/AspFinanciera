unit duactdispercion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtDlgs,  strutils,
  Vcl.Buttons, Vcl.OleCtrls, SHDocVw, Shellapi;

type
  TCrackDBGrid = class (TDBGrid);
  Tfrmactdispercion = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Panel2: TPanel;
    Label9: TLabel;
    FechaPago: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    dsdatos: TZQuery;
    dtsdatos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label17: TLabel;
    Memo1: TMemo;
    dsFormaDePago: TZQuery;
    dtsfrmpago: TDataSource;
    dsctabanco: TZQuery;
    dtsctabanco: TDataSource;
    dsbancos: TZQuery;
    dtsbancos: TDataSource;
    dssoldoc: TZQuery;
    dtssoldoc: TDataSource;
    AbrirDoc: TOpenDialog;
    Panel3: TPanel;
    pnlguarda: TPanel;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    DBComboBanco: TDBLookupComboBox;
    dtsbancos2: TDataSource;
    btnmuestraexp: TSpeedButton;
    btnupload: TSpeedButton;
    dssoldocsld_id: TIntegerField;
    dssoldocsol_fk: TIntegerField;
    dssoldocsld_descripcion: TWideStringField;
    dssoldocsld_documento: TBlobField;
    dssoldocsld_estatus: TSmallintField;
    dssoldocestatus: TWideStringField;
    wb1: TWebBrowser;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnmuestraexpClick(Sender: TObject);
    procedure btnuploadClick(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlguardaClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Panel4Click(Sender: TObject);
  private
    procedure matatemporales;
    { Private declarations }
  public
    { Public declarations }
    procedure BorrarFichero(fichero: String);
  end;

var
  frmactdispercion: Tfrmactdispercion;
  nombre:string;
  sldId:Integer;

implementation

{$R *.dfm}

uses dudm, duprincipal;

procedure Tfrmactdispercion.matatemporales;
  begin
    if dssoldoc.Active = true  then
    begin
      dssoldoc.First;
    while not (dssoldoc.eof) do
    begin
      if FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dssoldocsld_id.AsString + '.pdf') then
        DeleteFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' +  dssoldocsld_id.AsString  + '.pdf');
      dssoldoc.Next;
    end;
  end;
end;


procedure Tfrmactdispercion.btnmuestraexpClick(Sender: TObject);
var
url : string;
begin
//matatemporales;
if dssoldoc.FieldByName('estatus').AsString = 'ENTREGADO' then
  begin
      if not(FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dssoldocsld_id.AsString+ '.pdf')) then
           dssoldocsld_documento.SaveToFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' + dssoldocsld_id.AsString+ '.pdf');


  panel1.Visible := false;
  panel2.Visible := false;
  panel4.Visible := false;
  pnlguarda.Visible := false;
  panel5.Visible:=true;
  wb1.FreeOnRelease;
  wb1.Align := alclient;
  wb1.Visible := true;

      URL := 'file://'+ ExtractFilePath( Application.ExeName ) + 'TEMP_' + dssoldocsld_id.AsString+ '.pdf';
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

procedure Tfrmactdispercion.btnuploadClick(Sender: TObject);
begin

  if ((edit1.Text='') and ((dssoldocsld_descripcion.Value='') or (dssoldocsld_descripcion.Value='-'))) then
  begin
    showMessage('Ingrese una descripción del documento');
    edit1.SetFocus;
    exit;
  end;
  {
  if(dssoldocsld_descripcion.Value<>'') then
    begin
    showMessage('Ingrese una descripción del documento');
    edit1.SetFocus;
    exit;
  end;

  if(dssoldocsld_descripcion.Value<>'-') then
  begin
    showMessage('Ingrese una descripción del documento');
    edit1.SetFocus;
    exit;
  end;    }


  Abrirdoc.Execute;
  nombre := Abrirdoc.FileName;
  if  nombre <> '' then
    begin
      if (uppercase(AnsiRightStr(nombre, 3 )) = 'PDF') then
      begin
        dm.filtra(dm.ds1, 'SELECT max(sld_id) as maximo FROM sol_doc');
        sldId:= dm.ds1.FieldByName('maximo').AsInteger;
        sldId:= sldId+1;
        if dssoldocsld_descripcion.Value='' then
        begin
          dm.cambia(dm.ds1, 'INSERT INTO sol_doc VALUES ('+IntToStr(sldId)+', '+dsdatos.FieldByName('sol_id').AsString+', "'+edit1.Text+'", "", 1, 0)');
          dm.cambia(dssoldoc, 'SELECT sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus when 0 then "POR ENTREGAR" else "ENTREGADO" end as estatus FROM sol_doc WHERE sld_id='+IntToStr(sldid));
          dssoldoc.Open;
          dssoldoc.Edit;
          dssoldocsld_documento.LoadFromFile(nombre);
          dssoldoc.ApplyUpdates;
          sldId:= sldId+1;
          dm.filtra(dm.ds2, 'SELECT * FROM sol_doc where sol_fk='+dsdatos.FieldByName('sol_id').AsString+' and sld_descripcion="-"');
          if (dm.ds2.recordcount = 0) then
          begin
            dm.cambia(dm.ds1, 'INSERT INTO sol_doc VALUES ('+IntToStr(sldId)+', '+dsdatos.FieldByName('sol_id').AsString+', "-", "", 0, 0)');
          end;
        end
        else
        begin
          dssoldoc.Edit;
          if dssoldocsld_descripcion.Value='-' then
            dssoldocsld_descripcion.Value:=Edit1.Text;

          dssoldocsld_documento.LoadFromFile(nombre);
          dssoldocsld_estatus.Value := 1;
          dssoldoc.Post;
          dm.filtra(dm.ds2, 'SELECT * FROM sol_doc where sol_fk='+dsdatos.FieldByName('sol_id').AsString+' and sld_descripcion="-"');
          if (dm.ds2.recordcount = 0) then
          begin
            dm.cambia(dm.ds1, 'INSERT INTO sol_doc VALUES ('+IntToStr(sldId)+', '+dsdatos.FieldByName('sol_id').AsString+', "-", "", 0, 0)');
          end;
        end;
        Edit1.Text:='';
        showMessage('Documento guardado');

        dm.filtra(dssoldoc, 'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus '+
        'when 0 then '+ quotedstr('POR ENTREGAR') +' else '+ quotedstr('ENTREGADO') + ' end as estatus '+
        'from sol_doc  where sol_fk = ' + dsdatos.FieldByName('sol_id').AsString);
      end;
    end;
end;

procedure Tfrmactdispercion.ComboBox1Change(Sender: TObject);
begin
  if combobox1.ItemIndex=0 then
  begin
     edit7.Enabled:=true;
  end
  else
  begin
    edit7.Text:='';
    edit7.Enabled:=false;
  end;
end;

procedure Tfrmactdispercion.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    var
MRect : TRect ;
begin
with TCrackDBGrid (dbgrid1) do MRect:= CellRect (3,Row);

btnupload.Parent := dbgrid1 ;
btnupload.Left := (MRect.Right - btnupload.Width) ;
btnupload.Top := MRect.Top ;
btnupload.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (dbgrid1) do MRect:= CellRect (4,Row);

btnmuestraexp.Parent := dbgrid1 ;
btnmuestraexp.Left := (MRect.Right - btnmuestraexp.Width) ;
btnmuestraexp.Top := MRect.Top ;
btnmuestraexp.Height := (MRect.Bottom-MRect.Top);


frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmactdispercion.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
    end
end;

procedure Tfrmactdispercion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  matatemporales;
  dm.cambia(dm.ds1, 'DELETE FROM sol_doc WHERE sol_fk='+dssoldocsol_fk.AsString+' and sld_descripcion="-"');
end;

procedure Tfrmactdispercion.FormShow(Sender: TObject);
begin
  FechaPago.Date:=Date;
  dm.filtra(dsdatos, 'SELECT * FROM solicitudes WHERE sol_id='+dm.dssolicitudes2.FieldByName('sol_id').AsString);
  dsdatos.Open;
  frmactdispercion.DBLookupComboBox1.KeyValue:= dsdatos.FieldByName('frmpago_fk').Value;
  dm.filtra(dsctabanco, 'SELECT * FROM ctabanco WHERE ctb_id='+dsdatos.FieldByName('ctadestino_fk').AsString);
  dsctabanco.Open;
  dm.filtra(dsbancos, 'SELECT * FROM bancos WHERE bnc_id='+dsctabanco.FieldByName('banco_fk').AsString);
  dsformadepago.Open;
  dsbancos.Open;
  dm.dsBancos.Open;
  dm.filtra(dssoldoc, 'SELECT sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus when 0 then "POR ENTREGAR" else "ENTREGADO" end as estatus FROM sol_doc WHERE sol_fk='+dsdatos.FieldByName('sol_id').AsString);
  dssoldoc.Open;
  dm.filtra(dm.ds2, 'SELECT * FROM sol_doc where sol_fk='+dsdatos.FieldByName('sol_id').AsString+' and sld_descripcion="-"');
  if (dm.ds2.recordcount = 0) then
  begin
    dm.cambia(dm.ds1, 'INSERT INTO sol_doc VALUES ('+IntToStr(sldId)+', '+dsdatos.FieldByName('sol_id').AsString+', "-", "", 0, 0)');
  end;
  matatemporales;
end;

procedure Tfrmactdispercion.Panel4Click(Sender: TObject);
begin
  dm.cambia(dm.ds1, 'DELETE FROM sol_doc WHERE sol_fk='+dssoldocsol_fk.AsString+' and sld_descripcion="-"');
  close;
end;

procedure Tfrmactdispercion.Panel5Click(Sender: TObject);
var
test:string;
begin
  wb1.FreeOnRelease;
  wb1.Align := alnone;
  wb1.Width:= 0;
  wb1.Visible := false;
  panel1.Visible := true;
  panel2.Visible := true;
  panel4.Visible := true;
  pnlguarda.Visible := true;
  panel5.Visible:=false;
  test := 'file://'+ ExtractFilePath( Application.ExeName ) + 'TEMP.pdf';
      wb1.Navigate(WideString(test));

        while wb1.ReadyState <> READYSTATE_COMPLETE do
        begin
          Application.ProcessMessages;
          Sleep(0);
        end;
  //matatemporales;

  //  tengo que matar el archivo

 if FileExists(ExtractFilePath( Application.ExeName ) + 'TEMP_' +dssoldocsld_id.AsString+ '.pdf') then
 begin
    BorrarFichero(ExtractFilePath( Application.ExeName ) + 'TEMP_' +dssoldocsld_id.AsString+ '.pdf');
    //SetFileAttributes(PChar(ExtractFilePath( Application.ExeName ) + 'TEMP_' +dssoldocsld_id.AsString+ '.pdf'),FILE_ATTRIBUTE_NORMAL);
    //DeleteFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' +dssoldocsld_id.AsString+ '.pdf');
 end;
end;

procedure Tfrmactdispercion.BorrarFichero(fichero: String);
var
  FileInfo: TShFileOpStruct;
begin
  FileInfo.Wnd := Handle;
  FileInfo.wFunc := FO_DELETE;
  FileInfo.pFrom := PChar(fichero); // si quisieramos borrar varios ficheros podriamos poner asi: 'C:\*.bmp'
  FileInfo.pTo := nil;
  FileInfo.fFlags := FOF_NOCONFIRMATION;

  ShFileOperation(FileInfo);
end;

procedure Tfrmactdispercion.pnlguardaClick(Sender: TObject);
var
formadepago: Integer;
rebote:boolean;
pagoId:Integer;
begin
rebote:=false;
if(Edit2.text =  '') then
  begin
      showmessage('Ingrese el monto pagado');
      rebote := true;
  end
  else
  begin
    if(ComboBox1.text= '' ) or (ComboBox1.text='Seleccione una opción')then
    begin
      showmessage('Seleccione una forma de pago');
      rebote:= true;
    end
    else
    begin
      if(DBComboBanco.text= '') then
      begin
        showmessage('Selecione el banco origen');
        rebote:= true;
      end
      else
      begin
        if(Edit5.text =  '') then
        begin
          showmessage('Ingrese el numero de cuenta');
          rebote := true;
        end
        else
        begin
          if(Edit6.text= '')then
          begin
            showmessage('Ingrese la CLABE');
            rebote := true;
          end
          else
          begin
            if (Edit7.text= '') and (ComboBox1.ItemIndex=0) then
            begin
              showmessage('Ingrese el numero del cheque');
              rebote := true;
            end;
          end;
        end;
      end;
    end;
  end;
  if(rebote=false) then
  begin
    dm.filtra(dm.ds1, 'SELECT max(pag_id) as maximo FROM pago');
    if dm.ds1.FieldByName('maximo')=nil then
      PagoId:=1
    else
    begin
      PagoId:= dm.ds1.FieldByName('maximo').AsInteger;
      PagoId:= PagoId+1;
    end;

    if Combobox1.ItemIndex=0 then
      formadepago:=2;
    if ComboBox1.itemIndex=1 then
      formadepago:=3;

    //showMessage('INSERT INTO pagos VALUES ('+IntToStr(PagoId)+', "'+DateToStr(fechaPago.Date)+'", "E", "'+IntToStr(DBComboBanco.KeyValue)+'", "'+Edit7.Text+'" , '+Edit2.Text+', "'+Memo1.Text+'" ,'+IntToStr(formadepago)+', '+dsctabanco.FieldByName('ctb_id').AsString+' , '+dsdatos.FieldByName('sol_id').AsString+' )');
    dm.cambia(dm.ds1, 'INSERT INTO pago VALUES ('+IntToStr(PagoId)+', '+quotedstr(formatdatetime('yyyy/mm/dd', fechaPago.Date))+', "E", "'+DBComboBanco.Text+'", "'+Edit7.Text+'" , '+Edit2.Text+', "'+Edit6.Text+'", "'+Memo1.Text+'" ,'+IntToStr(formadepago)+', '+dsctabanco.FieldByName('ctb_id').AsString+' , '+dsdatos.FieldByName('sol_id').AsString+' )');
    ShowMessage('Pago realizado');
    dm.cambia(dm.ds1, 'DELETE FROM tipo_doc WHERE sol_fk='+dssoldocsol_fk.AsString+' and sld_descripcion="-"');
  end;

end;



end.
