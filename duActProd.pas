unit duActProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids;

type
  TfrmActProducto = class(TForm)
    pcProducto: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    dtssubprod: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    dbeCodigo: TDBEdit;
    dbeFolio: TDBEdit;
    dbeDescripcion: TDBEdit;
    dbminimo: TDBEdit;
    dbmaximo: TDBEdit;
    dbeTasaO: TDBEdit;
    dbeTasaM: TDBEdit;
    dbeTasaIVA: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    dblcksubprod: TDBLookupComboBox;
    cbxfreccapinteres: TComboBox;
    cbxfreccapital: TComboBox;
    cbxfrecpagointeres: TComboBox;
    cbxPeriodicidad: TComboBox;
    DBEdit5: TDBEdit;
    dbeComision: TDBEdit;
    dbeGastos: TDBEdit;
    dbTipoInteres: TDBComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlguarda: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    dblcktipodoc: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    dtsTipoDoc: TDataSource;
    dsTipo_Doc: TZQuery;
    Panel5: TPanel;
    dsProd_TipoDoc: TZQuery;
    dtsProd_TipoDoc: TDataSource;
    dsTipo_Doctpd_id: TIntegerField;
    dsTipo_Doctpd_descripcion: TWideStringField;
    dsTipo_Doctpd_estatus: TSmallintField;
    dsTipo_Doctpd_docvalor: TSmallintField;
    dsTipo_Doctpd_esreporte: TSmallintField;
    DBLookupComboBox1: TDBLookupComboBox;
    dsSerie: TZQuery;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbxfreccapinteresChange(Sender: TObject);
    procedure cbxfreccapitalChange(Sender: TObject);
    procedure cbxfrecpagointeresChange(Sender: TObject);
    procedure cbxPeriodicidadChange(Sender: TObject);
    procedure dbTipoInteresChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
  private
    { Private declarations }
    procedure combos;
    procedure cambia_tipointeres;
    procedure cambia_CapInteres;
  public
    { Public declarations }

    envia: char;
  end;

var
  frmActProducto: TfrmActProducto;

implementation

{$R *.dfm}

uses duProducto, dudm;

procedure TfrmActProducto.cambia_CapInteres;
begin
 case cbxfreccapinteres.itemindex of
0: DBEdit13.text := '0.25';
1: DBEdit13.text := '0.5';
2: DBEdit13.text := '1';
3: DBEdit13.text := '2';
4: DBEdit13.text := '3';
5: DBEdit13.text := '6';
6: DBEdit13.text := '12';
end;

end;
procedure TfrmActProducto.cambia_tipointeres;
begin
  case dbTipoInteres.ItemIndex of
  0: begin
        cbxfreccapinteres.Text    := cbxperiodicidad.Text;
        cbxfreccapital.Text       := cbxperiodicidad.Text;
        cbxfrecpagointeres.Text   := cbxperiodicidad.Text;
     end;
  1: begin
        cbxfreccapinteres.Text := cbxperiodicidad.Text;
        cbxfreccapital.Text    := cbxperiodicidad.Text;
        cbxfrecpagointeres.Text:= cbxperiodicidad.Text;
     end;
  end;

end;

procedure TfrmActProducto.cbxfreccapinteresChange(Sender: TObject);
begin
cambia_CapInteres;
end;

procedure TfrmActProducto.cbxfreccapitalChange(Sender: TObject);
begin
case cbxfreccapital.itemindex of
0: DBEdit14.text := '0.25';
1: DBEdit14.text := '0.5';
2: DBEdit14.text := '1';
3: DBEdit14.text := '2';
4: DBEdit14.text := '3';
5: DBEdit14.text := '6';
6: DBEdit14.text := '12';
end;
end;

procedure TfrmActProducto.cbxfrecpagointeresChange(Sender: TObject);
begin
 case cbxfrecpagointeres.itemindex of
0: DBEdit15.text := '0.25';
1: DBEdit15.text := '0.5';
2: DBEdit15.text := '1';
3: DBEdit15.text := '2';
4: DBEdit15.text := '3';
5: DBEdit15.text := '6';
6: DBEdit15.text := '12';
end;
end;

procedure TfrmActProducto.cbxPeriodicidadChange(Sender: TObject);
begin
case cbxperiodicidad.itemindex of
0: DBEdit5.text := '0.25';
1: DBEdit5.text := '0.5';
2: DBEdit5.text := '1';
3: DBEdit5.text := '2';
4: DBEdit5.text := '3';
5: DBEdit5.text := '6';
6: DBEdit5.text := '12';
end;
case dbTipoInteres.ItemIndex of
  0: begin
        DBEdit13.Text    := DBEdit5.Text;
        DBEdit14.Text    := DBEdit5.Text;
        DBEdit15.Text    := DBEdit5.Text;
     end;
  1: begin
        DBEdit13.Text    := DBEdit5.Text;
        DBEdit14.Text    := DBEdit5.Text;
        DBEdit15.Text    := DBEdit5.Text;
     end;

