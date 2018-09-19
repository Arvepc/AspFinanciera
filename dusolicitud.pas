unit dusolicitud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Buttons, Vcl.OleCtrls, SHDocVw, strutils;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmsolicitud = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    dtsmonedas: TDataSource;
    pnlcierra: TPanel;
    Label123: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    dtsplanpagos: TDataSource;
    dtsregimen: TDataSource;
    Panel4: TPanel;
    pnlguarda: TPanel;
    dblckplan_pagos: TDBLookupComboBox;
    Label67: TLabel;
    dtsactivosinmuebles: TDataSource;
    dsactivos_inmuebles: TZQuery;
    dtsmarca: TDataSource;
    dsmarca: TZQuery;
    dsmarcaid_marca: TIntegerField;
    dsmarcamarca: TWideStringField;
    dsmodelo: TZQuery;
    dtsmodelo: TDataSource;
    dsactivos_muebles: TZQuery;
    dtsactivosmuebles: TDataSource;
    dsactivos_mueblesslact_id: TIntegerField;
    dsactivos_mueblesslact_marca: TWideStringField;
    dsactivos_mueblesslact_tipomueb: TWideStringField;
    dsactivos_mueblesslact_valor: TFloatField;
    dsactivos_mueblesslact_modelo: TWideStringField;
    dtsbancos: TDataSource;
    dsMonedas: TZQuery;
    dtsmonedas2: TDataSource;
    dtssubproducto: TDataSource;
    dssubproducto: TZQuery;
    dtssubproducto2: TDataSource;
    dssubproductosbp_id: TIntegerField;
    dssubproductosbp_descripcion: TWideStringField;
    dssubproductotpr_fk: TIntegerField;
    edid: TEdit;
    dtspasivobanco: TDataSource;
    dtspasivonobanco: TDataSource;
    dtssolingreso: TDataSource;
    dtsactividades: TDataSource;
    dtssol_actividades: TDataSource;
    dtssolreferencias: TDataSource;
    dsgarantias: TZQuery;
    dtsgarantias: TDataSource;
    Panel5: TPanel;
    Label76: TLabel;
    Label78: TLabel;
    dblckppmain: TDBLookupComboBox;
    Label79: TLabel;
    Panel6: TPanel;
    pgmain: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cpg1: TCategoryPanelGroup;
    cpaval: TCategoryPanel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Image4: TImage;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    imgcpaval: TImage;
    ednombreaval: TEdit;
    cbxidaval: TComboBox;
    edfolioidaval: TEdit;
    edrfcaval: TEdit;
    edcpaval: TEdit;
    edestadoaval: TEdit;
    edmunicipioaval: TEdit;
    edcoloniaaval: TEdit;
    edtelcasaaval: TEdit;
    edcelularaval: TEdit;
    cbxcivilaval: TComboBox;
    edidaval: TEdit;
    edcalleaval: TEdit;
    edintaval: TEdit;
    edextaval: TEdit;
    garantias: TCategoryPanel;
    Label90: TLabel;
    Label75: TLabel;
    imggarantia: TImage;
    lblgarantia: TLabel;
    Label77: TLabel;
    btneliminagarantia: TSpeedButton;
    cbxtipogarantia: TComboBox;
    edvalorgarantia: TEdit;
    mmgarantia: TMemo;
    dbgrdgarantias: TDBGrid;
    relacionpat: TCategoryPanel;
    PageControl2: TPageControl;
    tabinmuebles: TTabSheet;
    Label95: TLabel;
    Label94: TLabel;
    Label93: TLabel;
    Label88: TLabel;
    imgactivo: TImage;
    lblrestantesinmuebles: TLabel;
    btneliminainmuebles: TSpeedButton;
    cbxtipoinmueble: TComboBox;
    dbgrdinmuebles: TDBGrid;
    edubicacioninmueble: TEdit;
    edvalorinmueble: TEdit;
    mminmuebles: TMemo;
    TABMUEBLES: TTabSheet;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    imgagregamueble: TImage;
    btneliminavehiculo: TSpeedButton;
    edtipomueble: TEdit;
    edvalormueble: TEdit;
    dbgrdvehiculo: TDBGrid;
    Referencias: TCategoryPanel;
    Label102: TLabel;
    Label104: TLabel;
    imgreferencias: TImage;
    btneliminareferencia: TSpeedButton;
    ednombreref: TEdit;
    edtelref: TEdit;
    dbgrdreferencia: TDBGrid;
    actividad: TCategoryPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    PageControl4: TPageControl;
    TabSheet1: TTabSheet;
    Label66: TLabel;
    Label68: TLabel;
    btneliminaactividad: TSpeedButton;
    imgactppal: TImage;
    dbgrdactividad: TDBGrid;
    dblckactividad: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    Label84: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    imgfingreso: TImage;
    btneliminafingreso: TSpeedButton;
    edimportefingreso: TEdit;
    edperiodofingreso: TEdit;
    edorigenfingreso: TEdit;
    dbgrdfingreso: TDBGrid;
    pasivos: TCategoryPanel;
    Label59: TLabel;
    PageControl3: TPageControl;
    tabbancarios: TTabSheet;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    imgpasivobanco: TImage;
    lblrestantebancario: TLabel;
    btneliminabancario: TSpeedButton;
    dblckbancos: TDBLookupComboBox;
    dblcktipocredito: TDBLookupComboBox;
    edmontobancario: TEdit;
    dblckmonedabancario: TDBLookupComboBox;
    dbgrdpasivobancario: TDBGrid;
    mmgarantiabancaria: TMemo;
    dtvencimiento: TDateTimePicker;
    tabnobancarios: TTabSheet;
    Label69: TLabel;
    Label70: TLabel;
    Label73: TLabel;
    Label72: TLabel;
    Label71: TLabel;
    Label74: TLabel;
    imgpasivonobanco: TImage;
    lblrestantenobancario: TLabel;
    btneliminanobancario: TSpeedButton;
    dblcktipocreditonobancario: TDBLookupComboBox;
    edmontonobancario: TEdit;
    dbgrdpasivonobancario: TDBGrid;
    dtvencimientonobanco: TDateTimePicker;
    dblckmonedasnobancario: TDBLookupComboBox;
    mmgarantianobancaria: TMemo;
    ednobancaria: TEdit;
    destinocred: TCategoryPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    eddescripcion: TEdit;
    edimporte: TEdit;
    edplazo: TEdit;
    edtasaord: TEdit;
    edperiodopago: TEdit;
    edcomision: TEdit;
    edgastos: TEdit;
    ediva: TEdit;
    edtotalgastos: TEdit;
    Profesión: TCategoryPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    DomicilioCon: TCategoryPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    imgconyuge: TImage;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    edcpcon: TEdit;
    edcoloniacon: TEdit;
    edmunicipiocon: TEdit;
    edestadocon: TEdit;
    edantiguedadcon: TEdit;
    edcallecon: TEdit;
    edintcon: TEdit;
    edidcpcon: TEdit;
    chkmismodom: TCheckBox;
    edextcon: TEdit;
    cpdomicilio: TCategoryPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Image1: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edcp: TEdit;
    edcolonia: TEdit;
    edmunicipio: TEdit;
    edestado: TEdit;
    edantiguedad: TEdit;
    edtelfam: TEdit;
    ednacion: TEdit;
    edcalle: TEdit;
    edext: TEdit;
    edint: TEdit;
    edtelcasa: TEdit;
    edcelular: TEdit;
    edcel2: TEdit;
    edcorreo: TEdit;
    edsexo: TEdit;
    edidcp: TEdit;
    cpdatosgenerales: TCategoryPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image2: TImage;
    ednombre: TEdit;
    cbxtipoid: TComboBox;
    edrfc: TEdit;
    dtfechanac: TDateTimePicker;
    edcurp: TEdit;
    edfolioid: TEdit;
    dbgrdexpediente: TDBGrid;
    dsexpediente: TZQuery;
    dtsexpediente: TDataSource;
    Label80: TLabel;
    btnupload: TSpeedButton;
    dsexpedientesld_id: TIntegerField;
    dsexpedientesol_fk: TIntegerField;
    dsexpedientesld_descripcion: TWideStringField;
    dsexpedientesld_documento: TBlobField;
    dsexpedientesld_estatus: TSmallintField;
    dsexpedienteestatus: TWideStringField;
    od1: TOpenDialog;
    Panel7: TPanel;
    wb1: TWebBrowser;
    pnlexpediente: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    btnmuestraexp: TSpeedButton;
    edprofesion: TEdit;
    Label21: TLabel;
    cbxestados: TComboBox;
    Label33: TLabel;
    dsmunicipios: TZQuery;
    dblckmunicipios: TDBLookupComboBox;
    dtsmunicipios: TDataSource;
    dsmunicipioscp_id: TIntegerField;
    dsmunicipioscp_municipio: TWideStringField;
    pnlconyuge: TPanel;
    cbxedocivil: TComboBox;
    dblckregimen: TComboBox;
    Label28: TLabel;
    edconyuge: TEdit;
    Label35: TLabel;
    dtfechaconyuge: TDateTimePicker;
    Label34: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    cbxtipoidconyuge: TComboBox;
    edfolioidconyuge: TEdit;
    edrfcconyuge: TEdit;
    edcontacto: TEdit;
    Label81: TLabel;
    edmarca: TEdit;
    edmodelo: TEdit;
    Label52: TLabel;
    edrecpropios: TEdit;
    edtotalbancario: TEdit;
    Label56: TLabel;
    Label82: TLabel;
    edtotalnobancario: TEdit;
    Label83: TLabel;
    edtotalfingreso: TEdit;
    Label85: TLabel;
    edtotalactivo: TEdit;
    Label89: TLabel;
    edtotalmaquinaria: TEdit;
    Label91: TLabel;
    edtotalgarantia: TEdit;
    imgaval: TImage;
    dtaval: TDateTimePicker;
    cbxregimenaval: TComboBox;
    edidcpaval: TEdit;
    dsavales: TZQuery;
    dsavalessol_fk: TIntegerField;
    dsavalesprs_fk: TIntegerField;
    dsavalesslp_nombre: TWideStringField;
    dsavalesslp_calle: TWideStringField;
    dsavalesslp_tel1: TWideStringField;
    dsavalesslp_email: TWideStringField;
    dsavalescp_fk: TIntegerField;
    dtsavales: TDataSource;
    btneliminaaval: TSpeedButton;
    edespecifica: TEdit;
    edlugarnac: TEdit;
    edidpersona: TEdit;
    Button1: TButton;
    pnllistaavales: TPanel;
    dbgrdaval: TDBGrid;
    pnlconyugeaval: TPanel;
    Label92: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label103: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label124: TLabel;
    ednombreconyugeaval: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    dtfechaconyugeaval: TDateTimePicker;
    cbxtipoidconyugeaval: TComboBox;
    edfolioidconyugeaval: TEdit;
    edrfcconyugeaval: TEdit;
    edidconyuge: TEdit;
    Button2: TButton;
    dsgarantiasslgr_id: TIntegerField;
    dsgarantiasslrg_tipo: TWideStringField;
    dsgarantiasslrg_descripcion: TWideStringField;
    dsgarantiasslrg_valor: TFloatField;
    dsgarantiassol_fk: TIntegerField;
    dsactivos_inmueblesslact_id: TIntegerField;
    dsactivos_inmueblesslact_ubicacion: TWideStringField;
    dsactivos_inmueblesslact_tipoinm: TWideStringField;
    dsactivos_inmueblesslact_valor: TFloatField;
    dsactivos_inmueblesslact_escritura: TWideStringField;
    procedure Label123Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure pnlguardaClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure imgactivoClick(Sender: TObject);
    procedure mminmueblesKeyPress(Sender: TObject; var Key: Char);
    procedure edvalorinmuebleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgagregamuebleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgpasivobancoClick(Sender: TObject);
    procedure mmgarantiabancariaKeyPress(Sender: TObject; var Key: Char);
    procedure imgpasivonobancoClick(Sender: TObject);
    procedure mmgarantianobancariaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdpasivobancarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminabancarioClick(Sender: TObject);
    procedure dbgrdpasivonobancarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminanobancarioClick(Sender: TObject);
    procedure imgfingresoClick(Sender: TObject);
    procedure dbgrdfingresoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminafingresoClick(Sender: TObject);
    procedure edorigenfingresoKeyPress(Sender: TObject; var Key: Char);
    procedure edimportefingresoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgactppalClick(Sender: TObject);
    procedure dbgrdactividadDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure imgreferenciasClick(Sender: TObject);
    procedure dbgrdreferenciaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminareferenciaClick(Sender: TObject);
    procedure dbgrdinmueblesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminainmueblesClick(Sender: TObject);
    procedure dbgrdvehiculoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminavehiculoClick(Sender: TObject);
    procedure dbgrdgarantiasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btneliminagarantiaClick(Sender: TObject);
    procedure imggarantiaClick(Sender: TObject);
    procedure edvalorgarantiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmgarantiaKeyPress(Sender: TObject; var Key: Char);
    procedure Image4Click(Sender: TObject);
    procedure chkmismodomClick(Sender: TObject);
    procedure imgconyugeClick(Sender: TObject);
    procedure imgcpavalClick(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure dbgrdexpedienteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnuploadClick(Sender: TObject);
    procedure btnmuestraexpClick(Sender: TObject);
    procedure edmontonobancarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edmontobancarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edvalormuebleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxestadosChange(Sender: TObject);
    procedure cbxedocivilChange(Sender: TObject);
    procedure dblckregimenChange(Sender: TObject);
    procedure imgavalClick(Sender: TObject);
    procedure btneliminaavalClick(Sender: TObject);
    procedure dbgrdavalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbxregimenavalKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure cpavalCollapse(Sender: TObject);
    procedure cbxregimenavalChange(Sender: TObject);
    procedure pnlguardaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlguardaMouseLeave(Sender: TObject);
    procedure edcpKeyPress(Sender: TObject; var Key: Char);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  {  FPrevCtrlFocused: TWinControl;
    procedure ActiveCtrlChange(Sender: TObject) ; }
      FPrevCtrlFocused: TWinControl;
    procedure ActiveCtrlChange(Sender: TObject) ;
    function quitacomas(txt : string) : string;
    function checaletra(valor: string): string;
    procedure valida;
    procedure crea_filtro;
    procedure guardafingreso;
    procedure agrega_aval_conyuge;
    procedure agrega_conyuge;
    procedure modifica_conyuge;
    procedure agrega_persona;
    procedure modifica_persona;
    procedure agrega_avalx;
  public
    { Public declarations }
envia: char;

  end;

var
  frmsolicitud: Tfrmsolicitud;
  rebote : boolean;  filtro:string;
nid : integer;  nagregaconyuge: boolean;
nclave: string;

implementation

{$R *.dfm}

uses duPersonas, dudm, ducp, duprincipal;

procedure Tfrmsolicitud.ActiveCtrlChange(Sender: TObject);
begin


  if FPrevCtrlFocused is TEdit then
  begin
    TEdit(FPrevCtrlFocused).Color:= clWindow;
    TEdit(FPrevCtrlFocused).font.Color:= clBlack;

  end;
  if Screen.ActiveControl is TEdit then
  begin
    TEdit(Screen.ActiveControl).Color:= $00C08000;
     TEdit(Screen.ActiveControl).Font.Color:= clwhite;
    FPrevCtrlFocused:= ActiveControl;
  end;





end;


procedure Tfrmsolicitud.agrega_conyuge;
var
nid: integer;
begin
                //esto es especificamente para guardar el conyuge si es que existe.......
     dm.filtra(dm.ds1, 'select max(prs_id) as idper from personas');


     dm.cambia(dm.ds2, 'insert into personas (prs_id, prs_nombre, prs_rfc, prs_calle, prs_noext, prs_noint, cp_fk, prs_tel1, prs_tel2, tpr_fk,  rgc_fk, tpr_tipopersona) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(edconyuge.text)) + ', ' +
     quotedstr(trim(edrfcconyuge.text)) + ', ' +
     quotedstr(trim(edcallecon.text)) + ', ' +
     quotedstr(trim(edextcon.text)) + ', ' +
     quotedstr(trim(edintcon.text)) + ', ' +
     quotedstr(trim(edidcpcon.text)) + ', ' +
     quotedstr(trim(edtelcasa.text)) + ', ' +
     quotedstr(trim(edcelular.text)) + ', ' +   //checar aqui por que el conyuge no toene cel
     ' 4,1,'+quotedstr('FISICAS')+')');

     //ahora en solicitud persona

     dm.cambia(dm.ds2, 'insert into solicitud_persona (sol_fk, prs_fk, slp_nombre, slp_calle, slp_tel1, cp_fk) values ('+
     edid.Text + ', '+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(edconyuge.text)) + ', ' +
     quotedstr(trim(edcallecon.text)) + ', ' +
     quotedstr(trim(edtelcasa.text)) + ', ' +
     quotedstr(trim(edidcpcon.text))+')');

    //ahora en fisicas.
     dm.cambia(dm.ds2, 'insert into fisicas (prs_fk, fsc_fecnac, fsc_tipoid, fsc_folioid, fsc_edocivil, fsc_regimencon) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(formatdatetime('yyyy-mm-dd',dtfechaconyuge.Date)) + ', ' +
     quotedstr(trim(cbxtipoidconyuge.text)) + ', ' +
      quotedstr(trim(edfolioidconyuge.text)) + ', ' +
      quotedstr(trim('CASADO')) + ', ' +
     quotedstr(trim(dblckregimen.text)) + ')');




