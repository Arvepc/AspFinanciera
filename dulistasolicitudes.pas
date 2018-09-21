unit dulistasolicitudes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Imaging.pngimage;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmlistasolicitudes = class(TForm)
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    btnmuestra: TSpeedButton;
    Panel6: TPanel;
    Label1: TLabel;
    pnlbusca: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DataSource1: TDataSource;
    repsolicitud: TfrxReport;
    frxDBDempresa: TfrxDBDataset;
    frxDBDsolicitud: TfrxDBDataset;
    dspasivobancario: TZQuery;
    frxDBDpasivobancario: TfrxDBDataset;
    dspasivonobancario: TZQuery;
    frxDBDpasivonobancario: TfrxDBDataset;
    dsfuentesingreso: TZQuery;
    dshipotecaria: TZQuery;
    frxDBDfuentesingreso: TfrxDBDataset;
    frxDBDhipotecaria: TfrxDBDataset;
    dsinmuebles: TZQuery;
    frxDBDinmuebles: TfrxDBDataset;
    dsmaquinaria: TZQuery;
    frxDBDmaquinaria: TfrxDBDataset;
    dsreferencias: TZQuery;
    frxDBDreferencias: TfrxDBDataset;
    btneditasolicitud: TSpeedButton;
    dsdestinocredito: TZQuery;
    frxDBDdestinocredito: TfrxDBDataset;
    dsavales: TZQuery;
    frxDBDavales: TfrxDBDataset;
    dsactividades: TZQuery;
    frxDBDactividades: TfrxDBDataset;
    dsfisicas: TZQuery;
    frxDBDfisicas: TfrxDBDataset;
    dscp: TZQuery;
    frxDBDcp: TfrxDBDataset;
    dsconyuge: TZQuery;
    frxDBDconyuge: TfrxDBDataset;
    dscpconyuge: TZQuery;
    frxDBDcpconyuge: TfrxDBDataset;
    frxRepmoral: TfrxReport;
    dsmorales: TZQuery;
    dsreplegal: TZQuery;
    frxDBDreplegal: TfrxDBDataset;
    dscpreplegal: TZQuery;
    frxDBDcpreplegal: TfrxDBDataset;
    frxDBDmorales: TfrxDBDataset;
    dspasivobancarioslpsv_id: TIntegerField;
    dspasivobancariosol_fk: TIntegerField;
    dspasivobancarioslpsv_tipo: TWideStringField;
    dspasivobancarioslpsv_institucion: TWideStringField;
    dspasivobancarioslpsv_tipocred: TWideStringField;
    dspasivobancarioslpsv_monto: TFloatField;
    dspasivobancarioslpsv_ven: TDateField;
    dspasivobancariomoneda_fk: TIntegerField;
    dspasivobancarioslpsv_garantias: TWideStringField;
    dspasivobancariomnd_id: TIntegerField;
    dspasivobancariomnd_descripcion: TWideStringField;
    dspasivobancariomnd_valor: TFloatField;
    dspasivobancariomnd_fecact: TDateTimeField;
    dspasivonobancarioslpsv_id: TIntegerField;
    dspasivonobancariosol_fk: TIntegerField;
    dspasivonobancarioslpsv_tipo: TWideStringField;
    dspasivonobancarioslpsv_institucion: TWideStringField;
    dspasivonobancarioslpsv_tipocred: TWideStringField;
    dspasivonobancarioslpsv_monto: TFloatField;
    dspasivonobancarioslpsv_ven: TDateField;
    dspasivonobancariomoneda_fk: TIntegerField;
    dspasivonobancarioslpsv_garantias: TWideStringField;
    dspasivonobancariomnd_id: TIntegerField;
    dspasivonobancariomnd_descripcion: TWideStringField;
    dspasivonobancariomnd_valor: TFloatField;
    dspasivonobancariomnd_fecact: TDateTimeField;
    dsreferenciassol_fk: TIntegerField;
    dsreferenciasprs_fk: TIntegerField;
    dsreferenciasslp_nombre: TWideStringField;
    dsreferenciasslp_tel1: TWideStringField;
    dsreferenciasslp_contacto: TWideStringField;
    dsmaquinariaslact_id: TIntegerField;
    dsmaquinariaslact_marca: TWideStringField;
    dsmaquinariaslact_tipomueb: TWideStringField;
    dsmaquinariaslact_valor: TFloatField;
    dsmaquinariaslact_modelo: TWideStringField;
    dsinmueblesslact_id: TIntegerField;
    dsinmueblesslact_ubicacion: TWideStringField;
    dsinmueblesslact_tipoinm: TWideStringField;
    dsinmueblesslact_valor: TFloatField;
    dsinmueblesslact_escritura: TWideStringField;
    dsinmueblessol_fk: TIntegerField;
    dshipotecariaslgr_id: TIntegerField;
    dshipotecariaslrg_tipo: TWideStringField;
    dshipotecariaslrg_descripcion: TWideStringField;
    dshipotecariaslrg_valor: TFloatField;
    dshipotecariasol_fk: TIntegerField;
    dsfuentesingresoslin_id: TIntegerField;
    dsfuentesingresoslin_origen: TWideStringField;
    dsfuentesingresoslin_importe: TFloatField;
    dsfuentesingresoslin_periodicidad: TWideStringField;
    dsfuentesingresosol_fk: TIntegerField;
    dsdestinocreditopp_id: TIntegerField;
    dsdestinocreditopp_fecha: TDateField;
    dsdestinocreditopp_descripcion: TWideStringField;
    dsdestinocreditopp_estatus: TWideStringField;
    dsdestinocreditopp_plazo: TFloatField;
    dsdestinocreditopp_tord: TFloatField;
    dsdestinocreditopp_tmor: TFloatField;
    dsdestinocreditopp_tiva: TFloatField;
    dsdestinocreditopp_frmintord: TWideStringField;
    dsdestinocreditopp_frmintmor: TWideStringField;
    dsdestinocreditopp_freccapint: TFloatField;
    dsdestinocreditopp_frecpagcap: TFloatField;
    dsdestinocreditopp_frecpagint: TFloatField;
    dsdestinocreditopp_periodicidad: TFloatField;
    dsdestinocreditopp_editable: TSmallintField;
    dsdestinocreditoprd_fk: TIntegerField;
    dsdestinocreditopp_monto: TFloatField;
    dsdestinocreditopp_frmSaldo: TWideStringField;
    dsdestinocreditopp_frmMontoC: TWideStringField;
    dsdestinocreditopp_tipointeres: TWideStringField;
    dsdestinocreditopp_comision: TFloatField;
    dsdestinocreditopp_gastos: TFloatField;
    dsdestinocreditopp_total: TFloatField;
    dsavalespp_id: TIntegerField;
    dsavalespp_fecha: TDateField;
    dsavalespp_descripcion: TWideStringField;
    dsavalespp_estatus: TWideStringField;
    dsavalespp_plazo: TFloatField;
    dsavalespp_tord: TFloatField;
    dsavalespp_tmor: TFloatField;
    dsavalespp_tiva: TFloatField;
    dsavalespp_frmintord: TWideStringField;
    dsavalespp_frmintmor: TWideStringField;
    dsavalespp_freccapint: TFloatField;
    dsavalespp_frecpagcap: TFloatField;
    dsavalespp_frecpagint: TFloatField;
    dsavalespp_periodicidad: TFloatField;
    dsavalespp_editable: TSmallintField;
    dsavalesprd_fk: TIntegerField;
    dsavalespp_monto: TFloatField;
    dsavalespp_frmSaldo: TWideStringField;
    dsavalespp_frmMontoC: TWideStringField;
    dsavalespp_tipointeres: TWideStringField;
    dsavalespp_comision: TFloatField;
    dsavalespp_gastos: TFloatField;
    dsactividadesact_id: TIntegerField;
    dsactividadesact_codigo: TWideStringField;
    dsactividadesact_titulo: TWideStringField;
    dsactividadesact_descripcion: TWideStringField;
    dsactividadesact_tipo: TWideStringField;
    dsactividadessol_fk: TIntegerField;
    dsactividadesact_fk: TIntegerField;
    dsactividadessla_actespec: TWideStringField;
    dsmoralesmrl_id: TIntegerField;
    dsmoralesmrl_razonsocial: TWideStringField;
    dsmoralesprs_fk: TIntegerField;
    dsmoralesmrl_fecconstitucion: TDateField;
    dsmoralesmrl_fecinscripcion: TDateField;
    dsmoralesmrl_numescritura: TWideStringField;
    dsmoralesmrl_folinscripcion: TWideStringField;
    dsmoralesmrl_folmercantil: TWideStringField;
    dsmoralesmrl_lugarreg: TWideStringField;
    dsmoralesmrl_corporativo: TWideStringField;
    dsmoralesmrl_dirgral: TWideStringField;
    dsmoralesmrl_gtegral: TWideStringField;
    dsmoralesmrl_adminunico: TWideStringField;
    dsmoralesmrl_rlnumescr: TWideStringField;
    dsmoralesmrl_rlfecesc: TDateField;
    dsmoralesmrl_rlfolins: TWideStringField;
    dsmoralesmrl_rlfolmerc: TWideStringField;
    dsmoralesmrl_rllocreg: TWideStringField;
    dsmoralesmrl_modoadmon: TWideStringField;
    dsfisicasfsc_id: TIntegerField;
    dsfisicasfsc_nombres: TWideStringField;
    dsfisicasfsc_apaterno: TWideStringField;
    dsfisicasfsc_amaterno: TWideStringField;
    dsfisicasprs_fk: TIntegerField;
    dsfisicasfsc_fecnac: TDateField;
    dsfisicasfsc_lugarnac: TWideStringField;
    dsfisicasfsc_edocivil: TWideStringField;
    dsfisicasfsc_genero: TWideStringField;
    dsfisicasfsc_curp: TWideStringField;
    dsfisicasfsc_profesion: TWideStringField;
    dsfisicasfsc_folioid: TWideStringField;
    dsfisicasfsc_numacc: TIntegerField;
    dsfisicasfsc_importeaccion: TFloatField;
    dsfisicasfsc_poraccion: TFloatField;
    dsfisicasfsc_regimencon: TWideStringField;
    dsfisicasfsc_tipoid: TWideStringField;
    dscpcp_id: TIntegerField;
    dscpcp_clave: TWideStringField;
    dscpcp_codigopostal: TWideStringField;
    dscpcp_estado: TWideStringField;
    dscpcp_municipio: TWideStringField;
    dscpcp_asentamiento: TWideStringField;
    dscpcp_tipoasentamiento: TWideStringField;
    dscptpa_fk: TIntegerField;
    dsconyugesol_fk: TIntegerField;
    dsconyugeprs_fk: TIntegerField;
    dsconyugeslp_nombre: TWideStringField;
    dsconyugefsc_tipoid: TWideStringField;
    dsconyugefsc_folioid: TWideStringField;
    dsconyugeprs_rfc: TWideStringField;
    dsconyugefsc_fecnac: TDateField;
    dsconyugeprs_calle: TWideStringField;
    dsconyugeprs_noext: TWideStringField;
    dsconyugeprs_noint: TWideStringField;
    dsconyugecp_fk: TIntegerField;
    dscpconyugecp_id: TIntegerField;
    dscpconyugecp_clave: TWideStringField;
    dscpconyugecp_codigopostal: TWideStringField;
    dscpconyugecp_estado: TWideStringField;
    dscpconyugecp_municipio: TWideStringField;
    dscpconyugecp_asentamiento: TWideStringField;
    dscpconyugecp_tipoasentamiento: TWideStringField;
    dscpconyugetpa_fk: TIntegerField;
    dsreplegalsol_fk: TIntegerField;
    dsreplegalprs_fk: TIntegerField;
    dsreplegalslp_nombre: TWideStringField;
    dsreplegalfsc_tipoid: TWideStringField;
    dsreplegalfsc_folioid: TWideStringField;
    dsreplegalfsc_curp: TWideStringField;
    dsreplegalprs_rfc: TWideStringField;
    dsreplegalfsc_fecnac: TDateField;
    dsreplegalprs_calle: TWideStringField;
    dsreplegalprs_noext: TWideStringField;
    dsreplegalprs_noint: TWideStringField;
    dsreplegalcp_fk: TIntegerField;
    dscpreplegalcp_id: TIntegerField;
    dscpreplegalcp_clave: TWideStringField;
    dscpreplegalcp_codigopostal: TWideStringField;
    dscpreplegalcp_estado: TWideStringField;
    dscpreplegalcp_municipio: TWideStringField;
    dscpreplegalcp_asentamiento: TWideStringField;
    dscpreplegalcp_tipoasentamiento: TWideStringField;
    dscpreplegaltpa_fk: TIntegerField;
    Panel7: TPanel;
    imgdown: TImage;
    imgup: TImage;
    procedure Label1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlNuevoClick(Sender: TObject);
    procedure pnlImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnmodificaClick(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlImprimirMouseLeave(Sender: TObject);
    procedure pnlImprimirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel7MouseLeave(Sender: TObject);
    procedure Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgdownClick(Sender: TObject);
    procedure imgupClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure edita_fisica;
    procedure edita_moral;
    procedure imprime_fisica;
    procedure imprime_moral;
  public
    { Public declarations }
    envia:string
  end;

var
  frmlistasolicitudes: Tfrmlistasolicitudes;

implementation

{$R *.dfm}

uses dusolicitud, dudm, dutiposolicitud, duprincipal, dusolicitudmoral,
  timeline, duanalisis, dumesacontrolcredito;
procedure Tfrmlistasolicitudes.imgdownClick(Sender: TObject);
begin
//abro el panel de busquedas
imgup.Visible := true;
imgdown.Visible := false;
pnlbusca.Height := 224;
end;

procedure Tfrmlistasolicitudes.imgupClick(Sender: TObject);
begin
imgup.Visible := false;
imgdown.Visible := true;
pnlbusca.Height := 88;
end;

procedure Tfrmlistasolicitudes.imprime_fisica;
var
nsol_pasivo: string;
begin


nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('BANCARIOS') ;

dm.filtra(dspasivobancario, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );

//fisicas
dm.filtra( dm.ds2, 'select prs_fk from solicitud_persona where sol_fk = ' + dm.dssolicitudessol_id.AsString + ' and slp_nombre =' +
quotedstr(trim(dm.dssolicitudessol_clinombre.AsString)));


 dm.filtra(dsfisicas,'select * from fisicas where prs_fk = ' + dm.ds2.FieldByName('prs_fk').AsString  );
 //conyuge

 dm.filtra(dsconyuge, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, fisicas.fsc_tipoid, fisicas.fsc_folioid, '+
'personas.prs_rfc, fisicas.fsc_fecnac, personas.prs_calle, personas.prs_noext, personas.prs_noint, personas.cp_fk '+
'from solicitud_persona, personas, fisicas where '+
'solicitud_persona.prs_fk = personas.prs_id '+
'and fisicas.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 4 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString);




//cp del cliente

dm.filtra(dm.ds3, 'select cp_fk from solicitud_persona where sol_fk =' + dm.dssolicitudessol_id.AsString + ' and prs_fk = ' + dm.ds2.FieldByName('prs_fk').AsString );

dm.filtra(dscp, 'select * from cp where cp_id =' + dm.ds3.FieldByName('cp_fk').AsString );

 dm.filtra(dscpconyuge, 'select * from cp where cp_id =' + dsconyuge.FieldByName('cp_fk').AsString );

//no bancarios

nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('NO BANCARIOS') ;

dm.filtra(dspasivonobancario, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );

//fuentes de ingreso

dm.filtra(dsfuentesingreso, 'select * from sol_ingresos where sol_fk = ' + dm.dssolicitudessol_id.AsString);
//hipotecaria
dm.filtra(dshipotecaria, 'select * from sol_garantia where sol_fk='+ dm.dssolicitudessol_id.AsString );


dm.filtra(dsinmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura, sol_fk from '+
'sol_activos where  slact_tipoinm is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dsmaquinaria, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
'sol_activos where  slact_tipomueb is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dsreferencias, 'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 7 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );


 dm.filtra(dsdestinocredito, 'select pp_id, pp_fecha, pp_descripcion, pp_estatus, pp_plazo, '+
'pp_tord, pp_tmor,pp_tiva,pp_frmintord,pp_frmintmor,pp_freccapint,pp_frecpagcap,pp_frecpagint,pp_periodicidad, '+
'pp_editable,prd_fk,pp_monto,pp_frmSaldo,pp_frmMontoC,pp_tipointeres,pp_comision,pp_gastos, (pp_gastos + pp_comision) as pp_total from  plan_pagos where pp_id = ' + dm.dssolicitudespp_fk.AsString);


  dm.filtra(dsactividades, dm.con_solactividades + dm.dssolicitudessol_id.AsString );

repsolicitud.ShowReport();


end;

procedure Tfrmlistasolicitudes.imprime_moral;
var
nsol_pasivo: string;
begin


 nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('BANCARIOS') ;

dm.filtra(dspasivobancario, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );


//morales
dm.filtra( dm.ds2, 'select prs_fk from solicitud_persona where sol_fk = ' + dm.dssolicitudessol_id.AsString + ' and slp_nombre =' +
quotedstr(trim(dm.dssolicitudessol_clinombre.AsString)));


 dm.filtra(dsmorales,'select * from morales where prs_fk = ' + dm.ds2.FieldByName('prs_fk').AsString  );
 //replegal


 dm.filtra(dsreplegal, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, fisicas.fsc_tipoid, fisicas.fsc_folioid, fisicas.fsc_curp, '+
'personas.prs_rfc, fisicas.fsc_fecnac, personas.prs_calle, personas.prs_noext, personas.prs_noint, personas.cp_fk '+
'from solicitud_persona, personas, fisicas where '+
'solicitud_persona.prs_fk = personas.prs_id '+
'and fisicas.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 8 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString);




//cp del replegal

dm.filtra(dm.ds3, 'select cp_fk from solicitud_persona where sol_fk =' + dm.dssolicitudessol_id.AsString + ' and prs_fk = ' + dm.ds2.FieldByName('prs_fk').AsString );

dm.filtra(dscp, 'select * from cp where cp_id =' + dm.ds3.FieldByName('cp_fk').AsString );

 dm.filtra(dscpreplegal, 'select * from cp where cp_id =' + dsreplegal.FieldByName('cp_fk').AsString );

//no bancarios

nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('NO BANCARIOS') ;

dm.filtra(dspasivonobancario, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );

//fuentes de ingreso

dm.filtra(dsfuentesingreso, 'select * from sol_ingresos where sol_fk = ' + dm.dssolicitudessol_id.AsString);
//hipotecaria
dm.filtra(dshipotecaria, 'select * from sol_garantia where sol_fk='+ dm.dssolicitudessol_id.AsString );


dm.filtra(dsinmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura, sol_fk from '+
'sol_activos where  slact_tipoinm is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dsmaquinaria, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
'sol_activos where  slact_tipomueb is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dsreferencias, 'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 7 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );


 dm.filtra(dsdestinocredito, 'select pp_id, pp_fecha, pp_descripcion, pp_estatus, pp_plazo, '+
'pp_tord, pp_tmor,pp_tiva,pp_frmintord,pp_frmintmor,pp_freccapint,pp_frecpagcap,pp_frecpagint,pp_periodicidad, '+
'pp_editable,prd_fk,pp_monto,pp_frmSaldo,pp_frmMontoC,pp_tipointeres,pp_comision,pp_gastos, (pp_gastos + pp_comision) as pp_total from  plan_pagos where pp_id = ' + dm.dssolicitudespp_fk.AsString);


  dm.filtra(dsactividades, dm.con_solactividades + dm.dssolicitudessol_id.AsString );

frxrepmoral.ShowReport();

end;


procedure Tfrmlistasolicitudes.edita_moral;
 var
nsol_pasivo: string;
begin
application.CreateForm(Tfrmsolicitudmoral, frmsolicitudmoral);

 //actualizamos los datasets
nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('BANCARIOS') ;
dm.filtra(dm.dspasivosbanco, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );
//no bancarios
nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('NO BANCARIOS') ;
dm.filtra(dm.dspasivosnobanco, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );
//fuentes de ingreso
dm.filtra(dm.dssolingreso, 'select * from sol_ingresos where sol_fk = ' + dm.dssolicitudessol_id.AsString);
//hipotecaria
dm.filtra(frmsolicitudmoral.dsgarantias, 'select * from sol_garantia where sol_fk='+ dm.dssolicitudessol_id.AsString );
dm.filtra(frmsolicitudmoral.dsactivos_inmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura, sol_fk from '+
'sol_activos where  slact_tipoinm is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(frmsolicitudmoral.dsactivos_muebles, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
'sol_activos where  slact_tipomueb is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dm.dssolreferencias, 'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 7 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );


dm.filtra(frmsolicitudmoral.dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and ((personas.tpr_fk = 3) or (personas.tpr_fk = 11)) and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dm.dssolactividades, dm.con_solactividades + dm.dssolicitudessol_id.AsString );

dm.filtra(dsdestinocredito, 'select pp_id, pp_fecha, pp_descripcion, pp_estatus, pp_plazo, '+
'pp_tord, pp_tmor,pp_tiva,pp_frmintord,pp_frmintmor,pp_freccapint,pp_frecpagcap,pp_frecpagint,pp_periodicidad, '+
'pp_editable,prd_fk,pp_monto,pp_frmSaldo,pp_frmMontoC,pp_tipointeres,pp_comision,pp_gastos, (pp_gastos + pp_comision) as pp_total from  plan_pagos where pp_id = ' + dm.dssolicitudespp_fk.AsString);

frmsolicitudmoral.envia := 'M';
frmsolicitudmoral.eddescripcion.Text := dsdestinocreditopp_descripcion.AsString;
frmsolicitudmoral.edimporte.Text := dsdestinocreditopp_monto.AsString;
frmsolicitudmoral.edplazo.Text := dsdestinocreditopp_plazo.AsString;
frmsolicitudmoral.edcomision.Text := dsdestinocreditopp_comision.Asstring;
frmsolicitudmoral.edgastos.Text := dsdestinocreditopp_gastos.asstring;
frmsolicitudmoral.edtasaord.Text := dsdestinocreditopp_tord.AsString;
frmsolicitudmoral.ediva.Text := dsdestinocreditopp_tiva.AsString;
frmsolicitudmoral.edperiodopago.Text := dsdestinocreditopp_periodicidad.AsString;
frmsolicitudmoral.edtotalgastos.Text := floattostr(dsdestinocreditopp_comision.Value + dsdestinocreditopp_gastos.Value) ;
frmsolicitudmoral.edid.Text :=  dm.dssolicitudessol_id.AsString  ;


frmsolicitudmoral.panel1.Visible := true;
frmsolicitudmoral.pgmain.Visible := true;
frmsolicitudmoral.panel2.Visible := true;

frmsolicitudmoral.ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
frmsolicitudmoral.edrfc.text := dm.dssolicitudessol_clirfc.AsString;
frmsolicitudmoral.edcalle.Text := dm.dssolicitudessol_clicalle.AsString;
frmsolicitudmoral.edext.Text := dm.dssolicitudessol_clinoext.AsString;
frmsolicitudmoral.edint.Text := dm.dssolicitudessol_clinoint.AsString;

//tengo que sacar la consulta de la tabla fisicas

dm.filtra( dm.ds2, 'select prs_fk from solicitud_persona where sol_fk = ' + dm.dssolicitudessol_id.AsString + ' and slp_nombre =' +
quotedstr(trim(dm.dssolicitudessol_clinombre.AsString)));

//que pasaria si no se tiene el id de este cabron
if dm.ds2.FieldByName('prs_fk').Value = null then
 begin
 showmessage('No fue posible recuperar los datos del cliente.');

                                         {
frmsolicitudmoral.cbxestados.Visible:= false;
frmsolicitudmoral.dblckmunicipios.visible := false;
frmsolicitudmoral.edlugarnac.Visible:= true;
frmsolicitudmoral.edlugarnac.Text :=''; }
 end
 else
 begin
 frmsolicitudmoral.edidpersona.Text := dm.ds2.FieldByName('prs_fk').AsString;
 dm.filtra(dm.ds1,'select * from morales where prs_fk = ' +dm.ds2.FieldByName('prs_fk').AsString );


frmsolicitudmoral.dtconstitucion.Date := dm.ds1.FieldByName('mrl_fecconstitucion').Value;//

frmsolicitudmoral.edescritura.text:= dm.ds1.FieldByName('mrl_numescritura').AsString;
frmsolicitudmoral.dtfechains.date := dm.ds1.FieldByName('mrl_fecinscripcion').Value;
frmsolicitudmoral.edlocareg.Text := dm.ds1.FieldByName('mrl_lugarreg').AsString;
frmsolicitudmoral.edgrupoemp.text := dm.ds1.FieldByName('mrl_corporativo').AsString;
frmsolicitudmoral.eddirgral.text := dm.ds1.FieldByName('mrl_dirgral').AsString;
//hay que condicionar  para que se muestre el conyuge


end;

//aqui el representante legal
dm.filtra(dm.ds2, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, fisicas.fsc_tipoid, fisicas.fsc_folioid, '+
'personas.prs_rfc, fisicas.fsc_fecnac, personas.prs_calle, personas.prs_noext, personas.prs_noint, personas.cp_fk '+
'from solicitud_persona, personas, fisicas where '+
'solicitud_persona.prs_fk = personas.prs_id '+
'and fisicas.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 8 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString);

if dm.ds2.FieldByName('slp_nombre').Value = null then
begin
  //no hay conyugue
frmsolicitudmoral.ednomrep.Text := '';

end
else
begin
//hay un conyugue
frmsolicitudmoral.ednomrep.Text := dm.ds2.FieldByName('slp_nombre').AsString;
frmsolicitudmoral.edcallerep.Text := dm.ds2.FieldByName('prs_calle').AsString;
frmsolicitudmoral.edextrep.Text := dm.ds2.FieldByName('prs_noext').AsString;
frmsolicitudmoral.edintrep.Text := dm.ds2.FieldByName('prs_noint').AsString;
frmsolicitudmoral.edidrep.Text := dm.ds2.FieldByName('prs_fk').AsString;


 // aqu itengo que hacer otra consulta para los datos del cp

  dm.filtra(dm.ds3, 'select * from cp where cp_id =' + dm.ds2.FieldByName('cp_fk').AsString);
 frmsolicitudmoral.edcprep.Text := dm.ds3.FieldByName('cp_codigopostal').Value ;
 frmsolicitudmoral.edcoloniarep.Text := dm.ds3.FieldByName('cp_asentamiento').Value;
 frmsolicitudmoral.edestadorep.Text := dm.ds3.FieldByName('cp_asentamiento').Value;
 frmsolicitudmoral.edidcprep.Text := dm.ds3.FieldByName('cp_id').AsString;
 frmsolicitudmoral.edmunicipiorep.Text := dm.ds3.FieldByName('cp_municipio').AsString;

end;


//falta cp   cp_fk solicitud_persona


 dm.filtra(dm.ds1, 'select cp_fk from solicitud_persona where sol_fk =' + dm.dssolicitudessol_id.AsString + ' and prs_fk = ' + frmsolicitudmoral.edidpersona.Text);


 dm.filtra(dm.ds2, 'select * from cp where cp_id =' + dm.ds1.FieldByName('cp_fk').AsString);
  frmsolicitudmoral.edidcp.Text := dm.ds2.FieldByName('cp_id').AsString;
  frmsolicitudmoral.edcp.Text  := dm.ds2.FieldByName('cp_codigopostal').AsString;
  frmsolicitudmoral.edcolonia.Text := dm.ds2.FieldByName('cp_asentamiento').AsString;
  frmsolicitudmoral.edmunicipio.Text := dm.ds2.FieldByName('cp_municipio').AsString;
  frmsolicitudmoral.edestado.Text := dm.ds2.FieldByName('cp_estado').AsString;



//others
frmsolicitudmoral.edantiguedad.Text := dm.dssolicitudessol_cliant.AsString;
frmsolicitudmoral.edantiguedadrep.Text := dm.dssolicitudessol_cliant.AsString;
frmsolicitudmoral.edtelcasa.Text := dm.dssolicitudessol_clitel1.AsString;
frmsolicitudmoral.edcelular.Text := dm.dssolicitudessol_clitel2.AsString;
frmsolicitudmoral.edcel2.Text := dm.dssolicitudessol_clitel3.AsString;
frmsolicitudmoral.edtelfam.Text := dm.dssolicitudessol_clitel4.AsString;
frmsolicitudmoral.edcorreo.Text := dm.dssolicitudessol_cliemail.AsString;
frmsolicitudmoral.ednombre.SetFocus;

frmsolicitudmoral.Button2.Click;
           frmsolicitudmoral.show;


end;


procedure Tfrmlistasolicitudes.edita_fisica;
var
nsol_pasivo: string;
begin
application.CreateForm(Tfrmsolicitud, frmsolicitud);

 //actualizamos los datasets
nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('BANCARIOS') ;
dm.filtra(dm.dspasivosbanco, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );
//no bancarios
nsol_pasivo :=  'select * from sol_pasivo, monedas where '+
'sol_pasivo.moneda_fk = monedas.mnd_id and sol_pasivo.slpsv_tipo = ' + quotedstr('NO BANCARIOS') ;
dm.filtra(dm.dspasivosnobanco, nsol_pasivo + ' and sol_fk='+ dm.dssolicitudessol_id.AsString );
//fuentes de ingreso
dm.filtra(dm.dssolingreso, 'select * from sol_ingresos where sol_fk = ' + dm.dssolicitudessol_id.AsString);
//hipotecaria
dm.filtra(frmsolicitud.dsgarantias, 'select * from sol_garantia where sol_fk='+ dm.dssolicitudessol_id.AsString );
dm.filtra(frmsolicitud.dsactivos_inmuebles, 'select slact_id, slact_ubicacion, slact_tipoinm, slact_valor, slact_escritura, sol_fk from '+
'sol_activos where  slact_tipoinm is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(frmsolicitud.dsactivos_muebles, 'select slact_id, slact_marca, slact_tipomueb, slact_valor, slact_modelo from '+
'sol_activos where  slact_tipomueb is not null and sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dm.dssolreferencias, 'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 7 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );


dm.filtra(frmsolicitud.dsavales, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, '+
'solicitud_persona.slp_calle, solicitud_persona.slp_tel1, solicitud_persona.slp_email, solicitud_persona.cp_fk '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and ((personas.tpr_fk = 3) or (personas.tpr_fk = 11)) and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString );

dm.filtra(dm.dssolactividades, dm.con_solactividades + dm.dssolicitudessol_id.AsString );

dm.filtra(dsdestinocredito, 'select pp_id, pp_fecha, pp_descripcion, pp_estatus, pp_plazo, '+
'pp_tord, pp_tmor,pp_tiva,pp_frmintord,pp_frmintmor,pp_freccapint,pp_frecpagcap,pp_frecpagint,pp_periodicidad, '+
'pp_editable,prd_fk,pp_monto,pp_frmSaldo,pp_frmMontoC,pp_tipointeres,pp_comision,pp_gastos, (pp_gastos + pp_comision) as pp_total from  plan_pagos where pp_id = ' + dm.dssolicitudespp_fk.AsString);
frmsolicitud.envia := 'M';
frmsolicitud.eddescripcion.Text := dsdestinocreditopp_descripcion.AsString;
frmsolicitud.edimporte.Text := dsdestinocreditopp_monto.AsString;
frmsolicitud.edplazo.Text := dsdestinocreditopp_plazo.AsString;
frmsolicitud.edcomision.Text := dsdestinocreditopp_comision.Asstring;
frmsolicitud.edgastos.Text := dsdestinocreditopp_gastos.asstring;
frmsolicitud.edtasaord.Text := dsdestinocreditopp_tord.AsString;
frmsolicitud.ediva.Text := dsdestinocreditopp_tiva.AsString;
frmsolicitud.edperiodopago.Text := dsdestinocreditopp_periodicidad.AsString;
frmsolicitud.edtotalgastos.Text := floattostr(dsdestinocreditopp_comision.Value + dsdestinocreditopp_gastos.Value) ;
frmsolicitud.edid.Text :=  dm.dssolicitudessol_id.AsString  ;


frmsolicitud.panel1.Visible := true;
frmsolicitud.pgmain.Visible := true;
frmsolicitud.panel2.Visible := true;

frmsolicitud.ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
frmsolicitud.edrfc.text := dm.dssolicitudessol_clirfc.AsString;
frmsolicitud.edcalle.Text := dm.dssolicitudessol_clicalle.AsString;
frmsolicitud.edext.Text := dm.dssolicitudessol_clinoext.AsString;
frmsolicitud.edint.Text := dm.dssolicitudessol_clinoint.AsString;

//tengo que sacar la consulta de la tabla fisicas

dm.filtra( dm.ds2, 'select prs_fk from solicitud_persona where sol_fk = ' + dm.dssolicitudessol_id.AsString + ' and slp_nombre =' +
quotedstr(trim(dm.dssolicitudessol_clinombre.AsString)));

//que pasaria si no se tiene el id de este cabron
if dm.ds2.FieldByName('prs_fk').Value = null then
 begin
 showmessage('No fue posible recuperar los datos del cliente.');
 frmsolicitud.edcurp.Text := '';//

frmsolicitud.cbxtipoid.text:= '';
frmsolicitud.edfolioid.Text := '';
frmsolicitud.edprofesion.Text := '';
frmsolicitud.cbxestados.Visible:= false;
frmsolicitud.dblckmunicipios.visible := false;
frmsolicitud.edlugarnac.Visible:= true;
frmsolicitud.edlugarnac.Text :='';
 end
 else
 begin
 frmsolicitud.edidpersona.Text := dm.ds2.FieldByName('prs_fk').AsString;
 dm.filtra(dm.ds1,'select * from fisicas where prs_fk = ' +dm.ds2.FieldByName('prs_fk').AsString );


frmsolicitud.edcurp.Text := dm.ds1.FieldByName('fsc_curp').AsString;//

frmsolicitud.cbxtipoid.text:= dm.ds1.FieldByName('fsc_tipoid').AsString;
frmsolicitud.edfolioid.Text := dm.ds1.FieldByName('fsc_folioid').AsString;
frmsolicitud.edprofesion.Text := dm.ds1.FieldByName('fsc_profesion').AsString;
frmsolicitud.cbxestados.Visible:= false;
frmsolicitud.dblckmunicipios.visible := false;
frmsolicitud.edlugarnac.Visible:= true;
frmsolicitud.edlugarnac.Text := dm.ds1.FieldByName('fsc_lugarnac').AsString;
frmsolicitud.edsexo.Text :=  dm.ds1.FieldByName('fsc_genero').AsString  ;
frmsolicitud.ednacion.Text := 'MEXICANA'; //esto no se debe hacer
frmsolicitud.cbxedocivil.Text := dm.ds1.FieldByName('fsc_edocivil').AsString;
frmsolicitud.dblckregimen.Text := dm.ds1.FieldByName('fsc_regimencon').AsString;


//hay que condicionar  para que se muestre el conyuge


end;

//falta el conyuge
dm.filtra(dm.ds2, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, solicitud_persona.slp_nombre, fisicas.fsc_tipoid, fisicas.fsc_folioid, '+
'personas.prs_rfc, fisicas.fsc_fecnac, personas.prs_calle, personas.prs_noext, personas.prs_noint, personas.cp_fk '+
'from solicitud_persona, personas, fisicas where '+
'solicitud_persona.prs_fk = personas.prs_id '+
'and fisicas.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 4 and solicitud_persona.sol_fk =' + dm.dssolicitudessol_id.AsString);

if dm.ds2.FieldByName('slp_nombre').Value = null then
begin
  //no hay conyugue
frmsolicitud.pnlconyuge.Visible := false;

end
else
begin
//hay un conyugue
frmsolicitud.pnlconyuge.Visible := true;
frmsolicitud.edconyuge.Text := dm.ds2.FieldByName('slp_nombre').AsString;
frmsolicitud.cbxtipoidconyuge.Text := dm.ds2.FieldByName('fsc_tipoid').AsString;
frmsolicitud.edfolioidconyuge.Text := dm.ds2.FieldByName('fsc_folioid').AsString;
frmsolicitud.edidconyuge.Text := dm.ds2.FieldByName('prs_fk').AsString;
frmsolicitud.edrfcconyuge.Text := dm.ds2.FieldByName('prs_rfc').AsString;
frmsolicitud.dtfechaconyuge.Date := dm.ds2.FieldByName('fsc_fecnac').Value ;
frmsolicitud.edcallecon.Text :=  dm.ds2.FieldByName('prs_calle').Value;
frmsolicitud.edextcon.Text :=  dm.ds2.FieldByName('prs_noext').Value;
frmsolicitud.edintcon.Text :=  dm.ds2.FieldByName('prs_noint').Value;

 // aqu itengo que hacer otra consulta para los datos del cp

  dm.filtra(dm.ds3, 'select * from cp where cp_id =' + dm.ds2.FieldByName('cp_fk').AsString);
 frmsolicitud.edcpcon.Text := dm.ds3.FieldByName('cp_codigopostal').Value ;
 frmsolicitud.edcoloniacon.Text := dm.ds3.FieldByName('cp_asentamiento').Value;
 frmsolicitud.edestadocon.Text := dm.ds3.FieldByName('cp_asentamiento').Value;
 frmsolicitud.edidcpcon.Text := dm.ds3.FieldByName('cp_id').AsString;
 frmsolicitud.edmunicipiocon.Text := dm.ds3.FieldByName('cp_municipio').AsString;

end;


//falta cp   cp_fk solicitud_persona


 dm.filtra(dm.ds1, 'select cp_fk from solicitud_persona where sol_fk =' + dm.dssolicitudessol_id.AsString + ' and prs_fk = ' + frmsolicitud.edidpersona.Text);


 dm.filtra(dm.ds2, 'select * from cp where cp_id =' + dm.ds1.FieldByName('cp_fk').AsString);
  frmsolicitud.edidcp.Text := dm.ds2.FieldByName('cp_id').AsString;
  frmsolicitud.edcp.Text  := dm.ds2.FieldByName('cp_codigopostal').AsString;
  frmsolicitud.edcolonia.Text := dm.ds2.FieldByName('cp_asentamiento').AsString;
  frmsolicitud.edmunicipio.Text := dm.ds2.FieldByName('cp_municipio').AsString;
  frmsolicitud.edestado.Text := dm.ds2.FieldByName('cp_estado').AsString;



//others
frmsolicitud.edantiguedad.Text := dm.dssolicitudessol_cliant.AsString;
frmsolicitud.edantiguedadcon.Text := dm.dssolicitudessol_cliant.AsString;
frmsolicitud.edtelcasa.Text := dm.dssolicitudessol_clitel1.AsString;
frmsolicitud.edcelular.Text := dm.dssolicitudessol_clitel2.AsString;
frmsolicitud.edcel2.Text := dm.dssolicitudessol_clitel3.AsString;
frmsolicitud.edtelfam.Text := dm.dssolicitudessol_clitel4.AsString;
frmsolicitud.edcorreo.Text := dm.dssolicitudessol_cliemail.AsString;

frmsolicitud.Button2.Click;

           frmsolicitud.show;


end;


procedure Tfrmlistasolicitudes.btnmodificaClick(Sender: TObject);
begin


dm.filtra(dm.ds1, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, tpr_tipopersona '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 1 and solicitud_persona.sol_fk = '+dm.dssolicitudessol_id.AsString);


if uppercase(trim(dm.ds1.FieldByName('tpr_tipopersona').AsString)) = uppercase(trim('FISICAS')) then

edita_fisica
 else
 edita_moral;
end;

procedure Tfrmlistasolicitudes.Button1Click(Sender: TObject);
begin
imprime_moral;
end;

procedure Tfrmlistasolicitudes.Button2Click(Sender: TObject);
begin
imprime_fisica;
end;

procedure Tfrmlistasolicitudes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    var
MRect : TRect ;
begin

 with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
btnmodifica.Parent := DBGrid1 ;
btnmodifica.Left := (MRect.Right - btnmodifica.Width) ;
btnmodifica.Top := MRect.Top ;
btnmodifica.Height := (MRect.Bottom-MRect.Top);



 frmprincipal.colorgrid(Rect, sender, DBGrid1, DataCol, Column, State);

end;

procedure Tfrmlistasolicitudes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//aqui debo regresar losdatos al form analisis

if (envia= 'A') then //analisis
begin
frmanalisis.edfolio.text := dm.dssolicitudessol_folio.AsString;
frmanalisis.ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
frmanalisis.edid.Text := dm.dssolicitudessol_id.AsString;

 dm.filtra(frmanalisis.dstipodoc, 'select * from sol_doc where sol_fk = ' + dm.dssolicitudessol_id.AsString);
  frmanalisis.Show;
    close;


close;

end;




if (envia = 'MC') then
begin
  frmmesacontrolcredito.edfolio.text := dm.dssolicitudessol_folio.AsString;
  frmmesacontrolcredito.ednombre.Text := dm.dssolicitudessol_clinombre.AsString;
  frmmesacontrolcredito.edid.Text := dm.dssolicitudessol_id.AsString;
  frmmesacontrolcredito.Show;
    close;
end;

end;

procedure Tfrmlistasolicitudes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;

procedure Tfrmlistasolicitudes.Label1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmlistasolicitudes.Panel7Click(Sender: TObject);
begin
application.CreateForm(Tfrmtimeline, frmtimeline);

frmtimeline.lbltitulo.Caption := dm.dssolicitudessol_clinombre.AsString;

            frmtimeline.lblfechainicio.Caption := formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_fecha.Value);


            if dm.dssolicitudessol_fecrev.asstring = '' then
            frmtimeline.lblfecrevision.Caption := ''
            else
            frmtimeline.lblfecrevision.Caption :=  formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_fecrev.Value);


            if dm.dssolicitudessol_FecAnalisis.asstring = '' then
            frmtimeline.lblfechaanalisis.Caption := ''
            else
            frmtimeline.lblfechaanalisis.Caption :=  formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_FecAnalisis.Value);


            if dm.dssolicitudessol_fecaproba.asstring ='' then
                frmtimeline.lblfechaaprobacion.caption := ''
                else
                frmtimeline.lblfechaaprobacion.caption := formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_fecaproba.Value);



             if dm.dssolicitudessol_FecRec.asstring = '' then
                begin
                  frmtimeline.imgcancela.Visible := false;
                  frmtimeline.lbltitulorechazado.Visible := false;
                  frmtimeline.lblfechacancela.Visible:= false;

                  frmtimeline.imgaprueba.Visible := true;
                  frmtimeline.lbltituloaproba.Visible := true;
                  frmtimeline.lblfechaaprobacion.Visible:= true;



                end
                else
                begin
                   frmtimeline.imgcancela.Visible := true;
                  frmtimeline.lbltitulorechazado.Visible := true;
                  frmtimeline.lblfechacancela.Visible:= true;
                  frmtimeline.lblfechaanalisis.Caption :=  formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_FecRec.Value);

                   frmtimeline.imgaprueba.Visible := false;
                  frmtimeline.lbltituloaproba.Visible := false;
                  frmtimeline.lblfechaaprobacion.Visible:= false;




                end;



           {      if dm.dssolicitudessol_fecaproba.Value = null then
                begin
                  frmtimeline.imgcancela.Visible := false;
                  frmtimeline.lbltitulorechazado.Visible := false;
                  frmtimeline.lblfechacancela.Visible:= false;

                  frmtimeline.imgaprueba.Visible := true;
                  frmtimeline.lbltituloaproba.Visible := true;
                  frmtimeline.lblfechaaprobacion.Visible:= true;



                end
                else
                begin
                   frmtimeline.imgcancela.Visible := true;
                  frmtimeline.lbltitulorechazado.Visible := true;
                  frmtimeline.lblfechacancela.Visible:= true;
                  frmtimeline.lblfechaanalisis.Caption :=  formatdatetime('dd-mm-yyyy', dm.dssolicitudessol_FecRec.Value);

                   frmtimeline.imgaprueba.Visible := false;
                  frmtimeline.lbltituloaproba.Visible := false;
                    frmtimeline.lblfechaaprobacion.Visible:= false;




                end;       }


            frmtimeline.show;
