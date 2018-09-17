unit dudm;

//esto es un cambio intencional
//para ver si lo actualiza en el git hub

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractTable, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractConnection, ZConnection,
  Datasnap.Provider, Datasnap.DBClient, ZSqlUpdate;

type
  Tdm = class(TDataModule)
    ZConnection1: TZConnection;
    dsusuario: TZQuery;
    ztblusuario: TZTable;
    ztblusuariousr_id: TLongWordField;
    ztblusuariousr_usuario: TWideStringField;
    ztblusuariousr_pswd: TWideStringField;
    ztblusuariousr_nombre: TWideStringField;
    ztblusuariousr_puesto: TWideStringField;
    ztblusuariousr_email: TWideStringField;
    ztblusuariousr_telefono: TWideStringField;
    ztblusuariousr_calle: TWideStringField;
    ztblusuariousr_noext: TWideStringField;
    ztblusuariousr_noint: TWideStringField;
    ztblusuariocp_fk: TIntegerField;
    ztblusuariorls_fk: TIntegerField;
    ztblusuariousr_intcnx: TIntegerField;
    ztblusuariousr_conectado: TSmallintField;
    ztblusuariousr_fecpswd: TDateField;
    ds1: TZQuery;
    dsrol: TZQuery;
    dsrolrls_id: TIntegerField;
    dsrolrls_dscripcion: TWideStringField;
    dscp: TZQuery;
    dsPersonas: TZQuery;
    dsusuariousr_id: TIntegerField;
    dsusuariousr_usuario: TWideStringField;
    dsusuariousr_pswd: TWideStringField;
    dsusuariousr_nombre: TWideStringField;
    dsusuariousr_puesto: TWideStringField;
    dsusuariousr_email: TWideStringField;
    dsusuariousr_telefono: TWideStringField;
    dsusuariousr_calle: TWideStringField;
    dsusuariousr_noext: TWideStringField;
    dsusuariousr_noint: TWideStringField;
    dsusuariousr_intcnx: TIntegerField;
    dsusuariousr_conectado: TSmallintField;
    dsusuariousr_fecpswd: TDateField;
    dsusuariousr_estatus: TWideStringField;
    dsusuariocp_fk: TIntegerField;
    dsusuariorls_fk: TIntegerField;
    dscpcp_id: TIntegerField;
    dscpcp_clave: TWideStringField;
    dscpcp_codigopostal: TWideStringField;
    dscpcp_estado: TWideStringField;
    dscpcp_municipio: TWideStringField;
    dscpcp_asentamiento: TWideStringField;
    dscpcp_tipoasentamiento: TWideStringField;
    dscptpa_fk: TIntegerField;
    ZTable1: TZTable;
    dsProd: TZQuery;
    dsSubProd: TZQuery;
    dsSubProdsbp_id: TIntegerField;
    dsSubProdsbp_descripcion: TWideStringField;
    dsSubProdtpr_fk: TIntegerField;
    ConsultaIDPersonas: TZQuery;
    dsfisicas: TZQuery;
    dsmorales: TZQuery;
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
    dsPrsMoral: TZQuery;
    dsPrsMoralprs_id: TIntegerField;
    dsPrsMoralprs_clave: TWideStringField;
    dsPrsMoralprs_nombre: TWideStringField;
    dsPrsMoralprs_rfc: TWideStringField;
    dsPrsMoralprs_calle: TWideStringField;
    dsPrsMoralprs_noint: TWideStringField;
    dsPrsMoralprs_noext: TWideStringField;
    dsPrsMoralprs_tel1: TWideStringField;
    dsPrsMoralprs_tel2: TWideStringField;
    dsPrsMoralprs_tel3: TWideStringField;
    dsPrsMoralprs_email: TWideStringField;
    dsPrsMoralprs_url: TWideStringField;
    dsPrsMoralprs_estatus: TWideStringField;
    dsPrsMoralrgc_fk: TIntegerField;
    dsPrsMoraltpr_fk: TIntegerField;
    dsPrsMoraltpr_tipopersona: TWideStringField;
    dsPrsMoralmrl_id: TIntegerField;
    dsPrsMoralmrl_razonsocial: TWideStringField;
    dsPrsMoralprs_fk: TIntegerField;
    dsPrsMoralmrl_fecconstitucion: TDateField;
    dsPrsMoralmrl_fecinscripcion: TDateField;
    dsPrsMoralmrl_numescritura: TWideStringField;
    dsPrsMoralmrl_folinscripcion: TWideStringField;
    dsPrsMoralmrl_folmercantil: TWideStringField;
    dsPrsMoralmrl_lugarreg: TWideStringField;
    dsPrsMoralmrl_corporativo: TWideStringField;
    dsPrsMoralmrl_dirgral: TWideStringField;
    dsPrsMoralmrl_gtegral: TWideStringField;
    dsPrsMoralmrl_adminunico: TWideStringField;
    dsPrsMoralmrl_rlnumescr: TWideStringField;
    dsPrsMoralmrl_rlfecesc: TDateField;
    dsPrsMoralmrl_rlfolins: TWideStringField;
    dsPrsMoralmrl_rlfolmerc: TWideStringField;
    dsPrsMoralmrl_rllocreg: TWideStringField;
    dsPrsMoralmrl_modoadmon: TWideStringField;
    dsPrsFisica: TZQuery;
    dsPrsFisicaprs_id: TIntegerField;
    dsPrsFisicaprs_clave: TWideStringField;
    dsPrsFisicaprs_nombre: TWideStringField;
    dsPrsFisicaprs_rfc: TWideStringField;
    dsPrsFisicaprs_calle: TWideStringField;
    dsPrsFisicaprs_noint: TWideStringField;
    dsPrsFisicaprs_noext: TWideStringField;
    dsPrsFisicaprs_tel1: TWideStringField;
    dsPrsFisicaprs_tel2: TWideStringField;
    dsPrsFisicaprs_tel3: TWideStringField;
    dsPrsFisicaprs_email: TWideStringField;
    dsPrsFisicaprs_url: TWideStringField;
    dsPrsFisicaprs_estatus: TWideStringField;
    dsPrsFisicargc_fk: TIntegerField;
    dsPrsFisicatpr_fk: TIntegerField;
    dsPrsFisicatpr_tipopersona: TWideStringField;
    dsPrsFisicafsc_id: TIntegerField;
    dsPrsFisicafsc_nombres: TWideStringField;
    dsPrsFisicafsc_apaterno: TWideStringField;
    dsPrsFisicafsc_amaterno: TWideStringField;
    dsPrsFisicaprs_fk: TIntegerField;
    dsPrsFisicafsc_fecnac: TDateField;
    dsPrsFisicafsc_lugarnac: TWideStringField;
    dsPrsFisicafsc_edocivil: TWideStringField;
    dsPrsFisicafsc_genero: TWideStringField;
    dsPrsFisicafsc_curp: TWideStringField;
    dsPrsFisicafsc_profesion: TWideStringField;
    dsPrsFisicafsc_folioid: TWideStringField;
    dsPrsFisicafsc_numacc: TIntegerField;
    dsPrsFisicafsc_importeaccion: TFloatField;
    dsPrsFisicafsc_poraccion: TFloatField;
    dsMonedas: TZQuery;
    dsActividades: TZQuery;
    dsMonedasmnd_id: TIntegerField;
    dsMonedasmnd_descripcion: TWideStringField;
    dsMonedasmnd_valor: TFloatField;
    dsMonedasmnd_fecact: TDateTimeField;
    dsPersonasprs_id: TIntegerField;
    dsPersonasprs_clave: TWideStringField;
    dsPersonasprs_nombre: TWideStringField;
    dsPersonasprs_rfc: TWideStringField;
    dsPersonasprs_calle: TWideStringField;
    dsPersonasprs_noint: TWideStringField;
    dsPersonasprs_noext: TWideStringField;
    dsPersonasprs_tel1: TWideStringField;
    dsPersonasprs_tel2: TWideStringField;
    dsPersonasprs_tel3: TWideStringField;
    dsPersonasprs_email: TWideStringField;
    dsPersonasprs_url: TWideStringField;
    dsPersonasprs_estatus: TWideStringField;
    dsPersonasrgc_fk: TIntegerField;
    dsPersonastpr_fk: TIntegerField;
    dsPersonastpr_tipopersona: TWideStringField;
    dsEmpresa: TZQuery;
    dsacciones: TZQuery;
    dsaccionesacc_id: TIntegerField;
    dsaccionesacc_descripcion: TWideStringField;
    dsaccionesacc_dependencia: TIntegerField;
    dsaccionesacc_tipo: TWideStringField;
    dsaccionesacc_fk: TIntegerField;
    dsaccionesrls_fk: TIntegerField;
    dsaccionesrla_permitido: TSmallintField;
    dsacciones2: TZQuery;
    dsacciones2acc_id: TIntegerField;
    dsacciones2acc_descripcion: TWideStringField;
    dsacciones2acc_dependencia: TIntegerField;
    dsacciones2acc_tipo: TWideStringField;
    dsrolrls_estatus: TWideStringField;
    dsacciones3: TZQuery;
    dsacciones3acc_fk: TIntegerField;
    dsacciones3rls_fk: TIntegerField;
    dsacciones3rla_permitido: TSmallintField;
    dsacciones3acc_id: TIntegerField;
    dsacciones3acc_descripcion: TWideStringField;
    dsacciones3usr_id: TIntegerField;
    dsacciones3rls_fk_1: TIntegerField;
    dsacciones3acc_dependencia: TIntegerField;
    dspermisos: TZQuery;
    dspermisosacc_fk: TIntegerField;
    dspermisosrls_fk: TIntegerField;
    dspermisosrla_permitido: TSmallintField;
    dsCentroTrabajo: TZQuery;
    dsBancos: TZQuery;
    dsCentroTrabajoct_id: TIntegerField;
    dsCentroTrabajocd_clave: TWideStringField;
    dsCentroTrabajoct_descripcion: TWideStringField;
    dsCentroTrabajoct_calle: TWideStringField;
    dsCentroTrabajoct_noext: TWideStringField;
    dsCentroTrabajoct_no_int: TWideStringField;
    dsCentroTrabajoct_telefono: TWideStringField;
    dsCentroTrabajoct_email: TWideStringField;
    dsCentroTrabajocp_fk: TIntegerField;
    ds2: TZQuery;
    dsusuariousr_ultintcnx: TDateTimeField;
    dsdocumentos: TZQuery;
    dsPersonascp_fk: TIntegerField;
    dsPrsMoralcp_fk: TIntegerField;
    dsPrsFisicacp_fk: TIntegerField;
    dsregimen: TZQuery;
    dssolicitudes: TZQuery;
    dsplan_pagos: TZQuery;
    dssubproducto: TZQuery;
    dssolingreso: TZQuery;
    dspasivosbanco: TZQuery;
    dspasivosnobanco: TZQuery;
    dssolreferencias: TZQuery;
    dspasivosnobancoslpsv_id: TIntegerField;
    dspasivosnobancosol_fk: TIntegerField;
    dspasivosnobancoslpsv_tipo: TWideStringField;
    dspasivosnobancoslpsv_institucion: TWideStringField;
    dspasivosnobancoslpsv_tipocred: TWideStringField;
    dspasivosnobancoslpsv_monto: TFloatField;
    dspasivosnobancoslpsv_ven: TDateField;
    dspasivosnobancomoneda_fk: TIntegerField;
    dspasivosnobancoslpsv_garantias: TWideStringField;
    dspasivosnobancomnd_id: TIntegerField;
    dspasivosnobancomnd_descripcion: TWideStringField;
    dspasivosnobancomnd_valor: TFloatField;
    dspasivosnobancomnd_fecact: TDateTimeField;
    dssolicitudessol_id: TIntegerField;
    dssolicitudessol_folio: TIntegerField;
    dssolicitudessol_fecha: TDateField;
    dssolicitudessol_fecaproba: TDateField;
    dssolicitudessol_monto: TFloatField;
    dssolicitudessol_montoaut: TFloatField;
    dssolicitudessol_plazo: TFloatField;
    dssolicitudespp_fk: TIntegerField;
    dssolicitudessol_destino: TWideStringField;
    dssolicitudessol_tasaord: TFloatField;
    dssolicitudessol_tasamor: TFloatField;
    dssolicitudessol_periodicidad: TFloatField;
    dssolicitudessol_iva: TFloatField;
    dssolicitudessol_freccapint: TFloatField;
    dssolicitudessol_frecpagcap: TFloatField;
    dssolicitudessol_frecpagint: TFloatField;
    dssolicitudessol_prodseg: TWideStringField;
    dssolicitudessol_producto: TWideStringField;
    dssolicitudessol_clinombre: TWideStringField;
    dssolicitudessol_clirfc: TWideStringField;
    dssolicitudessol_clicalle: TWideStringField;
    dssolicitudessol_clinoint: TWideStringField;
    dssolicitudessol_clinoext: TWideStringField;
    dssolicitudessol_clicol: TWideStringField;
    dssolicitudessol_clicp: TIntegerField;
    dssolicitudessol_cliant: TWideStringField;
    dssolicitudessol_clitel1: TWideStringField;
    dssolicitudessol_clitel2: TWideStringField;
    dssolicitudessol_clitel3: TWideStringField;
    dssolicitudessol_clitel4: TWideStringField;
    dssolicitudessol_cliemail: TWideStringField;
    dssolicitudessol_clinac: TWideStringField;
    dssolicitudessol_clireg: TWideStringField;
    dssolicitudessol_comision: TFloatField;
    dssolicitudessol_gastos: TFloatField;
    dssolicitudesusr_fk: TIntegerField;
    dssolicitudessol_fecrev: TDateField;
    dssolicitudessol_observarev: TWideStringField;
    dssolicitudessol_estatus: TWideStringField;
    ds3: TZQuery;
    dssolingresoslin_id: TIntegerField;
    dssolingresoslin_origen: TWideStringField;
    dssolingresoslin_importe: TFloatField;
    dssolingresoslin_periodicidad: TWideStringField;
    dssolingresosol_fk: TIntegerField;
    dssolactividades: TZQuery;
    dspasivosbancoslpsv_id: TIntegerField;
    dspasivosbancosol_fk: TIntegerField;
    dspasivosbancoslpsv_tipo: TWideStringField;
    dspasivosbancoslpsv_institucion: TWideStringField;
    dspasivosbancoslpsv_tipocred: TWideStringField;
    dspasivosbancoslpsv_monto: TFloatField;
    dspasivosbancoslpsv_ven: TDateField;
    dspasivosbancomoneda_fk: TIntegerField;
    dspasivosbancoslpsv_garantias: TWideStringField;
    dspasivosbancomnd_id: TIntegerField;
    dspasivosbancomnd_descripcion: TWideStringField;
    dspasivosbancomnd_valor: TFloatField;
    dspasivosbancomnd_fecact: TDateTimeField;
    dssolreferenciassol_fk: TIntegerField;
    dssolreferenciasprs_fk: TIntegerField;
    dssolreferenciasslp_nombre: TWideStringField;
    dssolreferenciasslp_tel1: TWideStringField;
    dssolreferenciasslp_contacto: TWideStringField;
    dsdocumentostpd_id: TIntegerField;
    dsdocumentostpd_descripcion: TWideStringField;
    dsdocumentostpd_estatus: TSmallintField;
    dsdocumentostpd_docvalor: TSmallintField;
    dsEmpresaemp_id: TIntegerField;
    dsEmpresaemp_clave: TWideStringField;
    dsEmpresaemp_nombre: TWideStringField;
    dsEmpresaemp_logo: TBlobField;
    dsEmpresaemp_calle: TWideStringField;
    dsEmpresaemp_noext: TWideStringField;
    dsEmpresaemp_noint: TWideStringField;
    dsEmpresaemp_telefono: TWideStringField;
    dsEmpresaemp_url: TWideStringField;
    dsEmpresaemp_email: TWideStringField;
    dsEmpresacp_fk: TIntegerField;
    dssolicitudes2: TZQuery;
    dssolicitudes2sol_id: TIntegerField;
    dssolicitudes2sol_folio: TIntegerField;
    dssolicitudes2sol_fecha: TDateField;
    dssolicitudes2sol_fecaproba: TDateField;
    dssolicitudes2sol_monto: TFloatField;
    dssolicitudes2sol_montoaut: TFloatField;
    dssolicitudes2sol_plazo: TFloatField;
    dssolicitudes2pp_fk: TIntegerField;
    dssolicitudes2sol_destino: TWideStringField;
    dssolicitudes2sol_tasaord: TFloatField;
    dssolicitudes2sol_tasamor: TFloatField;
    dssolicitudes2sol_periodicidad: TFloatField;
    dssolicitudes2sol_iva: TFloatField;
    dssolicitudes2sol_freccapint: TFloatField;
    dssolicitudes2sol_frecpagcap: TFloatField;
    dssolicitudes2sol_frecpagint: TFloatField;
    dssolicitudes2sol_prodseg: TWideStringField;
    dssolicitudes2sol_producto: TWideStringField;
    dssolicitudes2sol_clinombre: TWideStringField;
    dssolicitudes2sol_clirfc: TWideStringField;
    dssolicitudes2sol_clicalle: TWideStringField;
    dssolicitudes2sol_clinoint: TWideStringField;
    dssolicitudes2sol_clinoext: TWideStringField;
    dssolicitudes2sol_clicol: TWideStringField;
    dssolicitudes2sol_clicp: TIntegerField;
    dssolicitudes2sol_cliant: TWideStringField;
    dssolicitudes2sol_clitel1: TWideStringField;
    dssolicitudes2sol_clitel2: TWideStringField;
    dssolicitudes2sol_clitel3: TWideStringField;
    dssolicitudes2sol_clitel4: TWideStringField;
    dssolicitudes2sol_cliemail: TWideStringField;
    dssolicitudes2sol_clinac: TWideStringField;
    dssolicitudes2sol_clireg: TWideStringField;
    dssolicitudes2sol_comision: TFloatField;
    dssolicitudes2sol_gastos: TFloatField;
    dssolicitudes2usr_fk: TIntegerField;
    dssolicitudes2sol_fecrev: TDateField;
    dssolicitudes2sol_observarev: TWideStringField;
    dssolicitudes2sol_estatus: TWideStringField;
    dssolicitudes2sol_FecRec: TDateTimeField;
    dssolicitudes2sol_observaRec: TWideStringField;
    dssolicitudes2sol_FecAnalisis: TDateTimeField;
    dssolicitudes2sol_observaAnalisis: TWideStringField;
    dssolicitudes2sol_folcred: TIntegerField;
    dssolicitudes2sol_seriecred: TWideStringField;
    dssolicitudes2frmpago_fk: TIntegerField;
    dssolicitudes2ctadestino_fk: TIntegerField;
    dssolicitudes2folcred: TWideStringField;
    dsProdprd_id: TIntegerField;
    dsProdprd_codigo: TWideStringField;
    dsProdprd_prefijofolio: TWideStringField;
    dsProdprd_descripcion: TWideStringField;
    dsProdprd_plazoMin: TIntegerField;
    dsProdprd_PlazoMax: TIntegerField;
    dsProdprd_tord: TFloatField;
    dsProdprd_tmor: TFloatField;
    dsProdprd_tiva: TFloatField;
    dsProdprd_solicitud: TBlobField;
    dsProdprd_contrato: TBlobField;
    dsProdprd_tipoInteres: TWideStringField;
    dsProdprd_frmIntOrd: TWideStringField;
    dsProdprd_frmIntMor: TWideStringField;
    dsProdprd_frecCapInt: TFloatField;
    dsProdprd_frecPagCap: TFloatField;
    dsProdprd_frecPagInt: TFloatField;
    dsProdprd_estatus: TWideStringField;
    dsProdsbp_fk: TIntegerField;
    dsProdprd_frmSaldo: TWideStringField;
    dsProdprd_frmMontoC: TWideStringField;
    dsProdprd_periodicidad: TFloatField;
    dsProdprd_comision: TFloatField;
    dsProdprd_gastos: TFloatField;
    dssolicitudessol_FecRec: TDateTimeField;
    dssolicitudessol_observaRec: TWideStringField;
    dssolicitudessol_FecAnalisis: TDateTimeField;
    dssolicitudessol_observaAnalisis: TWideStringField;
    dssolicitudessol_folcred: TIntegerField;
    dssolicitudessol_seriecred: TWideStringField;
    dssolicitudesfrmpago_fk: TIntegerField;
    dssolicitudesctadestino_fk: TIntegerField;
    dsplanpagosdetalle: TZQuery;
    dsplanpagosdetalleppd_id: TIntegerField;
    dsplanpagosdetalleppd_nperiodo: TIntegerField;
    dsplanpagosdetalleppd_fecha: TDateField;
    dsplanpagosdetalleppd_monto: TFloatField;
    dsplanpagosdetalleppd_acapiatl: TFloatField;
    dsplanpagosdetalleppd_intord: TFloatField;
    dsplanpagosdetalleppd_iva: TFloatField;
    dsplanpagosdetalleppd_pago: TFloatField;
    dsplanpagosdetalleppd_saldo: TFloatField;
    dsplanpagosdetallepp_fk: TIntegerField;
    dsplan_pagospp_id: TIntegerField;
    dsplan_pagospp_descripcion: TWideStringField;
    dsplan_pagospp_fecha: TDateField;
    dsplan_pagospp_estatus: TWideStringField;
    dsplan_pagospp_plazo: TFloatField;
    dsplan_pagosprd_descripcion: TWideStringField;
    dsplan_pagosprd_fk: TIntegerField;
    dsplan_pagospp_monto: TFloatField;
    dsplan_pagospp_periodicidad: TFloatField;
    dsplan_pagospp_tord: TFloatField;
    dsplan_pagospp_tmor: TFloatField;
    dsplan_pagospp_tiva: TFloatField;
    dsplan_pagospp_frmintord: TWideStringField;
    dsplan_pagospp_frmintmor: TWideStringField;
    dsplan_pagospp_freccapint: TFloatField;
    dsplan_pagospp_frecpagcap: TFloatField;
    dsplan_pagospp_frecpagint: TFloatField;
    dsplan_pagospp_editable: TSmallintField;
    dsplan_pagospp_tipointeres: TWideStringField;
    dsplan_pagospp_comision: TFloatField;
    dsplan_pagospp_gastos: TFloatField;
    dsplan_pagossbp_descripcion: TWideStringField;
    dsarve: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    colonia: string;
    estado: string;
    cp: string;
    idcp: string;
    id_usuario: integer;
    id_rol: integer;
    usuario : string;
    con_sol_ingresos: string;
    con_pasivosbanco: string;
    con_pasivosnobanco: string;
    con_solactividades: string;
    con_solreferencias: string;
    BtnAgregar, BtnEditar, BtnEliminar, BtnImprimir, BtnExportar: Integer;
    procedure filtra(Data: Tzquery; filtro:string);
    procedure cambia(Data: Tzquery; filtro: string);
    procedure Activa_DS(Data: Tzquery);
    procedure permisos(menu:Integer; idrol:Integer);
    function formatotexto(cadena: string): string;

  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.Activa_DS(data: Tzquery);
