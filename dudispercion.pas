unit dudispercion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TCrackDBGrid = class (TDBGrid);
  Tfrmdispercion = class(TForm)
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    btnmuestra: TSpeedButton;
    Panel6: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    edtotal: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    imgcheck: TImage;
    imgnocheck: TImage;
    RadioGroup1: TRadioGroup;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure chkdispersadosClick(Sender: TObject);
    procedure chkpordispersarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdispercion: Tfrmdispercion;
  BitmapSi: TBitmap;
  BitmapNo : TBitmap;

implementation

{$R *.dfm}

uses dudm, duprincipal, duactdispercion;

procedure Tfrmdispercion.chkdispersadosClick(Sender: TObject);
begin
  //dm.filtra();
end;

procedure Tfrmdispercion.chkpordispersarClick(Sender: TObject);
begin
  //dm.filtra();
end;

procedure Tfrmdispercion.DBGrid1CellClick(Column: TColumn);
begin
 if not(dm.dssolicitudes2.FieldByName('sol_estatus').Value = 'FONDEADO') then
  SpeedButton1.Visible:=true
  else
  SpeedButton1.Visible:=false;
end;

procedure Tfrmdispercion.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    var
  MRect : TRect ;
  Bmp: TBitmap;
  L, T: Integer;
begin

  with TCrackDBGrid (DBGrid1) do MRect:= CellRect (7,Row);
  SpeedButton2.Parent := DBGrid1 ;
  SpeedButton2.Left := (MRect.Right - SpeedButton1.Width) ;
  SpeedButton2.Top := MRect.Top ;
  SpeedButton2.Height := (MRect.Bottom-MRect.Top);

         with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
      SpeedButton1.Parent := DBGrid1 ;
      SpeedButton1.Left := (MRect.Right - SpeedButton1.Width)-10 ;
      SpeedButton1.Top := MRect.Top ;
      SpeedButton1.Height := (MRect.Bottom-MRect.Top);
       {
  if not(dm.dssolicitudes2.FieldByName('sol_estatus').Value = 'FONDEADO') then
  begin
       with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
      SpeedButton1.Parent := DBGrid1 ;
      SpeedButton1.Left := (MRect.Right - SpeedButton1.Width)-10 ;
      SpeedButton1.Top := MRect.Top ;
      SpeedButton1.Height := (MRect.Bottom-MRect.Top);
  end;}




  if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00F2F2F2
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
  frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);


  if DataCol = 5 then
  begin
    if dm.dssolicitudes2.FieldByName('sol_estatus').Value = 'FONDEADO' then
    begin
      Bmp := BitmapSi;
      L := Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
      T := Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

      dbgrid1.Canvas.Draw(L, T, Bmp);
    end
    else
    begin
      if dm.dssolicitudes2.FieldByName('sol_estatus').Value = 'POR FONDEAR' then
      begin
        Bmp := BitmapNo;
        // Calculas las coordenadas para que la imagen quede centrada en la celda
        L := Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        T := Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        // Dibujas la imagen
        dbgrid1.Canvas.Draw(L, T, Bmp);
      end;
    end;
  end
  else
    dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmdispercion.FormCreate(Sender: TObject);
begin
  BitmapSi := TBitmap.Create;
  BitmapSi.Assign(imgcheck.Picture.Bitmap);

  BitmapNo := TBitmap.Create;
  BitmapNo.Assign(imgnocheck.picture.Bitmap);
end;

procedure Tfrmdispercion.FormShow(Sender: TObject);
begin
  dm.filtra(dm.ds1, 'SELECT SUM(sol_monto) as suma FROM solicitudes WHERE sol_folio>0 and (sol_estatus="FONDEADO" OR sol_estatus="POR FONDEAR")');
  edtotal.Text:= dm.ds1.FieldByName('suma').Value
end;

procedure Tfrmdispercion.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:
    begin
      dm.filtra(dm.dssolicitudes2, 'SELECT *, concat(sol_seriecred, " - ", sol_folcred) as folcred FROM solicitudes  WHERE  sol_folio > 0 and sol_estatus="FONDEADO"');
      dm.filtra(dm.ds1, 'SELECT SUM(sol_monto) as suma FROM solicitudes WHERE sol_folio>0 and sol_estatus="FONDEADO"');
      if dm.ds1.FieldByName('suma').Value=Null then
        edtotal.Text:='0'
      else
        edtotal.Text:= dm.ds1.FieldByName('suma').Value
    end;
    1:
    begin
      dm.filtra(dm.dssolicitudes2, 'SELECT *, concat(sol_seriecred, " - ", sol_folcred) as folcred FROM solicitudes  WHERE  sol_folio > 0 and sol_estatus="POR FONDEAR"');
      dm.filtra(dm.ds1, 'SELECT SUM(sol_monto) as suma FROM solicitudes WHERE sol_folio>0 and sol_estatus="POR FONDEAR"');
      if dm.ds1.FieldByName('suma').Value=Null  then
        edtotal.Text:='0'
      else
        edtotal.Text:= dm.ds1.FieldByName('suma').Value
    end;
    2:
    begin
      dm.filtra(dm.dssolicitudes2, 'SELECT *, concat(sol_seriecred, " - ", sol_folcred) as folcred FROM solicitudes  WHERE  sol_folio > 0 and (sol_estatus="FONDEADO" OR sol_estatus="POR FONDEAR")');
      dm.filtra(dm.ds1, 'SELECT SUM(sol_monto) as suma FROM solicitudes WHERE sol_folio>0 and (sol_estatus="FONDEADO" OR sol_estatus="POR FONDEAR")');
      if dm.ds1.FieldByName('suma').Value=Null  then
        edtotal.Text:='0'
      else
        edtotal.Text:= dm.ds1.FieldByName('suma').Value
    end;
  end;
  dm.Activa_DS(dm.dssolicitudes2);
end;

procedure Tfrmdispercion.SpeedButton1Click(Sender: TObject);
begin
  if dm.dssolicitudes2.FieldByName('sol_estatus').Value = 'POR FONDEAR' then
  begin
    application.CreateForm(Tfrmactdispercion, frmactdispercion);
    frmactdispercion.showmodal;
  end
  else
  begin
    showMessage('Ya se encuentra dispersado');
  end;

end;

end.