end;

procedure Tfrmsolicitud.modifica_conyuge;
begin
                 //esto es especificamente para guardar el conyuge si es que existe.......
     dm.filtra(dm.ds1, 'select max(prs_id) as idper from personas');


     dm.cambia(dm.ds2, 'update personas set '+
     'prs_nombre =' + quotedstr(trim(edconyuge.text)) + ', '+
     'prs_rfc =' +quotedstr(trim(edrfcconyuge.text))+ ', '+
     'prs_calle =' +quotedstr(trim(edcallecon.text))+ ', '+
     'prs_noext =' +quotedstr(trim(edextcon.text))+ ', '+
     'prs_noint =' +quotedstr(trim(edintcon.text))+ ', '+
     'cp_fk =' +quotedstr(trim(edidcpcon.text))+ ', '+
     'prs_tel1 =' +quotedstr(trim(edtelcasa.text))+ ', '+
     'prs_tel2 =' +quotedstr(trim(edcelular.text))+ ', '+
     'where prs_id = '+ edidconyuge.text);


     //ahora en solicitud persona

     dm.cambia(dm.ds2, 'update solicitud_persona set '+
     'slp_nombre = '+quotedstr(trim(edconyuge.text))+', '+
     'slp_calle = '+quotedstr(trim(edcallecon.text))+', '+
     'slp_tel1 = '+ quotedstr(trim(edtelcasa.text))+', '+
     'cp_fk = '+quotedstr(trim(edidcpcon.text))+', '+
     'where sol_fk = ' + edid.Text +' and prs_fk =' + edidconyuge.Text );


    //ahora en fisicas.
     dm.cambia(dm.ds2, 'update fisicas set '+
     'fsc_fecnac = ' +quotedstr(formatdatetime('yyyy-mm-dd',dtfechaconyuge.Date))+ ', ' +
     'fsc_tipoid = ' +quotedstr(trim(cbxtipoidconyuge.text))+ ', ' +
     'fsc_folioid = ' +quotedstr(trim(edfolioidconyuge.text))+ ', ' +
     'fsc_regimencon = ' +quotedstr(trim(dblckregimen.text))+ ', ' +
     'where prs_fk = '+ edidconyuge.Text);