begin
  data.Active:=false;
  data.Active := True;
  data.Close;
  data.Open;
  data.fetchall;
end;

procedure tdm.cambia(Data:Tzquery; filtro:string);
begin
          data.Close;
                     Data.sql.Clear;
                     Data.sql.Text := filtro;
                     Data.ExecSQL;
                   //  trans.CommitRetaining ;

end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  con_sol_ingresos := 'select * from sol_ingresos ';
  con_pasivosbanco := 'select * from sol_pasivo, monedas  where sol_pasivo.moneda_fk = monedas.mnd_id and slpsv_tipo = '+ quotedstr('BANCARIOS');
  con_pasivosnobanco := 'select * from sol_pasivo, monedas  where sol_pasivo.moneda_fk = monedas.mnd_id and slpsv_tipo = '+ quotedstr('NO BANCARIOS');
  con_solactividades := 'select * from actividades, sol_act where sol_act.act_fk = actividades.act_id and sol_act.sol_fk = '  ;
  con_solreferencias := 'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto from solicitud_persona, personas where solicitud_persona.prs_fk = personas.prs_id '+
'and personas.tpr_fk = 7 and solicitud_persona.sol_fk = ';
end;

procedure Tdm.filtra(Data: Tzquery; filtro:string);
begin
  data.Close;
  data.sql.Clear;
  data.sql.Text:= filtro;
  Data.Open;
  data.fetchall;