end;
combos;
end;

procedure TfrmActProducto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmproducto.AlphaBlend := false;
frmproducto.AlphaBlendValue := 225;
action := cafree;
end;

procedure TfrmActProducto.combos;
begin

    if dm.dsprodprd_periodicidad.value = 0.25 then cbxPeriodicidad.itemindex := 0;
    if dm.dsprodprd_periodicidad.value = 0.50 then cbxPeriodicidad.itemindex := 1;
    if dm.dsprodprd_periodicidad.value = 1    then cbxPeriodicidad.itemindex := 2;
    if dm.dsprodprd_periodicidad.value = 2    then cbxPeriodicidad.itemindex := 3;
    if dm.dsprodprd_periodicidad.value = 3    then cbxPeriodicidad.itemindex := 4;
    if dm.dsprodprd_periodicidad.value = 6    then cbxPeriodicidad.itemindex := 5;
    if dm.dsprodprd_periodicidad.value = 12   then cbxPeriodicidad.itemindex := 6;


    if dm.dsprodprd_freccapint.value = 0.25 then cbxfreccapinteres.itemindex := 0;
    if dm.dsprodprd_freccapint.value = 0.50 then cbxfreccapinteres.itemindex := 1;
    if dm.dsprodprd_freccapint.value = 1    then cbxfreccapinteres.itemindex := 2;
    if dm.dsprodprd_freccapint.value = 2    then cbxfreccapinteres.itemindex := 3;
    if dm.dsprodprd_freccapint.value = 3    then cbxfreccapinteres.itemindex := 4;
    if dm.dsprodprd_freccapint.value = 6    then cbxfreccapinteres.itemindex := 5;
    if dm.dsprodprd_freccapint.value = 12   then cbxfreccapinteres.itemindex := 6;

    if dm.dsprodprd_frecpagcap.value = 0.25 then cbxfreccapital.itemindex := 0;
    if dm.dsprodprd_frecpagcap.value = 0.50 then cbxfreccapital.itemindex := 1;
    if dm.dsprodprd_frecpagcap.value = 1    then cbxfreccapital.itemindex := 2;
    if dm.dsprodprd_frecpagcap.value = 2    then cbxfreccapital.itemindex := 3;
    if dm.dsprodprd_frecpagcap.value = 3    then cbxfreccapital.itemindex := 4;
    if dm.dsprodprd_frecpagcap.value = 6    then cbxfreccapital.itemindex := 5;
    if dm.dsprodprd_frecpagcap.value = 12   then cbxfreccapital.itemindex := 6;

    if dm.dsprodprd_frecpagint.value = 0.25 then cbxfrecpagointeres.itemindex := 0;
    if dm.dsprodprd_frecpagint.value = 0.50 then cbxfrecpagointeres.itemindex := 1;
    if dm.dsprodprd_frecpagint.value = 1    then cbxfrecpagointeres.itemindex := 2;
    if dm.dsprodprd_frecpagint.value = 2    then cbxfrecpagointeres.itemindex := 3;
    if dm.dsprodprd_frecpagint.value = 3    then cbxfrecpagointeres.itemindex := 4;
    if dm.dsprodprd_frecpagint.value = 6    then cbxfrecpagointeres.itemindex := 5;
    if dm.dsprodprd_frecpagint.value = 12   then cbxfrecpagointeres.itemindex := 6;
end;
procedure TfrmActProducto.dbTipoInteresChange(Sender: TObject);
begin

case dbTipoInteres.ItemIndex of
  0: begin
        cbxfreccapinteres.Enabled := false;
        cbxfreccapital.Enabled    := false;
        cbxfrecpagointeres.Enabled:= false;
        cambia_tipointeres;
     end;
  1: begin
        cbxfreccapinteres.Enabled := false;
        cbxfreccapital.Enabled    := false;
        cbxfrecpagointeres.Enabled:= false;
        cambia_tipointeres;
     end;
  2: begin
        cbxfreccapinteres.Enabled := true;
        cbxfreccapital.Enabled    := True;
        cbxfrecpagointeres.Enabled:= True;
     end;
end;

end;