end;


procedure Tfrmsolicitud.agrega_avalx;
begin
     dm.filtra(dm.ds1, 'select max(prs_id) as idper from personas');


     dm.cambia(dm.ds2, 'insert into personas (prs_id, prs_nombre, prs_rfc, prs_calle, prs_noext, prs_noint, cp_fk, prs_tel1, prs_tel2, tpr_fk,  rgc_fk, tpr_tipopersona) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(ednombreaval.text)) + ', ' +
     quotedstr(trim(edrfcaval.text)) + ', ' +
     quotedstr(trim(edcalleaval.text)) + ', ' +
     quotedstr(trim(edextaval.text)) + ', ' +
     quotedstr(trim(edintaval.text)) + ', ' +
     quotedstr(trim(edidcpaval.text)) + ', ' +
     quotedstr(trim(edtelcasaaval.text)) + ', ' +
     quotedstr(trim(edcelularaval.text)) + ', ' +
     ' 3,1, '+ quotedstr('FISICAS')+')');

     //ahora en solicitud persona

     dm.cambia(dm.ds2, 'insert into solicitud_persona (sol_fk, prs_fk, slp_nombre, slp_calle, slp_tel1, cp_fk) values ('+
     edid.Text + ', '+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(ednombreaval.text)) + ', ' +
     quotedstr(trim(edcalleaval.text)) + ', ' +
     quotedstr(trim(edtelcasaaval.text)) + ', 0)');

    //ahora en fisicas.
     dm.cambia(dm.ds2, 'insert into fisicas (prs_fk, fsc_fecnac, fsc_tipoid, fsc_folioid, fsc_edocivil, fsc_regimencon) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(formatdatetime('yyyy-mm-dd',dtaval.Date)) + ', ' +
     quotedstr(trim(cbxidaval.text)) + ', ' +
      quotedstr(trim(edfolioidaval.text)) + ', ' +
      quotedstr(trim(cbxcivilaval.text)) + ', ' +
     quotedstr(trim(cbxregimenaval.text)) + ')');


//ahora a armar el dataset

