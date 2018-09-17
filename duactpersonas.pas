unit duactpersonas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls;

type
  TFrmactpersonas = class(TForm)
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
    Label12: TLabel;
    Panel2: TPanel;
    pnlguarda: TPanel;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource3: TDataSource;
    DBEdit11: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    procedure Panel3Click(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
  private
    { Private declarations }
  public
    IdPersona:String;
    { Public declarations }
  end;

var
  Frmactpersonas: TFrmactpersonas;

implementation

{$R *.dfm}
uses dudm, duactfisicas, duactmorales;

procedure TFrmactpersonas.Panel3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmactpersonas.pnlguardaClick(Sender: TObject);
var
id:Integer;
Frmactfisicas: TFrmactFisicas;
Frmactmorales: TFrmactMorales;
rebote: Boolean;
begin

  rebote:=false;

  DBEdit11.Text := ComboBox1.Text;
  DBEdit12.Text := 'ACTIVO';
  DBEdit13.Text := '1';

  if(DBEdit1.text =  '') then
    begin
      showmessage('Ingrese una clave');
      rebote := true;
    end
  else
     begin
      if(DBEdit2.text= '' )then
        begin
          showmessage('Ingrese un nombre');
          rebote := true;
        end
      else
        begin
          if(DBEdit3.text= '' )then
            begin
              showmessage('Ingrese la calle');
              rebote:= true;
            end
          else
            begin
              if(DBEdit4.text= '' )then
                begin
                  showmessage('Ingrese el numero interior');
                  rebote:= true;
                end
              else
                begin
                  if(DBEdit5.text= '' )then
                    begin
                      showmessage('Ingrese el numero exterior');
                      rebote:= true;
                    end
                  else
                    begin
                      if(DBEdit5.text= '') or (DBEdit6.text= '')  then
                        begin
                          showmessage('Ingrese al menos 2 numeros de teléfono');
                          rebote:= true;
                        end
                      else
                        begin
                          if(ComboBox1.ItemIndex < 0) then
                            begin
                              showmessage('Seleccione un tipo de persona');
                              rebote:= true;
                            end;
                        end;
                    end;
                end;
            end;
        end;
     end;

  if (rebote=false) then
  begin
    //showMessage('Entro!!');
    dm.dsPersonas.Post;
    showMessage('Persona Agregada');
    close;
    dm.ConsultaIDPersonas.Close;
    dm.ConsultaIDPersonas.Open;
    if(ComboBox1.Text='FISICAS') then
      begin
        Frmactfisicas:= Tfrmactfisicas.Create(Application);
        Frmactfisicas.ShowModal;
      end;
    if(ComboBox1.Text='MORALES') then
      begin
        Frmactmorales:= Tfrmactmorales.Create(Application);
        Frmactmorales.ShowModal;
        dm.cambia(dm.dsPersonas, 'SELECT * FROM personas, morales WHERE personas.prs_id=morales.prs_fk');
      end;
  end;

end;

end.
