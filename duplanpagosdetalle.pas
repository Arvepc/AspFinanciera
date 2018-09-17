unit duplanpagosdetalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, DateUtils,
  Vcl.ComCtrls, frxClass, frxDBSet, Vcl.ToolWin,frxCross;

type
  Tfrmplanpagosdetalle = class(TForm)
    Panel1: TPanel;
    pnlcondiciones: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    DataSource1: TDataSource;
    dtsdetalle: TDataSource;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    eFechaF: TEdit;
    eAnio: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Image1: TImage;
    Panel7: TPanel;
    Label20: TLabel;
    edtTotal: TEdit;
    edtCapital: TEdit;
    edtInteres: TEdit;
    edtIVA: TEdit;
    Label24: TLabel;
    frxDBDataset1: TfrxDBDataset;
    pnldatoscredito: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edcomisionapertura: TEdit;
    edgastosadmin: TEdit;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Shape1: TShape;
    edtComision: TEdit;
    edtGastos: TEdit;
    edtTGastos: TEdit;
    Panel8: TPanel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel5: TPanel;
    ToolBar1: TToolBar;
    Button1: TButton;
    Button2: TButton;
    DBEdit7: TDBEdit;
    Label32: TLabel;
    Label5: TLabel;
    DBEdit13: TDBEdit;
    cbxfreccapinteres: TComboBox;
    cbxfrecpagointeres: TComboBox;
    cbxfreccapital: TComboBox;
    cbxPeriodicidad: TComboBox;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    Label33: TLabel;
    cbxtipointeres: TComboBox;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    frxdsDetalle: TfrxDBDataset;
    frxDSEncabezado: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label20Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    vtCapital,
    vtInteres,
    vtIVA,
    vTotal :Real;


  procedure combos;
  procedure Totales;
  public
    { Public declarations }
  end;

var
  frmplanpagosdetalle: Tfrmplanpagosdetalle;

implementation

{$R *.dfm}

uses dudm;

procedure Tfrmplanpagosdetalle.Totales;
var
vvIVA, vvComision, vvGastos :real;
begin
  vvIVA := dm.dsplan_pagospp_tiva.Value/100;
  vtCapital := 0;
  vtInteres := 0;
  vtIVA     := 0;
  vTotal    := 0;
  dm.dsplanpagosdetalle.FindFirst ;
  while not dm.dsplanpagosdetalle.Eof do
  begin
    vtCapital := vtCapital + dm.dsplanpagosdetalleppd_acapiatl.Value;
    vtInteres := vtInteres + dm.dsplanpagosdetalleppd_intord.Value;
    vtIVA     := vtIVA + dm.dsplanpagosdetalleppd_iva.value;
    vTotal    := vTotal + dm.dsplanpagosdetalleppd_pago.Value;
    dm.dsplanpagosdetalle.Next;
  end;
  eFechaF.Text     := dm.dsplanpagosdetalleppd_fecha.AsString;
  edtTotal.Text    := FormatFloat( '$ ,0.00', vTotal );
  edtCapital.text  := FormatFloat( '$ ,0.00', vtCapital );
  edtInteres.text  := FormatFloat( '$ ,0.00', vtInteres );
  edtIVA.text      := FormatFloat ('$ ,0.00', vtIVA);
  eAnio.Text       := Copy(dbedit16.Text,7,4);
  vvComision := ((dm.dsplan_pagospp_monto.Value * (dm.dsplan_pagospp_comision.Value/100))* vvIVA)
                +(dm.dsplan_pagospp_monto.Value * (dm.dsplan_pagospp_comision.Value/100));
  vvGastos   := ((dm.dsplan_pagospp_monto.Value * (dm.dsplan_pagospp_gastos.Value/100))* vvIVA)
                +(dm.dsplan_pagospp_monto.Value * (dm.dsplan_pagospp_gastos.Value/100));


  edtComision.text := FormatFloat ('$ ,0.00',vvComision);
  edtGastos.Text   := FormatFloat ('$ ,0.00',vvGastos);
  edtTGastos.Text  := FormatFloat('$ ,0.00',(vvComision+vvGastos));

  dm.dsplanpagosdetalle.First;