dm.filtra(dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 3 and solicitud_persona.sol_fk =' + edid.Text);

end;


procedure tfrmsolicitud.modifica_persona;
begin
   //aqui se tiene que modificar los datos de la persona



        dm.cambia(dm.ds1, 'update personas set '+
        'prs_nombre = '+quotedstr(trim(ednombre.Text))+ ', '+
        'prs_rfc = '+quotedstr(trim(edrfc.Text))+ ', '+
        'prs_calle = '+quotedstr(trim(edcalle.Text))+ ', '+
        'prs_noint = '+quotedstr(trim(edint.Text))+ ', '+
        'prs_noext = '+quotedstr(trim(edext.Text))+ ', '+
        'prs_tel1 = '+quotedstr(trim(edtelcasa.Text))+ ', '+
        'prs_tel2 = '+quotedstr(trim(edcelular.Text))+ ', '+
        'prs_tel3 = '+quotedstr(trim(edcel2.Text))+ ', '+
        'prs_email = '+quotedstr(trim(edcorreo.Text))+ ', '+
        'cp_fk = '+edidcp.text+ ' '+
        'where prs_id = '+ edidpersona.Text );



 //ahora actualizo en fisicas
     dm.cambia(dm.ds2, 'update fisicas set '+
     'fsc_nombres = ' +quotedstr(trim(ednombre.Text))+', ' +
     'fsc_fecnac = ' +quotedstr(formatdatetime('yyyy-mm-dd', dtfechanac.Date))+', ' +
     'fsc_lugarnac = ' + quotedstr(trim(edlugarnac.Text))+', ' +
     'fsc_edocivil = ' + quotedstr(trim(cbxedocivil.Text))+', ' +
     'fsc_genero = ' +quotedstr(trim(edsexo.Text))+', ' +
     'fsc_curp = ' +quotedstr(trim(edcurp.Text))+', ' +
     'fsc_profesion = ' +quotedstr(trim(edprofesion.Text))+', ' +
     'fsc_folioid = ' +quotedstr(trim(edfolioid.Text))+', ' +
     'fsc_regimencon = ' +quotedstr(trim(dblckregimen.Text))+', ' +
     'fsc_tipoid = ' +quotedstr(trim(cbxtipoid.Text))+', ' +
     'where prf_fk = '+ edidpersona.Text );

// ahora checo si tengo que agregar el conyuge



if edconyuge.Text <> '' then
   modifica_conyuge;

 nid := strtoint(edidpersona.Text);


end;

procedure Tfrmsolicitud.agrega_persona;

begin
  //aqui se tiene que agregar en persona y rescatar su id
    //inserto en persona
   dm.filtra(dm.ds1, 'select max(prs_id) as id from personas');
            if dm.ds1.fieldbyname('id').asstring = '' then
            nid := 1
            else
            nid := dm.ds1.fieldbyname('id').asInteger + 1;


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


        dm.cambia(dm.ds1, 'insert into personas (prs_id, prs_clave, prs_nombre, prs_rfc, prs_calle, prs_noint, prs_noext, prs_tel1, prs_tel2, prs_tel3, prs_email, prs_estatus, rgc_fk, tpr_fk, tpr_tipopersona, cp_fk) values (' +
        inttostr(nid) + ', ' +
        quotedstr(nclave) + ', '+
        quotedstr(trim(ednombre.Text)) + ', ' +
        quotedstr(trim(edrfc.Text)) + ', ' +
        quotedstr(trim(edcalle.Text)) + ', ' +
        quotedstr(trim(edint.Text)) + ', ' +
        quotedstr(trim(edext.Text)) + ', ' +
        quotedstr(trim(edtelcasa.Text)) + ', ' +
        quotedstr(trim(edcelular.Text)) + ', ' +
        quotedstr(trim(edcel2.Text)) + ', ' +
        quotedstr(trim(edcorreo.Text)) + ', ' +
        quotedstr('ACTIVO') + ', 1,1, '+ quotedstr('FISICAS')+', '+ edidcp.text +')');

 //ahora inserto en fisicas
     dm.cambia(dm.ds2, 'insert into fisicas(fsc_nombres, prs_fk, fsc_fecnac, fsc_lugarnac, fsc_edocivil, fsc_genero, fsc_curp, fsc_profesion, fsc_folioid, fsc_regimencon, fsc_tipoid) values ('+
       quotedstr(trim(ednombre.Text)) + ', ' +
       inttostr(nid) + ', ' +
       quotedstr(formatdatetime('yyyy-mm-dd', dtfechanac.Date)) + ', ' +
       quotedstr(trim(cbxestados.Text) + ' ' + trim(dblckmunicipios.Text)) + ', ' +
       quotedstr(trim(cbxedocivil.Text)) + ', ' +
       quotedstr(trim(edsexo.Text)) + ', ' +
       quotedstr(trim(edcurp.Text)) + ', ' +
       quotedstr(trim(edprofesion.Text)) + ', ' +
       quotedstr(trim(edfolioid.Text)) + ', ' +
       quotedstr(trim(dblckregimen.Text)) + ', ' +
       quotedstr(trim(cbxtipoid.Text)) + ')');
// ahora checo si tengo que agregar el conyuge



if edconyuge.Text <> '' then
   agrega_conyuge;



end;


procedure Tfrmsolicitud.guardafingreso;
begin

rebote := false;


if (edimportefingreso.text = '') then
   begin
     showmessage('Debe indicar un importe... ');

     rebote := true;
   end;



 if (edperiodofingreso.text = '') then
   begin
     showmessage('Debe indicar la periodicidad del ingreso... ');

     rebote := true;
   end;



  if (edorigenfingreso.text = '') then
   begin
     showmessage('Debe Indicar un origen... ');

     rebote := true;
   end;



   if (rebote = false) then
   begin

     dm.cambia(dm.ds1, 'insert into sol_ingresos (sol_fk, slin_origen, slin_periodicidad, slin_importe) values ('+
     edid.text + ', ' +
     quotedstr(edorigenfingreso.text) + ', ' +
     quotedstr(edperiodofingreso.text) + ', ' +
     quitacomas(edimportefingreso.text) + ')');

   


    dm.filtra(dm.dssolingreso, dm.con_sol_ingresos + ' where sol_fk= ' + edid.text);  //aqui falta el id correcto de la solicitud

    edtotalfingreso.Text :=  floattostr(strtofloat(edtotalfingreso.Text) + strtofloat(edimportefingreso.text));
    actividad.Caption := 'Actividad Economica ' + ' Fuentes de ingreso: ' + edtotalfingreso.Text;

    edorigenfingreso.text := '';
    edperiodofingreso.text := '';
    edimportefingreso.text := '';

   end;
end;


procedure Tfrmsolicitud.agrega_aval_conyuge;
var
nid: integer;
begin

     dm.filtra(dm.ds1, 'select max(prs_id) as idper from personas');


     dm.cambia(dm.ds2, 'insert into personas (prs_id, prs_nombre, prs_rfc, prs_calle, prs_noext, prs_noint, cp_fk, prs_tel1, prs_tel2, tpr_fk,  rgc_fk, tpr_tipopersona) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(ednombreconyugeaval.text)) + ', ' +
     quotedstr(trim(edrfcconyugeaval.text)) + ', ' +
     quotedstr(trim(edcalleaval.text)) + ', ' +
     quotedstr(trim(edextaval.text)) + ', ' +
     quotedstr(trim(edintaval.text)) + ', ' +
     quotedstr(trim(edidcpaval.text)) + ', ' +
     quotedstr(trim(edtelcasaaval.text)) + ', ' +
     quotedstr(trim(edcelularaval.text)) + ', ' +   //checar aqui por que el conyuge no toene cel
     ' 11,1, ' +quotedstr('FISICAS')+')');

     //ahora en solicitud persona

     dm.cambia(dm.ds2, 'insert into solicitud_persona (sol_fk, prs_fk, slp_nombre, slp_calle, slp_tel1, cp_fk) values ('+
     edid.Text + ', '+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(trim(ednombreconyugeaval.text)) + ', ' +
     quotedstr(trim(edcalleaval.text)) + ', ' +
     quotedstr(trim(edtelcasaaval.text)) + ', 0)');

    //ahora en fisicas.
     dm.cambia(dm.ds2, 'insert into fisicas (prs_fk, fsc_fecnac, fsc_tipoid, fsc_folioid, fsc_edocivil, fsc_regimencon) values ('+
     inttostr(dm.ds1.FieldByName('idper').AsInteger + 1) + ', ' +
     quotedstr(formatdatetime('yyyy-mm-dd',dtfechaconyugeaval.Date)) + ', ' +
     quotedstr(trim(cbxtipoidconyugeaval.text)) + ', ' +
      quotedstr(trim(edfolioidconyugeaval.text)) + ', ' +
      quotedstr(trim('CASADO')) + ', ' +
     quotedstr(trim(cbxregimenaval.text)) + ')');


//ahora a armar el dataset

dm.filtra(dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and ((personas.tpr_fk = 3) or (personas.tpr_fk = 11)) and solicitud_persona.sol_fk =' + edid.Text);









end;


procedure Tfrmsolicitud.btneliminaavalClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar el aval: ' + dsavalesslp_nombre.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin
            dm.cambia(dm.ds1, 'delete from solicitud_persona where sol_fk= '+ edid.text + ' and prs_fk ='+ dsavalesprs_fk.AsString  );
             dm.filtra(dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and ((personas.tpr_fk = 3) or (personas.tpr_fk = 11)) and solicitud_persona.sol_fk =' + edid.Text);
          end;
end;

procedure Tfrmsolicitud.btneliminabancarioClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar de pasivo bancario: ' + dm.dspasivosbancoslpsv_institucion.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin

          edtotalbancario.Text :=  floattostr(strtofloat(edtotalbancario.Text) - dm.dspasivosbancoslpsv_monto.Value);
    pasivos.Caption := 'PASIVOS(cifras en miles de pesos) ' + ' Bancarios: ' + edtotalbancario.Text + ' No bancarios: ' + edtotalnobancario.text;

            dm.cambia(dm.ds1, 'delete from sol_pasivo where sol_pasivo.slpsv_id = '+ dm.dspasivosbancoslpsv_id.AsString);
            dm.filtra(dm.dspasivosbanco, dm.con_pasivosbanco + ' and sol_fk= ' + edid.Text);
          end;
end;

procedure Tfrmsolicitud.btneliminafingresoClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar la fuente de ingresos : ' + dm.dssolingresoslin_origen.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin

            edtotalfingreso.Text :=  floattostr(strtofloat(edtotalfingreso.Text) - dm.dssolingresoslin_importe.Value);
    actividad.Caption := 'Actividad Economica ' + ' Fuentes de ingreso: ' + edtotalfingreso.Text;


            dm.cambia(dm.ds1, 'delete from sol_ingresos where slin_id = '+ dm.dssolingresoslin_id.AsString);
            dm.filtra(dm.dssolingreso, dm.con_sol_ingresos + ' where sol_fk= ' + edid.text);





          end;
end;

procedure Tfrmsolicitud.btneliminagarantiaClick(Sender: TObject);
begin




 if messagedlg('Confirme que desea eliminar la garantia de tipo: ' + dsgarantiasslrg_tipo.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin

             edtotalgarantia.Text :=  floattostr(strtofloat(edtotalgarantia.Text) - dsgarantiasslrg_valor.Value);
    pasivos.Caption := 'Garantias Hipotecarias Ofrecidas Total:' + edtotalgarantia.Text;

            dm.cambia(dm.ds1, 'delete from sol_garantia where slgr_id = '+ dsgarantiasslgr_id.AsString);
           dm.filtra(dsgarantias, 'select * from sol_garantia where sol_fk =' + edid.Text);

          end;
end;

procedure Tfrmsolicitud.btneliminainmueblesClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar el inmueble : ' + dsactivos_inmueblesslact_ubicacion.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin

            edtotalactivo.Text :=  floattostr(strtofloat(edtotalactivo.Text) - dsactivos_inmueblesslact_valor.value);
    relacionpat.Caption := 'Relación Patrimonial del solicitante ' + ' Inmuebles: ' + edtotalactivo.Text + ' Maquinaria y Eaquipo: ' + edtotalmaquinaria.text;





            dm.cambia(dm.ds1, 'delete from sol_activos where slact_id = '+ dsactivos_inmueblesslact_id.AsString);
           dm.filtra(dsactivos_inmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura from '+
'sol_activos where  slact_tipoinm is not null and sol_fk = ' + edid.Text);

          end;
end;

procedure Tfrmsolicitud.btneliminanobancarioClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar de pasivo no bancario: ' + dm.dspasivosnobancoslpsv_institucion.AsString ,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin

                    edtotalnobancario.Text :=  floattostr(strtofloat(edtotalnobancario.Text) - dm.dspasivosnobancoslpsv_monto.Value);
    pasivos.Caption := 'PASIVOS(cifras en miles de pesos) ' + ' Bancarios: ' + edtotalbancario.Text + ' No bancarios: ' + edtotalnobancario.text;

            dm.cambia(dm.ds1, 'delete from sol_pasivo where sol_pasivo.slpsv_id = '+ dm.dspasivosnobancoslpsv_id.asString);
            dm.filtra(dm.dspasivosnobanco, dm.con_pasivosnobanco + ' and sol_fk= ' + edid.Text);
          end;
end;

procedure Tfrmsolicitud.btneliminareferenciaClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar la referencia: ' + dm.dssolreferenciasslp_nombre.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin
            dm.cambia(dm.ds1, 'delete from solicitud_persona where sol_fk= '+ edid.text + ' and prs_fk ='+ dm.dssolreferenciasprs_fk.AsString  );
            dm.filtra(dm.dssolreferencias, dm.con_solreferencias + edid.text);
          end;
end;

procedure Tfrmsolicitud.btneliminavehiculoClick(Sender: TObject);
begin
 if messagedlg('Confirme que desea eliminar el vehiculo : ' + dsactivos_mueblesslact_marca.AsString + ' ' + dsactivos_mueblesslact_modelo.AsString,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin


              edtotalmaquinaria.Text :=  floattostr(strtofloat(edtotalmaquinaria.Text) - dsactivos_mueblesslact_valor.value);
    relacionpat.Caption := 'Relación Patrimonial del solicitante ' + ' Inmuebles: ' + edtotalactivo.Text + ' Maquinaria y Eaquipo: ' + edtotalmaquinaria.text;







            dm.cambia(dm.ds1, 'delete from sol_activos where slact_id = '+ dsactivos_mueblesslact_id.AsString);
             dm.filtra(dsactivos_muebles, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
        'sol_activos where  slact_tipomueb is not null and sol_fk = 0');

          end;

end;

procedure Tfrmsolicitud.btnmuestraexpClick(Sender: TObject);
var
url : string;
begin

if dsexpediente.FieldByName('estatus').AsString = 'ENTREGADO' then
  begin

      wb1.Align := alclient;


      dsexpedientesld_documento.SaveToFile(ExtractFilePath( Application.ExeName ) + 'TEMP_' + '.pdf');
      wb1.Visible := true;

      URL := 'file://'+ ExtractFilePath( Application.ExeName ) + 'TEMP_' + '.pdf';
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
end;

end;

procedure Tfrmsolicitud.btnuploadClick(Sender: TObject);
var
nombre, url: string;
begin

Od1.Execute;
   nombre := Od1.FileName;
   if  nombre <> '' then
   begin

   wb1.FreeOnRelease;
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

    wb1.Width:= image1.Width;
    wb1.Align := alClient;
    URL := nombre;
    wb1.Navigate(WideString(URL));
    while wb1.ReadyState <> READYSTATE_COMPLETE do
    begin
      Application.ProcessMessages;
      Sleep(0);
    end;

    end;

   end;





end;

procedure Tfrmsolicitud.Button1Click(Sender: TObject);
begin
agrega_persona;
end;

procedure Tfrmsolicitud.Button2Click(Sender: TObject);
begin
Screen.OnActiveControlChange := ActiveCtrlChange;
  FPrevCtrlFocused:= Screen.ActiveControl;
end;

procedure Tfrmsolicitud.cbxedocivilChange(Sender: TObject);
begin
if cbxedocivil.ItemIndex = 1 then
   dblckregimen.Enabled := true
   else
   begin
   dblckregimen.Enabled := false;
   dblckregimen.ItemIndex := -1;
   end;
end;

procedure Tfrmsolicitud.cbxestadosChange(Sender: TObject);
begin


dsmunicipios.Close;
dsmunicipios.SQL.Clear;
dsmunicipios.SQL.Text := 'select cp_id, cp_municipio from cp where cp_estado = '+ quotedstr(trim(cbxestados.text)) + ' group by cp_municipio';
dsmunicipios.Open;

end;

procedure Tfrmsolicitud.cbxregimenavalChange(Sender: TObject);
begin
if ((cbxcivilaval.Text = TRIM('CASADO')) AND (cbxregimenaval.Text = TRIM('SOCIEDAD CONYUGAL'))) then
     begin nagregaconyuge:= true;  pnlconyugeaval.Visible := TRUE ;  pnlconyugeaval.Height := 100; pnllistaavales.Height := 140; dbgrdaval.Height := 114; end
     ELSE
     begin nagregaconyuge := false; PNLCONYUGEaval.Visible := FALSE;  pnllistaavales.Height := 240; dbgrdaval.Height := 214; end;
end;

procedure Tfrmsolicitud.cbxregimenavalKeyPress(Sender: TObject; var Key: Char);
begin
        {
if key = #13 then

agrega_aval ; }


end;

function Tfrmsolicitud.checaletra(valor: string): string;
var
mal, x, y: integer;
encontrado: boolean;
cad : string;
nums : array [1..12] of string;
begin

nums[1] := '1';
nums[2] := '2';
nums[3] := '3';
nums[4] := '4';
nums[5] := '5';
nums[6] := '6';
nums[7] := '7';
nums[8] := '8';
nums[9] := '9';
nums[10] := '0';
nums[11] := '.';
nums[12] := ',';


cad:= '';

for x := 1 to valor.Length do
begin

     encontrado := false;

    for y := 1 to 12 do
          begin

               if(valor[x] = nums[y]) then
                begin
                encontrado := true;
                break;
                end;

          end;

      if encontrado = true then
         cad := cad + valor[x] ;

end;




result := cad;

end;

procedure Tfrmsolicitud.chkmismodomClick(Sender: TObject);
begin

if (chkmismodom.Checked = true) then
    begin
     edcallecon.Text :=  edcalle.Text;
     edextcon.Text :=  edext.Text;
     edintcon.Text := edint.Text;
     edcpcon.Text := edcp.Text;
     edidcpcon.Text := edidcpcon.Text;
     edcoloniacon.Text := edcolonia.Text;
     edmunicipiocon.Text := edmunicipio.Text;
     edestadocon.Text := edestado.Text;
     edantiguedadcon.Text := edantiguedad.Text;
     edidcpcon.Text := edidcp.Text;
    end
    else
    begin
     edcallecon.Text :=  '';
     edextcon.Text :=  '';
     edintcon.Text := '';
     edcpcon.Text := '';
     edidcpcon.Text := '';
     edcoloniacon.Text := '';
     edmunicipiocon.Text := '';
     edestadocon.Text := '';
     edantiguedadcon.Text := '';
    end;



end;

procedure Tfrmsolicitud.cpavalCollapse(Sender: TObject);
begin   {
if cpaval.Collapsed = false then
//busca si hay aval

begin

//primero validar si no existe ya un conyge aval


dm.filtra(dm.ds1, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 11 and solicitud_persona.sol_fk =' + edid.Text);

if (dm.ds1.FieldByName('sol_fk').Value = null) then //no hay nada que insertar
   begin

   end
   else
   begin




   end;





dm.filtra(dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and ((personas.tpr_fk = 3) or (personas.tpr_fk = 11)) and solicitud_persona.sol_fk =' + edid.Text);

end;



}

end;

function Tfrmsolicitud.quitacomas(txt: string): string;
var
x: integer;
cad : string;
begin

cad := '';

for x := 1 to txt.Length do
begin
               if(txt[x] <> ',') then
               cad := cad + txt[x] ;
end;

result := cad;
end;

procedure Tfrmsolicitud.crea_filtro;
var
npp_fk, nfolio, nclicp : integer;
nfoliosol: string;
nmonto, nmontoaut, nplazo, ncomision, ngastos, ntasaord, ntasamor, nperiodicidad, niva, nfreccapint, nfrecpagcap, nfrecpagint  : real;

nfecha, nfecaproba, nclinac: tdate;
ndestino, nprodseg, nproducto, nclinombre, nclirfc, nclicalle, nclinoint, nclinoext, nclicol, sol_cliant,
nclitel1, nclitel2, nclitel3, nclitel4, ncliemail,  nclireg : string;

begin
filtro:= '';


if envia = 'N' then
begin
dm.filtra(dm.ds1,'select max(sol_folio) as cta from solicitudes ');
nfoliosol := inttostr(dm.ds1.FieldByName('cta').asinteger + 1 );
end

else
nfoliosol := dm.dssolicitudessol_folio.AsString;


{dm.filtra(dm.ds2, 'select * from productos where prd_id = ' + dm.dsplan_pagosprd_fk.asString);

if dm.ds2.fieldbyname('prd_id').value <> null then
 begin
  nprodseg := dm.ds2.fieldbyname('prd_prefijofolio').asString;
  nproducto := dm.ds2.fieldbyname('prd_Descripcion').asString;
 end
 else
 begin
 Showmessage('No se localizaron los datos del producto');
 rebote := false;
 end;
 }



filtro := filtro  + 'update solicitudes '+
'set sol_folio= '+ nfoliosol +', '+
'sol_fecha= '+quotedstr(formatdatetime('yyyy-mm-dd', date))+', '+
'sol_monto= '+ edimporte.text +', '+
'sol_montoaut= 0, '+
'sol_plazo = '+edplazo.text+', '+
'pp_fk='+dm.dsplan_pagospp_id.AsString+', '+
'sol_destino = '+quotedstr(eddescripcion.text)+', '+
'sol_tasaord = '+dm.dsplan_pagospp_tord.AsString+', '+
'sol_tasamor ='+ dm.dsplan_pagospp_tmor.AsString+', '+
'sol_periodicidad='+ dm.dsplan_pagospp_periodicidad.AsString+ ', '+
'sol_iva = '+ediva.text+', '+
'sol_freccapint = '+dm.dsplan_pagospp_freccapint.AsString+', '+
'sol_frecpagcap = '+dm.dsplan_pagospp_frecpagcap.AsString+', '+
'sol_frecpagint = '+dm.dsplan_pagospp_frecpagint.AsString+', '+
'sol_prodseg = '+quotedstr(nprodseg)+', '+
'sol_producto = '+quotedstr(nproducto)+', '+
'sol_clinombre = '+quotedstr(ednombre.text)+', '+
'sol_clirfc = '+quotedstr(edrfc.text)+', '+
'sol_clicalle = '+quotedstr(edcalle.text)+', '+
'sol_clinoint = '+ quotedstr(edint.text)+', '+
'sol_clinoext = '+quotedstr(edext.text)+', '+
'sol_clicol = '+quotedstr(edcolonia.text)+', '+
'sol_clicp = '+edidcp.text+', '+
'sol_cliant = '+quotedstr(edantiguedad.text)+', '+
'sol_clitel1 = '+quotedstr(edtelcasa.text)+', '+
'sol_clitel2 = '+quotedstr(edcelular.text)+', '+
'sol_clitel3 = '+quotedstr(edcel2.text)+', '+
'sol_clitel4 = '+quotedstr(edtelfam.text)+', '+
'sol_cliemail = '+quotedstr(edcorreo.text)+', '+
'sol_clinac = '+quotedstr(formatdatetime('yyyy-mm-dd', dtfechanac.date))+', '+
'sol_clireg = '+quotedstr(dblckregimen.text)+', '+
'sol_comision = '+edcomision.text+', '+
'sol_gastos = '+edgastos.text +
//'sol_actividad = '++  checar por que no esta esta en otra tabla sol_act
' where sol_id = '+ edid.text;


end;

procedure Tfrmsolicitud.dbgrdactividadDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdactividad) do MRect:= CellRect (3,Row);

btneliminaactividad.Parent := dbgrdactividad ;
btneliminaactividad.Left := (MRect.Right - btneliminaactividad.Width) ;
btneliminaactividad.Top := MRect.Top ;
btneliminaactividad.Height := (MRect.Bottom-MRect.Top);






if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdactividad.Canvas.Brush.Color:= $00C08200;
    dbgrdactividad.Canvas.Font.Color := clwhite;
    dbgrdactividad.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure Tfrmsolicitud.dbgrdexpedienteDrawColumnCell(Sender: TObject;
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

procedure Tfrmsolicitud.dbgrdfingresoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdfingreso) do MRect:= CellRect (4,Row);

btneliminafingreso.Parent := dbgrdfingreso ;
btneliminafingreso.Left := (MRect.Right - btneliminafingreso.Width) ;
btneliminafingreso.Top := MRect.Top ;
btneliminafingreso.Height := (MRect.Bottom-MRect.Top);

  //





if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdfingreso.Canvas.Brush.Color:= $00C08200;
    dbgrdfingreso.Canvas.Font.Color := clwhite;
    dbgrdfingreso.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure Tfrmsolicitud.dbgrdpasivobancarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdpasivobancario) do MRect:= CellRect (7,Row);

btneliminabancario.Parent := dbgrdpasivobancario ;
btneliminabancario.Left := (MRect.Right - btneliminabancario.Width) ;
btneliminabancario.Top := MRect.Top ;
btneliminabancario.Height := (MRect.Bottom-MRect.Top);

  //


  frmprincipal.colorgrid(Rect, sender, dbgrdpasivobancario, DataCol, Column, State);




end;

procedure Tfrmsolicitud.dbgrdpasivonobancarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
MRect : TRect ;



  begin

with TCrackDBGrid (dbgrdpasivonobancario) do MRect:= CellRect (7,Row);

btneliminanobancario.Parent := dbgrdpasivonobancario ;
btneliminanobancario.Left := (MRect.Right - btneliminanobancario.Width) ;
btneliminanobancario.Top := MRect.Top ;
btneliminanobancario.Height := (MRect.Bottom-MRect.Top);



frmprincipal.colorgrid(Rect, sender, dbgrdpasivonobancario, DataCol, Column, State);


  {
if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdpasivonobancario.Canvas.Brush.Color:= $00C08200;
    dbgrdpasivonobancario.Canvas.Font.Color := clwhite;
    dbgrdpasivonobancario.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end; }
end;

procedure Tfrmsolicitud.dbgrdreferenciaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdreferencia) do MRect:= CellRect (3,Row);

btneliminareferencia.Parent := dbgrdreferencia ;
btneliminareferencia.Left := (MRect.Right - btneliminareferencia.Width) ;
btneliminareferencia.Top := MRect.Top ;
btneliminareferencia.Height := (MRect.Bottom-MRect.Top);






if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdreferencia.Canvas.Brush.Color:= $00C08200;
    dbgrdreferencia.Canvas.Font.Color := clwhite;
    dbgrdreferencia.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure Tfrmsolicitud.dbgrdvehiculoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdvehiculo) do MRect:= CellRect (5,Row);

btneliminavehiculo.Parent := dbgrdvehiculo ;
btneliminavehiculo.Left := (MRect.Right - btneliminavehiculo.Width) ;
btneliminavehiculo.Top := MRect.Top ;
btneliminavehiculo.Height := (MRect.Bottom-MRect.Top);






if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdvehiculo.Canvas.Brush.Color:= $00C08200;
    dbgrdvehiculo.Canvas.Font.Color := clwhite;
    dbgrdvehiculo.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure Tfrmsolicitud.dbgrdavalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
frmprincipal.colorgrid(Rect, sender, dbgrdaval, DataCol, Column, State);

end;

procedure Tfrmsolicitud.dblckregimenChange(Sender: TObject);
begin
if ((CBXEDOCIVIL.Text = TRIM('CASADO')) AND (DBLCKREGIMEN.Text = TRIM('SOCIEDAD CONYUGAL'))) then
     begin nagregaconyuge:= true;  PNLCONYUGE.Visible := TRUE ; end
     ELSE
     begin nagregaconyuge := false; PNLCONYUGE.Visible := FALSE; end;
end;

procedure Tfrmsolicitud.dbgrdgarantiasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdgarantias) do MRect:= CellRect (4,Row);

btneliminagarantia.Parent := dbgrdgarantias ;
btneliminagarantia.Left := (MRect.Right - btneliminagarantia.Width) ;
btneliminagarantia.Top := MRect.Top ;
btneliminagarantia.Height := (MRect.Bottom-MRect.Top);






if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdgarantias.Canvas.Brush.Color:= $00C08200;
    dbgrdgarantias.Canvas.Font.Color := clwhite;
    dbgrdgarantias.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure Tfrmsolicitud.dbgrdinmueblesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (dbgrdinmuebles) do MRect:= CellRect (5,Row);

btneliminainmuebles.Parent := dbgrdinmuebles ;
btneliminainmuebles.Left := (MRect.Right - btneliminainmuebles.Width) ;
btneliminainmuebles.Top := MRect.Top ;
btneliminainmuebles.Height := (MRect.Bottom-MRect.Top);






if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    dbgrdinmuebles.Canvas.Brush.Color:= $00C08200;
    dbgrdinmuebles.Canvas.Font.Color := clwhite;
    dbgrdinmuebles.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure Tfrmsolicitud.edcpKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
//aqui tengo que llmar el form de cp igual que en usuarios

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
application.createform(Tfrmcp, frmcp) ;
frmcp.envia := 'SF'; //fisisca
frmcp.show;

end;
end;

procedure Tfrmsolicitud.edimportefingresoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edimportefingreso.Text := checaletra(edimportefingreso.Text);
end;

procedure Tfrmsolicitud.edmontobancarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edmontobancario.Text := checaletra(edmontobancario.Text);
end;

procedure Tfrmsolicitud.edmontonobancarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edmontonobancario.Text := checaletra(edmontonobancario.Text);
end;

procedure Tfrmsolicitud.edorigenfingresoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  guardafingreso;
end;

procedure Tfrmsolicitud.edvalorgarantiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edvalorgarantia.Text := checaletra(edvalorgarantia.Text);
end;

procedure Tfrmsolicitud.edvalorinmuebleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edvalorinmueble.Text := checaletra(edvalorinmueble.Text);
end;

procedure Tfrmsolicitud.edvalormuebleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edvalormueble.Text := checaletra(edvalormueble.Text);
end;

procedure Tfrmsolicitud.valida;
begin
//bueno aqui van las validaciones
if trim(ednombre.text) = '' then
   begin
     showmessage('Debe indicar el nombre del solicitante...');
     rebote := true;
   end;


if trim(edrfc.text) = '' then
   begin
     showmessage('Debe indicar el RFC del solicitante...');
     rebote := true;
   end;

if ((cbxestados.text = '') or (dblckmunicipios.text = '')) then
   begin
     showmessage('Debe indicar el Lugar de Nacimiento del solicitante...');
     rebote := true;
   end;


 if trim(edcurp.text) = '' then
   begin
     showmessage('Debe indicar el CURP del solicitante...');
     rebote := true;
   end;


 if trim(cbxtipoID.text) = '' then
   begin
     showmessage('Debe indicar el tipo de identificación del solicitante...');
     rebote := true;
   end;

 if trim(edfolioid.text) = '' then
   begin
     showmessage('Debe indicar el Folio de la identificación del solicitante...');
     rebote := true;
   end;


 //si tiene que meter los datos del conyuge

 if nagregaconyuge = true  then
    begin

    if trim(edconyuge.Text) = '' then
       begin
         showmessage('Debe indicar el nombre del conyuge...');
         rebote := true;
       end;


    if trim(edcallecon.Text) ='' then
       begin
          showmessage('Debe indicar la calle del conyuge...');
         rebote := true;
       end;


    if trim(edrfcconyuge.Text) ='' then
       begin
          showmessage('Debe indicar el rfc del conyuge...');
         rebote := true;
       end;


    if trim(edtelcasa.Text) ='' then
       begin
          showmessage('Debe indicar el Teléfono del conyuge...');
         rebote := true;
       end;


    if trim(cbxtipoidconyuge.Text) ='' then
       begin
          showmessage('Debe indicar el tipo de identificación del conyuge...');
         rebote := true;
       end;



    if trim(edfolioidconyuge.Text) ='' then
       begin
          showmessage('Debe indicar el folio de la identificación del conyuge...');
         rebote := true;
       end;





    end;



end;



procedure Tfrmsolicitud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmsolicitud.FormCreate(Sender: TObject);
begin
{  Screen.OnActiveControlChange := ActiveCtrlChange;
  FPrevCtrlFocused:= Screen.ActiveControl;  }
end;

procedure Tfrmsolicitud.FormDestroy(Sender: TObject);
begin
Screen.OnActiveControlChange:= nil;
end;

procedure Tfrmsolicitud.FormShow(Sender: TObject);
begin
nagregaconyuge := false;




if envia = 'N' then
begin


TStringGrid(dbgrdpasivobancario).DefaultRowHeight := 25;//https://www.clubdelphi.com/foros/showthread.php?t=49710
TStringGrid(dbgrdexpediente).DefaultRowHeight := 35;//https://www.clubdelphi.com/foros/showthread.php?t=49710



end;

if envia = 'M' then
begin



end;



end;

procedure Tfrmsolicitud.Image1Click(Sender: TObject);
begin
//aqui tengo que llmar el form de cp igual que en usuarios

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
application.createform(Tfrmcp, frmcp) ;
frmcp.envia := 'SF'; //fisisca
frmcp.show;
end;

procedure Tfrmsolicitud.Image2Click(Sender: TObject);
begin
//aqui tengo que abrir el form de personas fisicas
        application.createForm(TfrmPersonas, frmPersonas) ;
          dm.activa_ds(dm.dsPersonas);
          frmpersonas.envia := 'SF';
          frmPersonas.show;
end;

procedure Tfrmsolicitud.Image4Click(Sender: TObject);
begin

application.createForm(TfrmPersonas, frmPersonas) ;
          dm.activa_ds(dm.dsPersonas);         //aqui hay que hacer el filtro de avales
          frmpersonas.lblTitulo.Caption := 'AVALES';
          frmpersonas.envia := 'SFA';
          frmPersonas.show;




end;

procedure Tfrmsolicitud.imgactivoClick(Sender: TObject);
var
rebote: boolean;
begin


rebote := false;

if edubicacioninmueble.text = '' then
   begin
     showmessage('Debe indicar la ubicación del inmueble');
     rebote := true;


   end;




if cbxtipoinmueble.text = '' then
   begin
     showmessage('Debe indicar un tipo de inmueble');
     rebote := true;


   end;



if edvalorinmueble.text = '' then
   begin
     showmessage('Debe indicar el valor del inmueble');
     rebote := true;


   end;


 if (rebote = false) then
    begin


dm.cambia(dm.ds1, 'insert into sol_activos(sol_fk, slact_ubicacion, slact_tipoinm, slact_valor, slAct_escritura) values('+ edid.Text +
', '+ quotedstr(edubicacioninmueble.text) +', ' + quotedstr(cbxtipoinmueble.text) + ', ' + quitacomas(edvalorinmueble.text) + ', ' + quotedstr(mminmuebles.text) + ')');



dm.filtra(dsactivos_inmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura from '+
'sol_activos where  slact_tipoinm is not null and sol_fk = ' + edid.Text);




    edtotalactivo.Text :=  floattostr(strtofloat(edtotalactivo.Text) + strtofloat(edvalorinmueble.text));
    relacionpat.Caption := 'Relación Patrimonial del solicitante ' + ' Inmuebles: ' + edtotalactivo.Text + ' Maquinaria y Eaquipo: ' + edtotalmaquinaria.text;


edubicacioninmueble.text := '';
cbxtipoinmueble.itemindex := -1;
edvalorinmueble.text := '';
mminmuebles.Text :='';



    end;




end;

procedure Tfrmsolicitud.imgfingresoClick(Sender: TObject);
begin

guardafingreso;
end;

procedure Tfrmsolicitud.imggarantiaClick(Sender: TObject);
var
rebote: boolean;
begin


rebote := false;

if cbxtipogarantia.text = '' then
   begin
     showmessage('Debe indicar el tipo de garantia');
     rebote := true;
   end;




if edvalorgarantia.text = '' then
   begin
     showmessage('Debe indicar el valor de la garantia');
     rebote := true;
   end;



if mmgarantia.text = '' then
   begin
     showmessage('Debe indicar la descripción de la garantia');
     rebote := true;
   end;


 if (rebote = false) then
    begin

    dm.cambia(dm.ds1, 'insert into sol_garantia(sol_fk, slrg_tipo, slrg_descripcion, slrg_valor) values('+
    edid.text + ', '+ quotedstr(cbxtipogarantia.text) +', ' + quotedstr(mmgarantia.text) + ', ' + quitacomas(edvalorgarantia.text) + ')');

    dm.filtra(dsgarantias, 'select * from sol_garantia where sol_fk =' + edid.Text);

     edtotalgarantia.Text :=  floattostr(strtofloat(edtotalgarantia.Text) + strtofloat(edvalorgarantia.text));
    garantias.Caption := 'Garantias Hipotecarias Ofrecidas Total: ' + edtotalgarantia.Text;





    cbxtipogarantia.text := '';
    mmgarantia.Text := '';
    edvalorgarantia.text := '';

    end;

end;

procedure Tfrmsolicitud.imgpasivonobancoClick(Sender: TObject);
var
rebote : boolean;

begin



rebote := false;


if (ednobancaria.text = '') then
   begin
     showmessage('Debe seleccionar una institución... ');

     rebote := true;
   end;

 if (dblcktipocreditonobancario.text = '') then
   begin
     showmessage('Debe seleccionar un tipo de crédito... ');

     rebote := true;
   end;

 if (edmontonobancario.text = '') then
   begin
     showmessage('Debe indicar un monto... ');

     rebote := true;
   end;



  if (mmgarantianobancaria.text = '') then
   begin
     showmessage('Debe Indicar una garantia... ');

     rebote := true;
   end;




 if (dblckmonedasnobancario.text = '') then
   begin
     showmessage('Debe seleccionar un tipo de moneda... ');

     rebote := true;
   end;



   if (rebote = false) then
   begin

     dm.cambia(dm.ds1, 'insert into sol_pasivo (sol_fk, slpsv_tipo, slpsv_institucion, slpsv_tipocred, slpsv_monto, slpsv_ven, moneda_fk, slpsv_garantias) values ('+
     edid.text + ', ' +
     quotedstr('NO BANCARIOS') + ', ' +
     quotedstr(ednobancaria.text) + ', ' +
     quotedstr(dblcktipocreditonobancario.text) + ', ' +
     edmontonobancario.text + ', ' +
     quotedstr(formatdatetime('yyyy-mm-dd', dtvencimientonobanco.date)) +', ' +
     inttostr(dblckmonedasnobancario.keyvalue) + ', ' +
     quotedstr(mmgarantianobancaria.text)+')');

   

    dm.filtra(dm.dspasivosnobanco, dm.con_pasivosnobanco + ' and sol_fk= '+ edid.Text);

    edtotalnobancario.Text :=  floattostr(strtofloat(edtotalnobancario.Text) + strtofloat(edmontonobancario.text));
    pasivos.Caption := 'PASIVOS(cifras en miles de pesos) ' + ' Bancarios: ' + edtotalbancario.Text + ' No bancarios: ' + edtotalnobancario.text;

     ednobancaria.text := '';
    dblcktipocreditonobancario.keyvalue := -1;
    edmontonobancario.text := '';
    dtvencimientonobanco.date := date;
    dblckmonedasnobancario.keyvalue  := -1;
    mmgarantianobancaria.text := '';
   end;




end;

procedure Tfrmsolicitud.imgreferenciasClick(Sender: TObject);
var
nid: integer;
begin

rebote := falsE;

if ednombreref.text = '' then
  begin
    rebote := true;
    showmessage('Debe indicar un nombre de referencia...');
  end;

 if edtelref.text = '' then
  begin
    rebote := true;
    showmessage('Debe indicar un teléfono de referencia...');
  end;



 if rebote = false  then
    begin

           dm.filtra(dm.ds1, 'select max(prs_id) as id from personas');
            if dm.ds1.fieldbyname('id').asstring = '' then
              nid := 1
              else
              nid := dm.ds1.fieldbyname('id').asInteger + 1;


           //inserto en persona
        dm.cambia(dm.ds1, 'insert into personas (prs_id, prs_nombre, prs_tel1, tpr_fk, rgc_fk, cp_fk, tpr_tipopersona) values (' +
        inttostr(nid) + ', ' +
        quotedstr(ednombreref.text) + ', ' +
        quotedstr(edtelref.text) + ', 7, 1,1, '+quotedstr('FISICAS')+')');


         //inserto en sol_persona



        dm.cambia(dm.ds1, 'insert into solicitud_persona (sol_fk, prs_fk, slp_nombre, slp_tel1, cp_fk, slp_contacto) values ('+
        edid.text + ', '+
         inttostr(nid) + ', ' +
        quotedstr(ednombreref.text) + ', ' +
        quotedstr(edtelref.text) + ', 1, '+ quotedstr(edcontacto.Text)+ ')');


     dm.filtra(dm.dssolreferencias, dm.con_solreferencias + edid.text);




     EDNOMBREREF.TEXT := '';
     edtelref.text := '';


    end;






end;

procedure Tfrmsolicitud.imgactppalClick(Sender: TObject);
begin
dm.cambia(dm.ds1, 'insert into sol_act (sol_fk, act_fk, sla_actespec) values ('+edid.text+', '+inttostr(dblckactividad.keyvalue)+', '+ quotedstr(trim(edespecifica.text))+')');
 dm.filtra(dm.dssolactividades, dm.con_solactividades + edid.text);
 edespecifica.Text := '';
 dblckactividad.KeyValue := -1;
end;

procedure Tfrmsolicitud.imgagregamuebleClick(Sender: TObject);
var
rebote: boolean;
begin


rebote := false;

if edtipomueble.text = '' then
   begin
     showmessage('Debe indicar un tipo de vehiculo');
     rebote := true;


   end;




if edmarca.text = '' then
   begin
     showmessage('Debe indicar una marca de vehiculo');
     rebote := true;


   end;



if edmodelo.text = '' then
   begin
     showmessage('Debe indicar un modelo de vehiculo');
     rebote := true;


   end;




if edtipomueble.text = '' then
   begin
     showmessage('Debe indicar el valor del vehiculo');
     rebote := true;


   end;


   if (rebote = false) then
       begin


dm.cambia(dm.ds1, 'insert into sol_activos(sol_fk, slact_tipomueb, slact_marca, slact_modelo, slact_valor) values('+ edid.Text +
', '+ quotedstr(edtipomueble.text) +', ' + quotedstr(edmarca.text) + ', ' + quotedstr(edmodelo.text) + ', ' + quotedstr(edvalormueble.text) + ')');



        dm.filtra(dsactivos_muebles, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
        'sol_activos where  slact_tipomueb is not null and sol_fk = ' + edid.Text);


          edtotalmaquinaria.Text :=  floattostr(strtofloat(edtotalmaquinaria.Text) + strtofloat(edvalormueble.text));
    relacionpat.Caption := 'Relación Patrimonial del solicitante ' + ' Inmuebles: ' + edtotalactivo.Text + ' Maquinaria y Eaquipo: ' + edtotalmaquinaria.text;






        edtipomueble.text := '';
        edmarca.text := '';
        edmodelo.text := '';
        edvalormueble.text := '';



       end;


end;

procedure Tfrmsolicitud.imgavalClick(Sender: TObject);
begin

agrega_avalx;


if ednombreconyugeaval.Text <> '' then
agrega_aval_conyuge;


end;

procedure Tfrmsolicitud.imgconyugeClick(Sender: TObject);
begin

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcp.text));
application.createform(Tfrmcp, frmcp) ;
frmcp.envia := 'SFC'; //fisisca
frmcp.show;
end;

