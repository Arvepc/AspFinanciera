unit duanalisis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, ShellApi,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  Tfrmanalisis = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    ednombre: TEdit;
    pnlobservaciones: TPanel;
    Label3: TLabel;
    mmobserva: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    pnlguarda: TPanel;
    Label2: TLabel;
    edfolio: TEdit;
    Image4: TImage;
    edid: TEdit;
    dbgrdtipodoc: TDBGrid;
    dstipodoc: TZQuery;
    dtstipodoc: TDataSource;
    chktodos: TCheckBox;
    Label5: TLabel;
    cbxestatus: TComboBox;
    imgimprime: TImage;
    dstipodocsld_id: TIntegerField;
    dstipodocsol_fk: TIntegerField;
    dstipodocsld_descripcion: TWideStringField;
    dstipodocsld_documento: TBlobField;
    dstipodocsld_estatus: TSmallintField;
    imgcheck: TImage;
    imgnocheck: TImage;
    dstipodocsld_imprimir: TSmallintField;
    dsimprime: TZQuery;
    dsimprimesld_documento: TBlobField;
    dtrevision: TDateTimePicker;
    Label1: TLabel;
    procedure pnlguardaClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure dbgrdtipodocDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure imgimprimeClick(Sender: TObject);
    procedure dbgrdtipodocCellClick(Column: TColumn);
    procedure edfolioKeyPress(Sender: TObject; var Key: Char);
    procedure chktodosClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmanalisis: Tfrmanalisis;
    BitmapSi: TBitmap;
    BitmapNo : TBitmap;

implementation

{$R *.dfm}

uses dulistasolicitudes, dudm;

procedure Tfrmanalisis.chktodosClick(Sender: TObject);
begin
if chktodos.Checked = true then
    begin
       dm.cambia(dstipodoc, 'update sol_doc set sld_imprimir = 1 where sol_fk =' + edid.text); //qui todavia hay que filtrar por esreporte
       dm.filtra(dstipodoc, 'select * from sol_doc where sol_fk = ' + edid.Text);
    end
    else
    begin
     dm.cambia(dstipodoc, 'update sol_doc set sld_imprimir = 0 where sol_fk =' + edid.text); //qui todavia hay que filtrar por esreporte
     dm.filtra(dstipodoc, 'select * from sol_doc where sol_fk = ' + edid.Text);
    end;
end;

procedure Tfrmanalisis.dbgrdtipodocCellClick(Column: TColumn);
begin

if edid.Text <> '' then
begin
if column.Index = 1 then
begin
    if dstipodocsld_imprimir.Value = 0 then
        dm.cambia(dstipodoc, 'update sol_doc set sld_imprimir = 1 where sld_id =' + dstipodocsld_id.AsString )
        else
        dm.cambia(dstipodoc, 'update sol_doc set sld_imprimir = 0 where sld_id =' + dstipodocsld_id.AsString );

  dm.filtra(dstipodoc, 'select * from sol_doc where sol_fk = ' + edid.Text);


end;



end;
end;

procedure Tfrmanalisis.dbgrdtipodocDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  Bmp: TBitmap;
  L, T: Integer;
  begin

  // Si es la columna donde deseas poner la imagen...
  if DataCol = 1 then
  begin
    // Seleccionas la imagen a usar según el valor del campo
    if dstipodoc.FieldByName('sld_imprimir').Value = 1 then
      Bmp := BitmapSi
    else
      Bmp := BitmapNo;

    // Calculas las coordenadas para que la imagen quede centrada en la celda
    L := Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
    T := Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

    // Dibujas la imagen
    dbgrdtipodoc.Canvas.Draw(L, T, Bmp);
  end
  else
    dbgrdtipodoc.DefaultDrawColumnCell(Rect, DataCol, Column, State);






end;

procedure Tfrmanalisis.edfolioKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
begin
  dm.filtra(dm.dssolicitudes, 'select * from solicitudes where sol_folio = '+ edfolio.Text) ;
 if dm.dssolicitudessol_clinombre.AsString = '' then
 showmessage('No se encontraron datos para el folio indicado, utilize el boton de busqueda...')
 else
 begin

 if (dm.dssolicitudessol_estatus.asstring = trim('EN ANALISIS')) then
          begin
          ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
  edid.Text := dm.dssolicitudessol_id.AsString;

    dm.filtra(frmanalisis.dstipodoc, 'select * from sol_doc where sol_fk = ' + dm.dssolicitudessol_id.AsString);
          if dstipodoc.RecordCount > 0 then
              imgimprime.Visible := true
                else
              imgimprime.Visible := false;
          mmobserva.SetFocus;
           pnlguarda.Visible := true;
          end
          else
         begin
         showmessage('La solicitud del folio: ' + edfolio.Text + ' ya se encuentra en estatus ' + dm.dssolicitudessol_estatus.AsString);
          pnlguarda.Visible := false;
         end;



  {
   }
 end;