end;
procedure Tfrmplanpagosdetalle.Button2Click(Sender: TObject);
begin
frxReport1.Variables.Variables['Periodicidad'] := QuotedStr(cbxPeriodicidad.Text);
frxReport1.Variables.Variables['FrecCapInt']   := QuotedStr(cbxfreccapinteres.Text);
frxReport1.Variables.Variables['FrecPagInt']   := QuotedStr(cbxPeriodicidad.Text);
frxReport1.Variables.Variables['FrecPagCap']   := QuotedStr(cbxfreccapital.Text);
frxReport1.Variables.Variables['Comision']     := QuotedStr(edtComision.Text);
frxReport1.Variables.Variables['Gastos']       := QuotedStr(edtGastos.Text);
frxReport1.Variables.Variables['TGastos']      := QuotedStr(edtTGastos.Text);
frxReport1.Variables.Variables['FechaI']       := QuotedStr(dm.dsplan_pagospp_fecha.AsString);
frxReport1.Variables.Variables['FechaF']       := QuotedStr(eFechaF.Text);
frxReport1.Variables.Variables['Anio']          := QuotedStr(eAnio.Text);



frxReport1.ShowReport();
end;

procedure Tfrmplanpagosdetalle.combos;
begin
    cbxtipointeres.Text := dm.dsplan_pagospp_tipoInteres.asstring;

    if dm.dsplan_pagospp_freccapint.value = 0.25 then cbxfreccapinteres.itemindex := 0;
    if dm.dsplan_pagospp_freccapint.value = 0.50 then cbxfreccapinteres.itemindex := 1;
    if dm.dsplan_pagospp_freccapint.value = 1    then cbxfreccapinteres.itemindex := 2;
    if dm.dsplan_pagospp_freccapint.value = 2    then cbxfreccapinteres.itemindex := 3;
    if dm.dsplan_pagospp_freccapint.value = 3    then cbxfreccapinteres.itemindex := 4;
    if dm.dsplan_pagospp_freccapint.value = 6    then cbxfreccapinteres.itemindex := 5;
    if dm.dsplan_pagospp_freccapint.value = 12   then  cbxfreccapinteres.itemindex := 6;

    if dm.dsplan_pagospp_frecpagcap.value = 0.25 then cbxfreccapital.itemindex := 0;
    if dm.dsplan_pagospp_frecpagcap.value = 0.50 then cbxfreccapital.itemindex := 1;
    if dm.dsplan_pagospp_frecpagcap.value = 1 then cbxfreccapital.itemindex := 2;
    if dm.dsplan_pagospp_frecpagcap.value = 2 then cbxfreccapital.itemindex := 3;
    if dm.dsplan_pagospp_frecpagcap.value = 3 then cbxfreccapital.itemindex := 4;
    if dm.dsplan_pagospp_frecpagcap.value = 6 then cbxfreccapital.itemindex := 5;
    if dm.dsplan_pagospp_frecpagcap.value = 12 then  cbxfreccapital.itemindex := 6;

    if dm.dsplan_pagospp_frecpagint.value = 0.25 then cbxfrecpagointeres.itemindex := 0;
    if dm.dsplan_pagospp_frecpagint.value = 0.50 then cbxfrecpagointeres.itemindex := 1;
    if dm.dsplan_pagospp_frecpagint.value = 1    then cbxfrecpagointeres.itemindex := 2;
    if dm.dsplan_pagospp_frecpagint.value = 2    then cbxfrecpagointeres.itemindex := 3;
    if dm.dsplan_pagospp_frecpagint.value = 3    then cbxfrecpagointeres.itemindex := 4;
    if dm.dsplan_pagospp_frecpagint.value = 6    then cbxfrecpagointeres.itemindex := 5;
    if dm.dsplan_pagospp_frecpagint.value = 12   then  cbxfrecpagointeres.itemindex := 6;

    if dm.dsplan_pagospp_periodicidad.Value = 0.25 then cbxPeriodicidad.itemindex := 0;
    if dm.dsplan_pagospp_periodicidad.Value = 0.50 then cbxPeriodicidad.itemindex := 1;
    if dm.dsplan_pagospp_periodicidad.Value = 1    then cbxPeriodicidad.itemindex := 2;
    if dm.dsplan_pagospp_periodicidad.Value = 2    then cbxPeriodicidad.itemindex := 3;
    if dm.dsplan_pagospp_periodicidad.Value = 3    then cbxPeriodicidad.itemindex := 4;
    if dm.dsplan_pagospp_periodicidad.Value = 6    then cbxPeriodicidad.itemindex := 5;
    if dm.dsplan_pagospp_periodicidad.Value = 12   then cbxPeriodicidad.itemindex := 6;



 end;