end;

function Tdm.formatotexto(cadena: string): string;
const
  CA = '����������������������������������������';
  CB = 'AEIOUAEIOUAEIOUAEIOUaeiouaeiouaeiouaeiou';
var
  Ch: Char;
  L, P: Integer;
  Source, Dest: PChar;
  cadena1:string;
begin
  cadena1:= trim(cadena);
  cadena:= ansiUpperCase(cadena1);
  L := Length(cadena);
  SetLength(Result, L);
  Source := Pointer(cadena);
  Dest := Pointer(Result);
  while L <> 0 do
  begin
    Ch := Source^;
    P := Pos(Ch, CA);
    if P > 0 then
      Dest^ := CB[P]
    else
      Dest^ := Ch;
    Inc(Source);
    Inc(Dest);
    Dec(L);
  end;
end;

procedure Tdm.permisos(menu: Integer; idrol: Integer);
var
X, Accion: Integer;
Descripcion: string;
begin
  BtnAgregar:=0;
  BtnEditar:=0;
  BtnEliminar:=0;
  BtnImprimir:=0;
  BtnExportar:=0;
  dm.filtra(dm.dsacciones2,'SELECT * FROM acciones WHERE acc_dependencia='+IntToStr(menu));
  dm.dsacciones2.First;
  for X:=0 to (dm.dsacciones2.RecordCount-1) do
    begin
      Descripcion:=AnsiUpperCase(dm.dsacciones2acc_descripcion.Value);
      dm.filtra(dm.dspermisos,'SELECT * FROM rol_accion WHERE rls_fk='+IntToStr(idrol)+' and acc_fk='+IntToStr(dm.dsacciones2acc_id.Value));
      Accion:=Pos('AGREGAR', Descripcion);
      if(Accion<>0) and (dm.dspermisosrla_permitido.Value=1) then
      begin
        BtnAgregar:=1;
      end;
      Accion:=Pos('EDITAR', Descripcion);
      if(Accion<>0) and (dm.dspermisosrla_permitido.Value=1) then
      begin
        BtnEditar:=1;
      end;
      Accion:=Pos('ELIMINAR', Descripcion);
      if(Accion<>0) and (dm.dspermisosrla_permitido.Value=1) then
      begin
        BtnEliminar:=1;
      end;
      Accion:=Pos('IMPRIMIR', Descripcion);
      if(Accion<>0) and (dm.dspermisosrla_permitido.Value=1) then
      begin
        BtnImprimir:=1;
      end;
      Accion:=Pos('EXPORTAR', Descripcion);
      if(Accion<>0) and (dm.dspermisosrla_permitido.Value=1) then
      begin
        BtnExportar:=1;
      end;
    dm.dsacciones2.Next;
    end;
end;

end.