procedure Tfrmsolicitud.imgcpavalClick(Sender: TObject);
begin

dm.filtra(dm.dscp, 'select * from cp where cp_codigopostal = ' + quotedstr(edcpaval.text));
application.createform(Tfrmcp, frmcp) ;
frmcp.envia := 'SFA'; //fisisca aval
frmcp.show;
end;

procedure Tfrmsolicitud.imgpasivobancoClick(Sender: TObject);
var
rebote: boolean;
begin


rebote := false;


if (dblckbancos.text = '') then
   begin
     showmessage('Debe seleccionar una institución... ');

     rebote := true;
   end;

 if (dblcktipocredito.text = '') then
   begin
     showmessage('Debe seleccionar un tipo de crédito... ');

     rebote := true;
   end;

 if (edmontobancario.text = '') then
   begin
     showmessage('Debe indicar un monto... ');

     rebote := true;
   end;



  if (mmgarantiabancaria.text = '') then
   begin
     showmessage('Debe Indicar una garantia... ');

     rebote := true;
   end;




 if (dblckmonedabancario.text = '') then
   begin
     showmessage('Debe seleccionar un tipo de moneda... ');

     rebote := true;
   end;



   if (rebote = false) then
   begin

     dm.cambia(dm.ds1, 'insert into sol_pasivo (sol_fk, slpsv_tipo, slpsv_institucion, slpsv_tipocred, slpsv_monto, slpsv_ven, moneda_fk, slpsv_garantias) values ('+
     edid.text + ', ' +
     quotedstr('BANCARIOS') + ', ' +
     quotedstr(dblckbancos.text) + ', ' +
     quotedstr(dblcktipocredito.text) + ', ' +
     edmontobancario.text+ ', ' +
     quotedstr(formatdatetime('yyyy-mm-dd', dtvencimiento.date)) +', ' +
     inttostr(dblckmonedabancario.keyvalue) + ', ' +
     quotedstr(mmgarantiabancaria.text)+')');

  

    dm.filtra(dm.dspasivosbanco, dm.con_pasivosbanco + ' and sol_fk='+ edid.Text);

    edtotalbancario.Text :=  floattostr(strtofloat(edtotalbancario.Text) + strtofloat(edmontobancario.text));
    pasivos.Caption := 'PASIVOS(cifras en miles de pesos) ' + ' Bancarios: ' + edtotalbancario.Text + ' No bancarios: ' + edtotalnobancario.text;

      dblckbancos.keyvalue := -1;
    dblcktipocredito.keyvalue := -1;
    edmontobancario.text := '';
    dtvencimiento.date := date;
    dblckmonedabancario.keyvalue  := -1;
    mmgarantiabancaria.text := '';


   end;