procedure Tfrmplanpagosdetalle.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
MRect : TRect ;
begin

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

end;

procedure Tfrmplanpagosdetalle.Button1Click(Sender: TObject);
var
fmt: TFormatSettings;
nfecha :string;
x, i: integer;
vmonto, vsaldo, vabono_cap, vabono_ins, vpago, vinteres, vinteres_acumula, viva, vTasaO : real;
vfecha: tdate;
vanio, vmes, vdia : word;
vFrecPagCap:Integer;
begin
dm.cambia(dm.dsplanpagosdetalle ,'delete  from planpagos_det where pp_fk = '+quotedstr(dm.dsplan_pagospp_id.AsString));
  if dm.dsplanpagosdetalle.IsEmpty then
    begin
         vpago := 0;
         vinteres := 0;
         vinteres_Acumula := 0;

         vfecha:=  dm.dsplan_pagospp_fecha.value;
         vmonto:= dm.dsplan_pagospp_monto.value;
         vsaldo := vmonto;
         vFrecPagCap := Round(dm.dsplan_pagospp_frecpagcap.value);
         if vFrecPagCap = 0 then
            vFrecPagcap := 1;
         vabono_cap := vmonto / (dm.dsplan_pagospp_plazo.value /vFrecPagCap );   //obligar a que en el campo   dsplan_pagospp_freccapint pongan al menos 1 de valor minimo
         vabono_ins := 0;
         vinteres := 0;
         vinteres_acumula := 0;
         vTasaO := (dm.dsplan_pagospp_tord.Value/(12))*dm.dsplan_pagospp_periodicidad.Value;

         vtCapital := 0;
         vtInteres := 0;
         vtIVA     := 0;
         vTotal    := 0;


         //inicia inserción

           for i := 1 to (dm.dsplan_pagospp_plazo.asinteger div DM.dsplan_pagospp_periodicidad.AsInteger) do
           begin
             //if 3 mod 1.5 = 0 then
              x:=   trunc(dm.dsplan_pagospp_frecpagcap.asinteger / dm.dsplan_pagospp_periodicidad.asinteger);
              if x= 0 then
                 x:= x + 1;

           if ((i mod x = 0) or (dm.dsplan_pagospp_periodicidad.asinteger = 0)) then
                 begin
                   vabono_ins := vabono_cap;
                   vpago := vabono_ins;
                 end
                 else
                 begin
                    vabono_ins :=0;
                    vpago := 0;
                 end;


            vinteres := vmonto * (vTasaO / 100);
            viva := vinteres * (dm.dsplan_pagospp_tiva.value / 100);


              x:= trunc(dm.dsplan_pagospp_frecpagint.value /dm.dsplan_pagospp_periodicidad.value) ;
              if x= 0 then
                 x:= x + 1;



            if ((i mod x > 0)) then //and (dm.dsplan_pagospp_periodicidad.asinteger = 0)) then

            vinteres_acumula := vinteres_acumula + vinteres + viva
            else
            begin
            vpago := vpago + vinteres_acumula + vinteres + viva;
            vinteres_acumula := 0;
            end;


            if dm.dsplan_pagospp_periodicidad.value >= 1 then

                 vsaldo := vmonto + vinteres + viva - vpago

               else
               vsaldo := vsaldo - vabono_cap;





           dm.cambia(dm.ds1, 'insert into planpagos_det (ppd_nperiodo, ppd_fecha, ppd_monto, ppd_acapiatl, ppd_intord, ppd_iva, ppd_saldo, ppd_pago, pp_fk) values (' +
           inttostr(i) + ', ' +
           quotedstr(formatdatetime('yyyy-mm-dd', vfecha)) + ', ' +
           floattostr(vmonto) + ', ' +
           floattostr(vabono_ins) + ', ' +
           floattostr(vinteres) + ', ' +
           floattostr(viva) + ', '+
           floattostr(vsaldo) + ', '+
           floattostr(vpago) + ', '+
           dm.dsplan_pagospp_id.asstring +  ')');

           vtCapital := vtCapital + vabono_ins;
           vtInteres := vtInteres + vinteres;
           vtIVA     := vtIVA +viva;
           vTotal    := vTotal + vpago;


           if (dm.dsplan_pagospp_periodicidad.value >= 1) then
                    begin

                    //https://stackoverflow.com/questions/45943176/delphi-strtodate-not-accepting-date
                    //TFormatSettings.Create(fmt,0);
                    GetLocaleFormatSettings(0, fmt);

                    fmt.ShortDateFormat := 'dd/mm/yyyy';
                    fmt.DateSeparator := '/';

                     vfecha := incmonth(vfecha, trunc(dm.dsplan_pagospp_periodicidad.value)) ;
                     decodedate(vfecha, vanio, vmes, vdia);

                     vdia := daysinamonth(vanio, vmes);

                     if vmes < 10 then

                      nfecha := inttostr(vdia) + '/0' + inttostr(vmes) + '/' + inttostr(vanio)
                      else
                      nfecha := inttostr(vdia) + '/' + inttostr(vmes) + '/' + inttostr(vanio);


                     // nfecha := formatdatetime('yyyy-mm-dd',strtodate(nfecha));


                     vfecha := strtodate(nfecha);

                    end
                     else
                     if (dm.dsplan_pagospp_periodicidad.value = 0.25) then
                         vfecha := incday(vfecha, 7)
                         else
                         if (dm.dsplan_pagospp_periodicidad.value = 0.5) then
                           begin
                            decodedate(vfecha, vanio, vmes, vdia);

                               if vdia = daysinamonth(vanio, vmes) then
                                vfecha := incday(vfecha, 15)
                                else
                                begin
                                vdia := daysinamonth(vanio, vmes) - vdia;
                                vfecha := incday(vfecha, vdia);
                                end;


                           end;

              if dm.dsplan_pagospp_tipointeres.Value <> 'INTERES GLOBAL' THEN
                 vmonto := vsaldo;

             vinteres:= 0;
             viva :=0;
             vpago :=0;



           end;
      dm.filtra(dm.dsplanpagosdetalle ,'select * from planpagos_det where pp_fk = '+quotedstr(dm.dsplan_pagospp_id.AsString));
      Totales;
     end;






end;

procedure Tfrmplanpagosdetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmplanpagosdetalle.FormShow(Sender: TObject);
begin
  dm.filtra(dm.dsplanpagosdetalle, 'select * from planpagos_det where pp_fk = ' + dm.dsplan_pagospp_id.asstring);
  combos;
  Totales;
      {dm.dsplanpagosdetalle.last;
      eFechaf.Text:= dm.dsplanpagosdetalleppd_fecha.asstring;
      eAnio.Text := '';  }

end;

procedure Tfrmplanpagosdetalle.frxReport1BeforePrint(
  Sender: TfrxReportComponent);
  var
  Cross: TfrxCrossView;
begin

end;

procedure Tfrmplanpagosdetalle.Label20Click(Sender: TObject);
begin
close;
end;

end.