end;

procedure Tfrmlistasolicitudes.Panel7MouseLeave(Sender: TObject);
begin
Panel7.Color:=$004080FF;
end;

procedure Tfrmlistasolicitudes.Panel7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
Panel7.Color:=$00719FFF;
end;

procedure Tfrmlistasolicitudes.pnlImprimirClick(Sender: TObject);

 begin

dm.filtra(dm.ds1, 'select solicitud_persona.sol_fk, solicitud_persona.prs_fk, tpr_tipopersona '+
'from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 1 and solicitud_persona.sol_fk = '+dm.dssolicitudessol_id.AsString);

if uppercase(trim(dm.ds1.FieldByName('tpr_tipopersona').AsString)) = uppercase(trim('FISICAS')) then

imprime_fisica
 else
imprime_moral;






end;

procedure Tfrmlistasolicitudes.pnlImprimirMouseLeave(Sender: TObject);
begin
pnlImprimir.Color := $0034B0F1;
end;

procedure Tfrmlistasolicitudes.pnlImprimirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pnlImprimir.Color := $004F53D9
end;

procedure Tfrmlistasolicitudes.pnlNuevoClick(Sender: TObject);
begin
close;


application.CreateForm(Tfrmtiposolicitud, frmtiposolicitud);
            frmtiposolicitud.showmodal;
 {
 }
end;

procedure Tfrmlistasolicitudes.pnlNuevoMouseLeave(Sender: TObject);
begin
 pnlNuevo.Color :=$00C08000 ;   // all covers from Sharon will be better than the originals.
end;

procedure Tfrmlistasolicitudes.pnlNuevoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 pnlNuevo.Color := $00C1C760;
end;

end.
