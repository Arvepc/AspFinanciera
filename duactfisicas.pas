unit duactfisicas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TFrmactfisicas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBEdit14: TDBEdit;
    DBEdit4: TDBEdit;
    DataSource2: TDataSource;
    Label14: TLabel;
    DataSource3: TDataSource;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    Label9: TLabel;
    RegimenCombo: TDBLookupComboBox;
    Label27: TLabel;
    DataSource4: TDataSource;
    DBEdit23: TDBEdit;
    edcp: TEdit;
    edidcp: TEdit;
    Image2: TImage;
    lblmunestado: TLabel;
    lblcolonia: TLabel;
    Label34: TLabel;
    procedure pnlguardaClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure obtenerClave;
  private
    { Private declarations }
  public
    { Public declarations }
    envia: char;
    nclave:string;
  end;

var
  Frmactfisicas: TFrmactfisicas;

implementation

{$R *.dfm}

uses dudm, duactpersonas, duPersonas, ducp;


procedure TFrmactfisicas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(envia='N') then
  begin
    dm.dsPersonas.Cancel;
    dm.dsfisicas.Cancel;
  end;
end;

procedure TFrmactfisicas.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblcolonia.caption := dm.colonia;
  lblmunestado.caption := dm.estado;
  edcp.text := dm.cp;
  edidcp.text := dm.idcp;
end;

procedure TFrmactfisicas.FormShow(Sender: TObject);
begin
  if envia='N' then
  begin
    DateTimePicker1.Date:=Date;
  end;
  if envia = 'M' then
   begin
    dm.filtra(dm.dscp, 'select * from cp where cp.cp_id = ' +dm.dsPrsFisicacp_fk.AsString);
    dm.colonia:= dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
    dm.estado:= dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
    dm.cp:= dm.dscpcp_codigopostal.asstring;
    dm.idcp:= dm.dscpcp_id.AsString;
    dm.filtra(dm.dsregimen, 'select * from regimencapital');
    regimencombo.keyvalue := dm.dsPrsFisicargc_fk.AsString;
   end
   else
   begin
    dm.colonia:= '';
    dm.estado:='';
    dm.cp:='';
    dm.idcp:= '';
   end;
end;

procedure TFrmactfisicas.Image2Click(Sender: TObject);
begin
  dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
  application.createform(Tfrmcp, frmcp) ;
  dm.colonia:= '';
  dm.estado:='';
  dm.cp:='';
  dm.idcp:= '';
  frmcp.envia:= 'C';
  frmcp.show;
end;

procedure TFrmactfisicas.obtenerClave;
begin
  dm.filtra(dm.ds1, 'select max(prs_clave) as idclave from personas');
  if (dm.ds1.fieldbyname('idclave').asstring = '') or (dm.ds1.FieldByName('idclave').Value = null) then
    nclave := '0001'
  else
    begin
      if (dm.ds1.FieldByName('idclave').asinteger <= 9) then
        nclave := '000' + inttostr(dm.ds1.FieldByName('idclave').asinteger +1);

      if (dm.ds1.FieldByName('idclave').asinteger > 9) and (dm.ds1.FieldByName('idclave').asinteger <= 99)then
        nclave := '00' + inttostr(dm.ds1.FieldByName('idclave').asinteger + 1);

      if (dm.ds1.FieldByName('idclave').asinteger > 99) and (dm.ds1.FieldByName('idclave').asinteger <= 999)then
        nclave := '0' + inttostr(dm.ds1.FieldByName('idclave').AsInteger +1);

      if (dm.ds1.FieldByName('idclave').asinteger > 999)  then
        nclave := inttostr(dm.ds1.fieldbyname('idclave').AsInteger + 1);
    end;
end;

procedure TFrmactfisicas.Panel3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmactfisicas.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure TFrmactfisicas.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure TFrmactfisicas.pnlguardaClick(Sender: TObject);
var
 rebote:Boolean;
