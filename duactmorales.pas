unit duactmorales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFrmactMorales = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DBEdit17: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DateTimePicker3: TDateTimePicker;
    DataSource2: TDataSource;
    Label18: TLabel;
    DataSource3: TDataSource;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    RegimenCombo: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    DBEdit3: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    DataSource4: TDataSource;
    DBEdit26: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lblmunestado: TLabel;
    lblcolonia: TLabel;
    edcp: TEdit;
    Label34: TLabel;
    Image2: TImage;
    edidcp: TEdit;
    procedure Panel3Click(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseLeave(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure obtenerclave;
  private
    { Private declarations }
  public
    { Public declarations }
    envia: char;
    nclave:string;
  end;

var
  FrmactMorales: TFrmactMorales;

implementation

{$R *.dfm}

uses dudm, duPersonas, ducp;

procedure TFrmactMorales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
end;

procedure TFrmactMorales.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblcolonia.caption := dm.colonia;
  lblmunestado.caption := dm.estado;
  edcp.text := dm.cp;
  edidcp.text := dm.idcp;
end;

procedure TFrmactMorales.FormShow(Sender: TObject);
begin
  if envia='N' then
  begin
    DateTimePicker1.Date:= Date;
    DateTimePicker2.Date:= Date;
    DateTimePicker3.Date:= Date;
  end;
  if envia = 'M' then
   begin
    dm.filtra(dm.dscp, 'select * from cp where cp.cp_id = ' +dm.dsPrsMoralcp_fk.AsString);
    dm.colonia:= dm.dscpcp_asentamiento.asstring + ', ' + dm.dscpcp_municipio.asstring;
    dm.estado:= dm.dscpcp_municipio.asstring + ', ' + dm.dscpcp_estado.asstring;
    dm.cp:= dm.dscpcp_codigopostal.asstring;
    dm.idcp:= dm.dscpcp_id.AsString;
    dm.filtra(dm.dsregimen, 'select * from regimencapital');
    regimencombo.keyvalue := dm.dsPrsMoralrgc_fk.AsString;
   end
   else
   begin
    dm.colonia:= '';
    dm.estado:='';
    dm.cp:='';
    dm.idcp:= '';
   end;

end;

procedure TFrmactMorales.Image2Click(Sender: TObject);
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

procedure TFrmactMorales.obtenerclave;
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

procedure TFrmactMorales.Panel3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmactMorales.Panel3MouseLeave(Sender: TObject);
begin
  Panel3.Color:=clRed;
end;

procedure TFrmactMorales.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Panel3.Color:=$008080FF;
end;

procedure TFrmactMorales.pnlguardaClick(Sender: TObject);
var
rebote: boolean;
begin
rebote:= false;

  if(DBEdit1.text =  '') then
  begin
      showmessage('Ingrese la razón social');
      rebote := true;
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
      if(DBEdit23.text= '' )then
      begin
        showmessage('Ingrese el numero interior');
        rebote:= true;
      end
      else
      begin
        if(DBEdit19.text =  '') then
        begin
          showmessage('Ingrese el numero exterior');
          rebote := true;
        end
        else
        begin
          if(DBEdit18.text= '')then
          begin
            showmessage('Ingrese un numero de teléfono');
            rebote := true;
          end
          else
          begin
            if (DBEdit16.text= '') then
            begin
              showmessage('Ingrese un segundo numero de teléfono');
              rebote := true;
            end
            else
            begin
              if(regimenCombo.Text= '' )then
              begin
                showmessage('Seleccione un regimen capital');
                rebote:= true;
              end
              else
              begin
                if(DBEdit4.text= '' )then
                begin
                  showmessage('Ingrese un numero de escritura');
                  rebote:= true;
                end
                else
                begin
                  if(DBEdit5.text= '' )then
                  begin
                    showmessage('Ingrese un folio de inscripcion');
                    rebote:= true;
                  end
                  else
                  begin
                    if(DBEdit6.text =  '') then
                    begin
                      showmessage('Ingrese un folio mercantil');
                      rebote := true;
                    end
                    else
                    begin
                      if(DBEdit7.text= '') then
                      begin
                        showmessage('Ingrese un lugar de registro');
                        rebote := true;
                      end
                      else
                      begin
                        if(DBEdit8.Text='')then
                        begin
                          showmessage('Ingrese un corporativo');
                          rebote:= true;
                        end
                        else
                        begin
                          if(DBEdit9.Text='')then
                          begin
                            showmessage('Ingrese un director general');
                            rebote:= true;
                          end
                          else
                          begin
                            if(ComboBox1.Text='') or (ComboBox1.Text='Seleccione una opción') then
                            begin
                              showmessage('Seleccione el modo administrador');
                              rebote:= true;
                            end
                            else
                            begin
                              if(DBEdit10.Text='')then
                              begin
                                  showmessage('Ingrese un gerente general');
                                  rebote:= true;
                              end
                              else
                              begin
                                if(DBEdit11.Text='')then
                                begin
                                  showmessage('Ingrese un administrador unico');
                                  rebote:= true;
                                end
                                else
                                begin
                                  if(DBEdit12.Text='')then
                                  begin
                                    showmessage('Ingrese un numero de escritura');
                                    rebote:= true;
                                  end
                                  else
                                  begin
                                    if(DBEdit13.Text='')then
                                    begin
                                      showmessage('Ingrese el folio de inscripción');
                                      rebote:= true;
                                    end
                                    else
                                    begin
                                      if(DBEdit14.Text='')then
                                      begin
                                        showmessage('Ingrese el folio mercantil');
                                        rebote:= true;
                                      end
                                      else
                                      begin
                                        if(DBEdit15.Text='')then
                                        begin
                                          showmessage('Ingrese la localidad del registro');
                                          rebote:= true;
                                        end
                                        else
                                        begin
                                          if(edcp.Text='')then
                                          begin
                                            showmessage('Ingrese un codigo postal');
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

  dm.filtra(dm.ds1, 'select * from morales where mrl_razonsocial= ' + quotedstr(dbedit1.text));
  if (dm.ds1.recordcount > 0) then
  begin
    showmessage('La razon social ya existe');
    rebote := true;
  end;

  if (rebote=false) then
  begin
  DBedit1.Text:= dm.formatotexto(DBedit1.Text);
  DBedit25.Text:= dm.formatotexto(DBedit25.Text);
  DBedit20.Text:= dm.formatotexto(DBedit20.Text);
  DBedit23.Text:= dm.formatotexto(DBedit23.Text);
  DBedit19.Text:= dm.formatotexto(DBedit19.Text);
  DBedit18.Text:= dm.formatotexto(DBedit18.Text);
  DBedit16.Text:= dm.formatotexto(DBedit16.Text);
  DBedit3.Text:= dm.formatotexto(DBedit3.Text);
  DBedit21.Text:= dm.formatotexto(DBedit21.Text);
  DBedit22.Text:= dm.formatotexto(DBedit22.Text);
  DBedit4.Text:= dm.formatotexto(DBedit4.Text);
  DBedit5.Text:= dm.formatotexto(DBedit5.Text);
  DBedit6.Text:= dm.formatotexto(DBedit6.Text);
  DBedit7.Text:= dm.formatotexto(DBedit7.Text);
  DBedit8.Text:= dm.formatotexto(DBedit8.Text);
  DBedit9.Text:= dm.formatotexto(DBedit9.Text);
  DBedit10.Text:= dm.formatotexto(DBedit10.Text);
  DBedit11.Text:= dm.formatotexto(DBedit11.Text);
  DBedit12.Text:= dm.formatotexto(DBedit12.Text);
  DBedit13.Text:= dm.formatotexto(DBedit13.Text);
  DBedit14.Text:= dm.formatotexto(DBedit14.Text);
  DBedit15.Text:= dm.formatotexto(DBedit15.Text);

  if(envia='N')then
    begin
      dm.dsPersonasprs_nombre.Value:= DBEdit1.Text;
      dm.dsPersonasprs_estatus.Value:= 'ACTIVO';
      dm.dsPersonastpr_fk.Value:= frmpersonas.tipo;
      dm.dsPersonastpr_tipopersona.Value:= 'MORALES';
      dm.dsPersonascp_fk.Value:=StrToInt(dm.idcp);
      obtenerclave;
      dm.dsPersonasprs_clave.Value:= nclave;
      dm.dsPersonas.Post;
      dm.ConsultaIDPersonas.Close;
      dm.ConsultaIDPersonas.Open;

      dm.dsmoralesmrl_fecconstitucion.Value:= dateTimePicker1.Date;
      dm.dsmoralesmrl_fecinscripcion.Value:= dateTimePicker2.Date;
      dm.dsmoralesprs_fk.Value:= StrToInt(DBEdit17.Text);
      dm.dsmoralesmrl_rlfecesc.Value:= dateTimePicker3.Date;
      dm.dsmoralesmrl_modoadmon.Value:= Combobox1.Text;
      dm.dsmorales.Post;
      dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(frmpersonas.tipo)+' and prs_estatus="ACTIVO"');
      dm.filtra(dm.dsmorales, 'SELECT * FROM morales');
      dm.filtra(dm.dsPrsMoral, 'SELECT * FROM personas, morales WHERE personas.prs_id=morales.prs_fk');
      showMessage('Persona moral agregada');
      close;
    end;
  if(envia='M')then
    begin
      dm.filtra(dm.dsmorales, 'SELECT * FROM morales WHERE morales.prs_fk='+inttostr(dm.dsPrsMoralprs_id.Value));
      dm.dsmorales.Open;
      dm.dsmorales.Edit;
      dm.dsmoralesmrl_fecconstitucion.Value:=dateTimePicker1.Date;
      dm.dsmoralesmrl_fecinscripcion.Value:=dateTimePicker2.Date;
      dm.dsmoralesmrl_rlfecesc.Value:=dateTimePicker3.Date;
      dm.dsmorales.ApplyUpdates;

      dm.cambia(dm.ds1, 'UPDATE personas SET prs_nombre="'+DBEdit1.Text+'", prs_rfc="'+DBEdit25.Text+'", prs_calle="'+DBEdit20.Text+
                        '", prs_noint="'+DBEdit23.Text+'", prs_noext="'+DBEdit19.Text+'", prs_tel1="'+DBEdit18.Text+'", prs_tel2="'+DBEdit16.Text+'", prs_tel3="'+DBEdit3.Text+
                        '", prs_email="'+DBEdit21.Text+'", prs_url="'+DBEdit22.Text+'", rgc_fk='+IntToStr(RegimenCombo.KeyValue)+', cp_fk='+dm.idcp+' WHERE prs_id='+inttostr(dm.dsPrsMoralprs_id.Value));

      dm.cambia(dm.ds1, 'UPDATE morales SET mrl_razonsocial="'+DBEdit1.Text+'", mrl_numescritura="'+DBEdit4.Text+'", mrl_folinscripcion="'+DBEdit5.Text+
                        '", mrl_folmercantil="'+DBEdit6.Text+'" , mrl_lugarreg="'+DBEdit7.Text+'", mrl_corporativo="'+DBEdit8.Text+'", mrl_dirgral="'+DBEdit9.Text+
                        '", mrl_gtegral="'+DBEdit10.Text+'", mrl_adminunico="'+DBEdit11.Text+'", mrl_rlnumescr="'+DBEdit12.Text+'", mrl_rlfolins="'+DBEdit13.Text+
                        '", mrl_rlfolmerc="'+DBEdit14.Text+'", mrl_rllocreg="'+DBEdit15.Text+'", mrl_modoadmon="'+Combobox1.Text+'" WHERE prs_fk='+inttostr(dm.dsPrsMoralprs_id.Value));

      dm.filtra(dm.dsPersonas, 'SELECT * FROM personas WHERE tpr_fk ='+IntToStr(frmpersonas.tipo)+' and prs_estatus="ACTIVO"');
      dm.filtra(dm.dsmorales, 'SELECT * FROM morales');
      dm.filtra(dm.dsPrsMoral, 'SELECT * FROM personas, morales WHERE personas.prs_id=morales.prs_fk');

      showMessage('Persona moral modificada');
      close;
    end;
  end;

end;

procedure TFrmactMorales.pnlguardaMouseLeave(Sender: TObject);
begin
    pnlguarda.Color := $00C08000;
end;

procedure TFrmactMorales.pnlguardaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    pnlguarda.Color := $00C1C760;
end;

end.