end;

procedure Tfrmsolicitud.Label123Click(Sender: TObject);
begin
close;
end;

procedure Tfrmsolicitud.mmgarantiabancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
lblrestantebancario.caption := 'Caracteres restantes : '  + inttostr(200 - length(mmgarantiabancaria.text));
end;

procedure Tfrmsolicitud.mmgarantiaKeyPress(Sender: TObject; var Key: Char);
begin
lblgarantia.caption := 'Caracteres restantes : '  + inttostr(1500 - length(mmgarantia.text));
end;

procedure Tfrmsolicitud.mmgarantianobancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
lblrestantenobancario.caption := 'Caracteres restantes : '  + inttostr(200 - length(mmgarantianobancaria.text));
end;

procedure Tfrmsolicitud.mminmueblesKeyPress(Sender: TObject; var Key: Char);
begin
lblrestantesinmuebles.caption := 'Caracteres restantes : '  + inttostr(500 - length(mminmuebles.text));
end;

procedure Tfrmsolicitud.Panel3Click(Sender: TObject);
begin
close;
end;

procedure Tfrmsolicitud.Panel6Click(Sender: TObject);
var
nprod : string;
nid: integer;
begin
button2.Click;
panel6.Visible := false;
panel1.Visible := true;
panel2.Visible := true;
cpg1.Visible := true;
pgmain.Visible := true;