procedure TfrmActProducto.FormShow(Sender: TObject);
begin
if envia = 'M' then
   begin
   dm.dsprod.edit;
   dm.filtra(dm.dssubprod, 'select * from subproducto order by sbp_descripcion') ;
   dm.filtra(dsProd_TipoDoc,'select ptd_id as ID,   tpd_descripcion as Documento '+
                            ' from prod_tipodoc,tipo_doc '+
                            ' where tpd_fk = tpd_id '+
                            ' and prd_fk = '+ DBEdit1.Text );
    //tipo de interes


    case dbTipoInteres.ItemIndex of
  0: begin
        cbxfreccapinteres.Enabled := false;
        cbxfreccapital.Enabled    := false;
        cbxfrecpagointeres.Enabled:= false;
     end;
  1: begin
        cbxfreccapinteres.Enabled := false;
        cbxfreccapital.Enabled    := false;
        cbxfrecpagointeres.Enabled:= false;
     end;
  2: begin
        cbxfreccapinteres.Enabled := true;
        cbxfreccapital.Enabled    := True;
        cbxfrecpagointeres.Enabled:= True;
     end;
    end;

    combos;
    cambia_tipointeres;
    dblcksubprod.keyvalue := dm.dsprodsbp_fk.value;

   end;
end;

procedure TfrmActProducto.Panel1Click(Sender: TObject);
var
rebote: boolean;
begin

try
     rebote:= false;
     if strtofloat(dbedit15.text) > strtofloat(dbedit14.text) then
        begin
          rebote := true;
          showmessage('La frecuencia de pago de intereses no puede ser mayor a la frecuenia de pagos a capital');
        end;

     if dbminimo.text =  '' then
     begin
      showmessage('Debe indicar un plazo mínimo');
      rebote := true;
     end;

     if (dbmaximo.text = '') then
     begin
     showmessage('Debe indicar un plazo maximo.');
     rebote := true;
     end;

       //if (cbxtipointeres.text = '') then
       if (dbtipointeres.text = '') then
     begin
     showmessage('Debe indicar un Tipo de Interes.');
     rebote := true;
     end;


       if (dblcksubprod.text = '') then
     begin
     showmessage('Debe indicar un subproducto.');
     rebote := true;
     end;


     //aqui falta comparar los demás

   if (cbxfreccapinteres.text = '') and (dbTipoInteres.ItemIndex = 3) then
     begin
     showmessage('Debe indicar una frecuencia de capitalizacion de intereses.');
     rebote := true;
     end;

  if (cbxfreccapital.text = '')and  (dbTipoInteres.ItemIndex = 3) then
     begin
     showmessage('Debe indicar una frecuencia de pago de capital.');
     rebote := true;
     end;


    if (cbxfrecpagointeres.text = '')and (dbTipoInteres.ItemIndex = 3) then
     begin
     showmessage('Debe indicar una frecuencia de pago de intereses.');
     rebote := true;
     end;


      if (rebote = false) then
      begin

      dm.dsprodprd_estatus.value := 'ACTIVO';
      dm.dsprodsbp_fk.value := dblcksubprod.keyvalue;
      //dm.dsprodprd_tipoInteres.value := quotedstr(cbxtipointeres.Text);
      dm.dsprod.post;
     // close;

      dm.Activa_DS(dsTipo_Doc);

      end;


pcProducto.ActivePageIndex := 1;

except

end;

end;

procedure TfrmActProducto.Panel3Click(Sender: TObject);
begin

close;
end;

procedure TfrmActProducto.Panel4Click(Sender: TObject);
begin
 pcProducto.ActivePageIndex := 0;
end;

procedure TfrmActProducto.Panel5Click(Sender: TObject);
begin
//dm.filtra(dsProd_TipoDoc,'select * from prod_tipodoc where tpd_fk = '+dsTipo_Doctpd_id.AsString);
dm.filtra(dsProd_TipoDoc,'select ptd_id as ID,   tpd_descripcion as Documento '+
                            ' from prod_tipodoc,tipo_doc '+
                            ' where tpd_fk = tpd_id '+
                            ' and prd_fk = '+ DBEdit1.Text );

if  dsTipo_Doctpd_docvalor.AsInteger = 1  then
  dm.cambia(dsProd_TipoDoc,'insert into prod_tipodoc(ptd_tipoper,prd_fk,tpd_fk,ptd_solicitado) '+
           'values('+quotedstr('FISICA')+', '+dbedit1.Text+', '+inttostr(dblcktipodoc.KeyValue)+',1)  ')
  else
  showmessage('No es posible agregar el tipo de documento seleccionado...');


  dm.filtra(dsProd_TipoDoc,'select ptd_id as ID,   tpd_descripcion as Documento '+
                            ' from prod_tipodoc,tipo_doc '+
                            ' where tpd_fk = tpd_id '+
                            ' and prd_fk = '+ DBEdit1.Text );



end;

procedure TfrmActProducto.pnlguardaClick(Sender: TObject);
begin
dm.dsProd.Edit;
dm.dsProd.Post;
Close;
end;

procedure TfrmActProducto.pnlguardaMouseLeave(Sender: TObject);
begin
pnlguarda.color := $00BC8D3C;
end;

procedure TfrmActProducto.pnlguardaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pnlguarda.color:= $00906028;
end;

procedure TfrmActProducto.TabSheet2Show(Sender: TObject);
begin
dm.Activa_DS(dsTipo_Doc);
end;

end.