begin
  rebote:= false;

  if(DBEdit1.text =  '') then
    begin
      showmessage('Ingrese el nombre');
      rebote := true;
    end
  else
  begin
    if(DBEdit2.text= '' )then
    begin
      showmessage('Ingrese el apellido paterno');
      rebote := true;
    end
    else
    begin
      if(DBEdit3.text= '' )then
      begin
        showmessage('Ingrese el apellido materno');
        rebote:= true;
      end
      else
      begin
        if(DBEdit5.text= '' )then
        begin
          showmessage('Ingrese el lugar de nacimiento');
          rebote:= true;
        end
        else
        begin
          if(DBEdit10.text= '') then
          begin
            showmessage('Ingrese el folio id');

            rebote := true;
          end
          else
          begin
            if(DBEdit8.text= '' )then
            begin
              showmessage('Ingrese el CURP');
              rebote:= true;
            end
            else
            begin
              if (ComboBox2.Text='') or (ComboBox2.Text='Seleccione una opción') then
              begin
                showmessage('Seleccione un genero');
                rebote:= true;
              end
              else
              begin
                if(DBEdit20.text= '' )then
                begin
                  showmessage('Ingrese la calle');
                  rebote:= true;
                end
                else
                begin
                  if(DBEdit19.text= '' )then
                  begin
                    showmessage('Ingrese el numero interior');
                    rebote:= true;
                  end
                  else
                  begin
                    if(DBEdit18.text =  '') then
                    begin
                      showmessage('Ingrese el numero exterior');
                      rebote := true;
                    end
                    else
                    begin
                      if DBEdit17.text= '' then
                      begin
                        showmessage('Ingrese un numero de teléfono');
                        rebote := true;
                      end
                      else
                      begin
                        if DBEdit16.text= '' then
                        begin
                          showmessage('Ingrese un segundo numero de teléfono');
                          rebote:= true;
                        end
                        else
                        begin
                          if(edcp.Text='')then
                          begin
                            showmessage('Ingrese un código postal');
                            rebote:= true;
                          end
                          else
                          begin
                            if(RegimenCombo.Text='') then
                            begin
                              showmessage('Seleccione un regimen capital');
                              rebote:= true;
                            end
                            else
                            begin
                              if(ComboBox1.Text='')then
                              begin
                                showmessage('Seleccione un estado civil');
                                rebote:= true;
                              end
                              else
                              begin
                                if(DBEdit9.text='')then
                                begin
                                  showmessage('Ingrese la profesión');
                                  rebote:= true;
                                end;
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

  if (rebote=false) then
  begin
  DBedit1.Text:= dm.formatotexto(DBedit1.Text);
  DBedit2.Text:= dm.formatotexto(DBedit2.Text);
  DBedit3.Text:= dm.formatotexto(DBedit3.Text);
  DBedit5.Text:= dm.formatotexto(DBedit5.Text);
  DBedit6.Text:= dm.formatotexto(DBedit6.Text);
  DBedit10.Text:= dm.formatotexto(DBedit10.Text);
  DBedit8.Text:= dm.formatotexto(DBedit8.Text);
  DBedit20.Text:= dm.formatotexto(DBedit20.Text);
  DBedit19.Text:= dm.formatotexto(DBedit19.Text);
  DBedit18.Text:= dm.formatotexto(DBedit18.Text);
  DBedit17.Text:= dm.formatotexto(DBedit17.Text);
  DBedit16.Text:= dm.formatotexto(DBedit16.Text);
  DBedit15.Text:= dm.formatotexto(DBedit15.Text);
  DBedit21.Text:= dm.formatotexto(DBedit21.Text);
  DBedit22.Text:= dm.formatotexto(DBedit22.Text);
  DBedit9.Text:= dm.formatotexto(DBedit9.Text);
  DBedit11.Text:= dm.formatotexto(DBedit11.Text);
  DBedit12.Text:= dm.formatotexto(DBedit12.Text);
  DBedit13.Text:= dm.formatotexto(DBedit13.Text);

    if(envia='N')then
      begin
          dm.dsPersonasprs_nombre.Value:= Concat(DBEdit1.Text, DBEdit2.Text, DBEdit3.Text);
          dm.dsPersonasprs_estatus.Value:= 'ACTIVO';
          dm.dsPersonastpr_fk.Value:= frmpersonas.tipo;
          dm.dsPersonastpr_tipopersona.Value:= 'FISICAS';
          dm.dsPersonascp_fk.Value:=StrToInt(dm.idcp);
          obtenerclave;
          dm.dsPersonasprs_clave.Value:= nclave;
          dm.dsPersonas.Post;
          dm.ConsultaIDPersonas.Close;
          dm.ConsultaIDPersonas.Open;

          dm.dsfisicasfsc_fecnac.value := datetimepicker1.Date ;
          dm.dsfisicasfsc_edocivil.Value := Combobox1.Text;   //asigna el valor directamente al campo del dataset
          dm.dsfisicasfsc_genero.Value := Combobox2.Text;
          dm.dsfisicasprs_fk.Value:= StrToInt(DBEdit14.Text);

          if DBEdit11.Text='' then
            dm.dsfisicasfsc_numacc.Value:=0
          else
            dm.dsfisicasfsc_numacc.Value:= StrToInt(DBEdit11.Text);

          if DBEdit12.Text= '' then
            dm.dsfisicasfsc_importeaccion.Value:=0
          else
            dm.dsfisicasfsc_importeaccion.Value:=StrToFloat(DBEdit12.Text);

          if DBEdit13.Text= '' then
            dm.dsfisicasfsc_poraccion.Value:=0
          else
          dm.dsfisicasfsc_poraccion.Value:=StrToFloat(DBEdit13.Text);

          dm.dsfisicasfsc_numacc.Value:= StrToInt(DBEdit11.Text);
          dm.dsfisicasfsc_importeaccion.Value:= StrToFloat(DBEdit12.Text);
          dm.dsfisicasfsc_poraccion.Value:= StrToFloat(DBEdit13.Text);
          dm.dsfisicas.Post;

          dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(frmpersonas.tipo)+' and prs_estatus="ACTIVO"');
          dm.filtra(dm.dsfisicas, 'SELECT * FROM fisicas');
          dm.filtra(dm.dsPrsFisica, 'SELECT * FROM personas, fisicas WHERE personas.prs_id=fisicas.prs_fk');
          showMessage('Persona fisica agregada');
          close;
      end;
    if(envia='M')then
      begin
        dm.filtra(dm.dsfisicas, 'SELECT * FROM fisicas WHERE fisicas.prs_fk='+inttostr(dm.dsPrsFisicaprs_id.Value));
        dm.dsfisicas.Open;
        dm.dsfisicas.Edit;

        dm.dsfisicasfsc_fecnac.Value:= dateTimePicker1.Date;
        if DBEdit11.Text='' then
          dm.dsfisicasfsc_numacc.Value:=0
        else
          dm.dsfisicasfsc_numacc.Value:= StrToInt(DBEdit11.Text);

        if DBEdit12.Text= '' then
          dm.dsfisicasfsc_importeaccion.Value:=0
        else
          dm.dsfisicasfsc_importeaccion.Value:=StrToFloat(DBEdit12.Text);

        if DBEdit13.Text= '' then
          dm.dsfisicasfsc_poraccion.Value:=0
        else
          dm.dsfisicasfsc_poraccion.Value:=StrToFloat(DBEdit13.Text);

        dm.dsfisicas.ApplyUpdates;

        dm.cambia(dm.ds1, 'UPDATE personas SET prs_nombre="'+Concat(DBEdit1.Text, DBEdit2.Text, DBEdit3.Text)+
        '", prs_rfc="'+DBEdit6.Text+'", prs_calle="'+DBEdit20.Text+'", prs_noint="'+DBEdit19.Text+'", prs_noext="'+DBEdit18.Text+'", prs_tel1="'+DBEdit17.Text+
        '", prs_tel2="'+DBEdit16.Text+'", prs_tel3="'+DBEdit15.Text+'", prs_email="'+DBEdit21.Text+'", prs_url="'+DBEdit22.Text+'", rgc_fk='+IntToStr(RegimenCombo.KeyValue)+', cp_fk='+dm.idcp+' WHERE prs_id='+inttostr(dm.dsPrsFisicaprs_id.Value));

        dm.cambia(dm.ds1, 'UPDATE fisicas SET fsc_nombres="'+DBEdit1.Text+'", fsc_apaterno="'+DBEdit2.Text+'", fsc_amaterno="'+DBEdit3.Text+
        '", fsc_lugarnac="'+DBEdit5.Text+'", fsc_edocivil="'+ComboBox1.Text+'", fsc_genero="'+ComboBox2.Text+'", fsc_curp="'+DBEdit8.Text+
        '", fsc_profesion="'+DBEdit9.Text+'", fsc_folioid="'+DBEdit10.Text+'" WHERE prs_fk='+inttostr(dm.dsPrsFisicaprs_id.Value));

        dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(frmpersonas.tipo)+' and prs_estatus="ACTIVO"');
        dm.filtra(dm.dsfisicas, 'SELECT * FROM fisicas');
        dm.filtra(dm.dsPrsfisica, 'SELECT * FROM personas, fisicas WHERE personas.prs_id=fisicas.prs_fk');

        showMessage('Persona fisica modificada');
        close;
      end;
  end;

end;

procedure TFrmactfisicas.pnlguardaMouseLeave(Sender: TObject);
begin
  pnlguarda.Color := $00C08000;
end;

procedure TFrmactfisicas.pnlguardaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlguarda.Color := $00C1C760;
end;

end.