end;
end;

procedure Tfrmanalisis.FormCreate(Sender: TObject);
begin
  BitmapSi := TBitmap.Create;
  BitmapSi.Assign(imgcheck.Picture.Bitmap);

 BitmapNo := TBitmap.Create;
  BitmapNo.Assign(imgnocheck.picture.Bitmap);
end;

procedure Tfrmanalisis.imgimprimeClick(Sender: TObject);
var
ruta: string;
begin


//pensando en la performance  de la actualizacion de la grid no traje los documentos

// ahora hago un recorrido para imprimir solo los seleccionados


dstipodoc.First;
while not (dstipodoc.Eof) do
begin

      if dstipodocsld_imprimir.Value = 1 then
          begin

          //guardo el fichero en un archivo temporal
         ruta := ExtractFilePath( Application.ExeName ) +'_temp.pdf';
          dm.filtra(dsimprime, 'select sld_documento from sol_doc where sld_id = '  + dstipodocsld_id.AsString);
           dsimprimesld_documento.SaveToFile(ruta);

            // imprimir el fichero
  ShellExecute(Handle, 'print', PChar(ruta), nil, nil, SW_HIDE);
          end;

dstipodoc.Next;
end;

end;

procedure Tfrmanalisis.Panel3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmanalisis.Image4Click(Sender: TObject);
begin
application.CreateForm(Tfrmlistasolicitudes, frmlistasolicitudes);
frmlistasolicitudes.envia := 'A';
frmlistasolicitudes.show;
frmanalisis.Hide;


if dstipodoc.RecordCount > 0 then
imgimprime.Visible := true
else
imgimprime.Visible := false;
end;

procedure Tfrmanalisis.pnlguardaClick(Sender: TObject);
var
rebote: boolean;
nserie, nfolio: string;


begin
//en teoria aqui tiene que hacer el
//agregar a la solicitud el folio de credito
//tambien debe imorimir el contrato ???
//
rebote := false;


if (cbxestatus.Text = '') then
    begin
      showmessage('Debe indicar un estatus, antes de registrar');
      rebote := true;

    end;





    if (rebote = false) then
        begin

        if (uppercase(trim(cbxestatus.Text)) <> 'RECHAZADO') then
          begin
          //saco el folio del credito
          dm.filtra(dm.ds1, 'select max(sol_folcred) as idclave from solicitudes');
            if (dm.ds1.fieldbyname('idclave').asstring = '') or (dm.ds1.FieldByName('idclave').Value = null) then
            nfolio := '1'
            else
            nfolio := inttostr(dm.ds1.fieldbyname('idclave').AsInteger + 1);


          dm.filtra(dm.ds2, 'SELECT productos.prd_prefijofolio from productos, plan_pagos where plan_pagos.prd_fk = productos.prd_id '+
' and plan_pagos.pp_id =' + dm.dssolicitudespp_fk.AsString);

                if dm.ds2.FieldByName('prd_prefijofolio').AsString = '' then
                   showmessage('No fue posible recuperar la serie del producto')
                    else
                    begin

                    nserie := dm.ds2.FieldByName('prd_prefijofolio').AsString;

                      //hacemos el update de la slicitud.
                      dm.cambia(dm.ds1, 'update solicitudes set sol_seriecred = '+ quotedstr(nserie) +', sol_folcred = '+ nfolio + ', sol_fecanalisis = ' +
                      quotedstr(formatdatetime('yyyy-mm-dd',dtrevision.Date)) + ', sol_observaanalisis = '+
                      quotedstr(mmobserva.Text)+ ', sol_estatus = ' + quotedstr(trim(uppercase(cbxestatus.Text))) + ' where sol_id = ' + edid.Text );

                      //JALAR LA SERIE DEL PRODUCTO.



                      showmessage('Se ha registrado la revision de la solicitud ' + edfolio.Text);
                      close;





                    end;


         end
         else
         begin
         //esto quiere decir que si es rechazado solo cambia el estatus...


          dm.cambia(dm.ds1, 'update solicitud set sol_estatus = '+ quotedstr(trim('RECHAZADO'))+' where sol_id = ' + edid.Text);



         end;




        end;


end;

end.