//rellenamos los campos que vienen del plan de pagos

eddescripcion.Text := dm.dsplan_pagospp_descripcion.AsString;
edimporte.Text := dm.dsplan_pagospp_monto.AsString;
edplazo.Text := dm.dsplan_pagospp_plazo.AsString;
edcomision.Text := dm.dsplan_pagospp_comision.Asstring;
edgastos.Text := dm.dsplan_pagospp_gastos.asstring;
edtasaord.Text := dm.dsplan_pagospp_tord.AsString;
ediva.Text := dm.dsplan_pagospp_tiva.AsString;
edperiodopago.Text := dm.dsplan_pagospp_periodicidad.AsString;
edtotalgastos.Text := floattostr(dm.dsplan_pagospp_comision.Value + dm.dsplan_pagospp_gastos.Value) ;



//1ero que nada crear el id de la nueva solicitud

//primero averiguo cual es el max id

 dm.filtra(dm.ds1, 'select max(sol_id) as nmax from solicitudes ');
 nid :=  dm.ds1.FieldByName('nmax').Value + 1;

 dm.cambia(dm.ds2, 'insert into solicitudes (sol_id, pp_fk, sol_clicp, usr_fk, ctadestino_fk) values ('+ inttostr(nid) +', '+ dm.dsplan_pagospp_id.AsString +',1,1,0)');

 edid.Text :=  inttostr(nid);

//luego me traigo la lista de documentos
dm.filtra(dm.ds1,'SELECT * FROM prod_tipodoc, tipo_doc where prod_tipodoc.tpd_fk = tipo_doc.tpd_id and prod_tipodoc.prd_fk = ' + dm.dsplan_pagosprd_fk.AsString); // 4

//
                 // por el momento se lo comentamos
dm.ds1.First;
while not(dm.ds1.Eof) do
         begin

         dm.cambia(dm.ds2, 'insert into sol_doc (sol_fk, sld_descripcion) values ('+ edid.Text + ', '+ quotedstr(dm.ds1.FieldByName('tpd_descripcion').AsString)+')');

         dm.ds1.Next;
         end;


//ahora refresco el dataset


dm.filtra(dsexpediente, 'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estatus, case sld_estatus '+
'when 0 then '+ quotedstr('POR ENTREGAR') +' else '+ quotedstr('ENTREGADO') + ' end as estatus '+
'from sol_doc  where sol_fk = ' + edid.Text);


end;

procedure Tfrmsolicitud.Panel6MouseLeave(Sender: TObject);
begin
   Panel6.Color := $00C08000;
end;

procedure Tfrmsolicitud.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    Panel6.Color := $00C1C760;
end;

procedure Tfrmsolicitud.pnlguardaClick(Sender: TObject);
begin
rebote := false;


valida;







if (rebote = false) then
    begin





//si edidpersona no tiene nada hay que agregar en persona

if edidpersona.Text = '' then
   agrega_persona
   else
   modifica_persona;

   //aqui guardo la solicitud
crea_filtro;
dm.cambia(dm.ds1, filtro);

//guardo solicitud_persona
if envia = 'N' then
   begin

      dm.cambia(dm.ds1, 'insert into solicitud_persona (sol_fk, prs_fk, slp_nombre, slp_rfc, slp_calle, slp_noint, slp_noext , cp_fk, slp_tel1, slp_tel2, slp_tel3, slp_tel4, slp_email) values (' +
        edid.Text + ', ' +
        inttostr(nid) + ', '+
        quotedstr(trim(ednombre.Text)) + ', ' +
        quotedstr(trim(edrfc.Text)) + ', ' +
        quotedstr(trim(edcalle.Text)) + ', ' +
        quotedstr(trim(edint.Text)) + ', ' +
        quotedstr(trim(edext.Text)) + ', ' +
        edidcp.Text + ', ' +
        quotedstr(trim(edtelcasa.Text)) + ', ' +
        quotedstr(trim(edcelular.Text)) + ', ' +
        quotedstr(trim(edcel2.Text)) + ', ' +
        quotedstr(trim(edtelfam.Text)) + ', ' +
        quotedstr(trim(edcorreo.Text)) + ')');
   end
   else //es igual a m no hay de otra
   begin
     dm.cambia(dm.ds1, 'update solicitud_persona  set '+
   'slp_nombre = '+ quotedstr(trim(ednombre.Text)) +' , '+
   'slp_rfc = '+quotedstr(trim(edrfc.Text)) +' ,'+
   'slp_calle = '+quotedstr(trim(edcalle.Text)) +' ,'+
   'slp_noint = '+ quotedstr(trim(edint.Text))+' ,'+
   'slp_noext = '+ quotedstr(trim(edext.Text))+' ,'+
   'cp_fk = '+ edidcp.Text +' ,'+
   'slp_tel1 = '+ quotedstr(trim(edtelcasa.Text))+' ,'+
   'slp_tel2 = '+ quotedstr(trim(edcelular.Text))+' ,'+
   'slp_tel3 = '+ quotedstr(trim(edcel2.Text))+' ,'+
   'slp_tel4 = '+ quotedstr(trim(edtelfam.Text))+' ,'+
   'slp_email = '+ quotedstr(trim(edcorreo.Text))+' ,'+
   'where sol_fk = '+ edid.Text  +
   ' and prs_fk = ' + edidpersona.Text );
   end;


{bueno hasta aqui se guarda todo...}


Showmessage('Solicitud registrada');





close;






    end;


end;

procedure Tfrmsolicitud.pnlguardaMouseLeave(Sender: TObject);
begin
  pnlguarda.Color := $00C08000;
end;

procedure Tfrmsolicitud.pnlguardaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 pnlguarda.Color := $00C1C760;

end;

end.
