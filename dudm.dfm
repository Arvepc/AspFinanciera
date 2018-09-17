object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 716
  Width = 599
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'CLIENT_MULTI_STATEMENTS=1'
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16')
    DesignConnection = True
    HostName = 'nextcom.com.mx'
    Port = 3306
    Database = 'aspfinancedb'
    User = 'asp_useradm'
    Password = 'LJI~HsyggWN#'
    Protocol = 'mysql-5'
    LibraryLocation = 'C:\Desarrollo\libs\libmysql.dll'
    Left = 32
    Top = 24
  end
  object dsusuario: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from usuario where usr_estatus='#39'ACTIVO'#39)
    Params = <>
    Left = 120
    Top = 80
    object dsusuariousr_id: TIntegerField
      FieldName = 'usr_id'
      Required = True
    end
    object dsusuariousr_usuario: TWideStringField
      FieldName = 'usr_usuario'
      Required = True
    end
    object dsusuariousr_pswd: TWideStringField
      FieldName = 'usr_pswd'
      Required = True
      Size = 50
    end
    object dsusuariousr_nombre: TWideStringField
      FieldName = 'usr_nombre'
      Required = True
      Size = 100
    end
    object dsusuariousr_puesto: TWideStringField
      FieldName = 'usr_puesto'
      Required = True
      Size = 100
    end
    object dsusuariousr_email: TWideStringField
      FieldName = 'usr_email'
      Required = True
      Size = 100
    end
    object dsusuariousr_telefono: TWideStringField
      FieldName = 'usr_telefono'
      Required = True
    end
    object dsusuariousr_calle: TWideStringField
      FieldName = 'usr_calle'
      Required = True
      Size = 100
    end
    object dsusuariousr_noext: TWideStringField
      FieldName = 'usr_noext'
      Required = True
    end
    object dsusuariousr_noint: TWideStringField
      FieldName = 'usr_noint'
      Required = True
    end
    object dsusuariousr_intcnx: TIntegerField
      FieldName = 'usr_intcnx'
      Required = True
    end
    object dsusuariousr_conectado: TSmallintField
      FieldName = 'usr_conectado'
      Required = True
    end
    object dsusuariousr_fecpswd: TDateField
      FieldName = 'usr_fecpswd'
      Required = True
    end
    object dsusuariousr_estatus: TWideStringField
      FieldName = 'usr_estatus'
      Required = True
      Size = 8
    end
    object dsusuariocp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
    object dsusuariorls_fk: TIntegerField
      FieldName = 'rls_fk'
      Required = True
    end
    object dsusuariousr_ultintcnx: TDateTimeField
      FieldName = 'usr_ultintcnx'
      Required = True
    end
  end
  object ztblusuario: TZTable
    Connection = ZConnection1
    TableName = 'usuario'
    Left = 120
    Top = 216
    object ztblusuariousr_id: TLongWordField
      FieldName = 'usr_id'
      Required = True
    end
    object ztblusuariousr_usuario: TWideStringField
      FieldName = 'usr_usuario'
      Required = True
    end
    object ztblusuariousr_pswd: TWideStringField
      FieldName = 'usr_pswd'
      Required = True
    end
    object ztblusuariousr_nombre: TWideStringField
      FieldName = 'usr_nombre'
      Required = True
    end
    object ztblusuariousr_puesto: TWideStringField
      FieldName = 'usr_puesto'
      Required = True
    end
    object ztblusuariousr_email: TWideStringField
      FieldName = 'usr_email'
      Required = True
    end
    object ztblusuariousr_telefono: TWideStringField
      FieldName = 'usr_telefono'
      Required = True
    end
    object ztblusuariousr_calle: TWideStringField
      FieldName = 'usr_calle'
      Required = True
      Size = 100
    end
    object ztblusuariousr_noext: TWideStringField
      FieldName = 'usr_noext'
      Required = True
    end
    object ztblusuariousr_noint: TWideStringField
      FieldName = 'usr_noint'
      Required = True
    end
    object ztblusuariocp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
    object ztblusuariorls_fk: TIntegerField
      FieldName = 'rls_fk'
      Required = True
    end
    object ztblusuariousr_intcnx: TIntegerField
      FieldName = 'usr_intcnx'
      Required = True
    end
    object ztblusuariousr_conectado: TSmallintField
      FieldName = 'usr_conectado'
      Required = True
    end
    object ztblusuariousr_fecpswd: TDateField
      FieldName = 'usr_fecpswd'
      Required = True
    end
  end
  object ds1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 208
    Top = 80
  end
  object dsrol: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from roles')
    Params = <>
    Left = 120
    Top = 144
    object dsrolrls_id: TIntegerField
      FieldName = 'rls_id'
      Required = True
    end
    object dsrolrls_dscripcion: TWideStringField
      FieldName = 'rls_dscripcion'
      Required = True
    end
    object dsrolrls_estatus: TWideStringField
      FieldName = 'rls_estatus'
      Required = True
      Size = 8
    end
  end
  object dscp: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from cp where cp_id = 1')
    Params = <>
    Left = 288
    Top = 80
    object dscpcp_id: TIntegerField
      FieldName = 'cp_id'
      Required = True
    end
    object dscpcp_clave: TWideStringField
      FieldName = 'cp_clave'
      Required = True
      Size = 10
    end
    object dscpcp_codigopostal: TWideStringField
      FieldName = 'cp_codigopostal'
      Required = True
      Size = 7
    end
    object dscpcp_estado: TWideStringField
      FieldName = 'cp_estado'
      Required = True
      Size = 50
    end
    object dscpcp_municipio: TWideStringField
      FieldName = 'cp_municipio'
      Required = True
      Size = 100
    end
    object dscpcp_asentamiento: TWideStringField
      FieldName = 'cp_asentamiento'
      Required = True
      Size = 100
    end
    object dscpcp_tipoasentamiento: TWideStringField
      FieldName = 'cp_tipoasentamiento'
      Required = True
      Size = 100
    end
    object dscptpa_fk: TIntegerField
      FieldName = 'tpa_fk'
      Required = True
    end
  end
  object dsPersonas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT * FROM personas WHERE tpr_fk = 1 and prs_estatus="ACTIVO"' +
        ' ')
    Params = <>
    Left = 208
    Top = 144
    object dsPersonasprs_id: TIntegerField
      FieldName = 'prs_id'
      Required = True
    end
    object dsPersonasprs_clave: TWideStringField
      FieldName = 'prs_clave'
      Required = True
    end
    object dsPersonasprs_nombre: TWideStringField
      FieldName = 'prs_nombre'
      Required = True
      Size = 150
    end
    object dsPersonasprs_rfc: TWideStringField
      FieldName = 'prs_rfc'
      Size = 13
    end
    object dsPersonasprs_calle: TWideStringField
      FieldName = 'prs_calle'
      Required = True
    end
    object dsPersonasprs_noint: TWideStringField
      FieldName = 'prs_noint'
      Required = True
    end
    object dsPersonasprs_noext: TWideStringField
      FieldName = 'prs_noext'
      Required = True
    end
    object dsPersonasprs_tel1: TWideStringField
      FieldName = 'prs_tel1'
      Required = True
    end
    object dsPersonasprs_tel2: TWideStringField
      FieldName = 'prs_tel2'
      Required = True
    end
    object dsPersonasprs_tel3: TWideStringField
      FieldName = 'prs_tel3'
    end
    object dsPersonasprs_email: TWideStringField
      FieldName = 'prs_email'
    end
    object dsPersonasprs_url: TWideStringField
      FieldName = 'prs_url'
    end
    object dsPersonasprs_estatus: TWideStringField
      FieldName = 'prs_estatus'
      Required = True
      Size = 8
    end
    object dsPersonasrgc_fk: TIntegerField
      FieldName = 'rgc_fk'
      Required = True
    end
    object dsPersonastpr_fk: TIntegerField
      FieldName = 'tpr_fk'
      Required = True
    end
    object dsPersonastpr_tipopersona: TWideStringField
      FieldName = 'tpr_tipopersona'
      Required = True
      Size = 7
    end
    object dsPersonascp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
  end
  object ZTable1: TZTable
    Left = 208
    Top = 216
  end
  object dsProd: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from productos')
    Params = <>
    Left = 288
    Top = 144
    object dsProdprd_id: TIntegerField
      FieldName = 'prd_id'
      Required = True
    end
    object dsProdprd_codigo: TWideStringField
      FieldName = 'prd_codigo'
      Required = True
    end
    object dsProdprd_prefijofolio: TWideStringField
      FieldName = 'prd_prefijofolio'
      Required = True
      Size = 10
    end
    object dsProdprd_descripcion: TWideStringField
      FieldName = 'prd_descripcion'
      Required = True
      Size = 30
    end
    object dsProdprd_plazoMin: TIntegerField
      FieldName = 'prd_plazoMin'
      Required = True
    end
    object dsProdprd_PlazoMax: TIntegerField
      FieldName = 'prd_PlazoMax'
      Required = True
    end
    object dsProdprd_tord: TFloatField
      FieldName = 'prd_tord'
      Required = True
    end
    object dsProdprd_tmor: TFloatField
      FieldName = 'prd_tmor'
      Required = True
    end
    object dsProdprd_tiva: TFloatField
      FieldName = 'prd_tiva'
      Required = True
    end
    object dsProdprd_solicitud: TBlobField
      FieldName = 'prd_solicitud'
    end
    object dsProdprd_contrato: TBlobField
      FieldName = 'prd_contrato'
    end
    object dsProdprd_tipoInteres: TWideStringField
      FieldName = 'prd_tipoInteres'
      Required = True
      Size = 17
    end
    object dsProdprd_frmIntOrd: TWideStringField
      FieldName = 'prd_frmIntOrd'
      Size = 100
    end
    object dsProdprd_frmIntMor: TWideStringField
      FieldName = 'prd_frmIntMor'
      Size = 100
    end
    object dsProdprd_frecCapInt: TFloatField
      FieldName = 'prd_frecCapInt'
      Required = True
    end
    object dsProdprd_frecPagCap: TFloatField
      FieldName = 'prd_frecPagCap'
      Required = True
    end
    object dsProdprd_frecPagInt: TFloatField
      FieldName = 'prd_frecPagInt'
      Required = True
    end
    object dsProdprd_estatus: TWideStringField
      FieldName = 'prd_estatus'
      Required = True
      Size = 8
    end
    object dsProdsbp_fk: TIntegerField
      FieldName = 'sbp_fk'
      Required = True
    end
    object dsProdprd_frmSaldo: TWideStringField
      FieldName = 'prd_frmSaldo'
      Size = 100
    end
    object dsProdprd_frmMontoC: TWideStringField
      FieldName = 'prd_frmMontoC'
      Size = 100
    end
    object dsProdprd_periodicidad: TFloatField
      FieldName = 'prd_periodicidad'
      Required = True
    end
    object dsProdprd_comision: TFloatField
      FieldName = 'prd_comision'
      Required = True
    end
    object dsProdprd_gastos: TFloatField
      FieldName = 'prd_gastos'
      Required = True
    end
  end
  object dsSubProd: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from subproducto'
      'order by sbp_descripcion')
    Params = <>
    Left = 288
    Top = 216
    object dsSubProdsbp_id: TIntegerField
      FieldName = 'sbp_id'
      Required = True
    end
    object dsSubProdsbp_descripcion: TWideStringField
      FieldName = 'sbp_descripcion'
      Required = True
      Size = 100
    end
    object dsSubProdtpr_fk: TIntegerField
      FieldName = 'tpr_fk'
      Required = True
    end
  end
  object ConsultaIDPersonas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select max(prs_id) from personas')
    Params = <>
    Left = 296
    Top = 346
  end
  object dsfisicas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'Select * from fisicas')
    Params = <>
    Left = 400
    Top = 272
    object dsfisicasfsc_id: TIntegerField
      FieldName = 'fsc_id'
      Required = True
    end
    object dsfisicasfsc_nombres: TWideStringField
      FieldName = 'fsc_nombres'
      Required = True
      Size = 50
    end
    object dsfisicasfsc_apaterno: TWideStringField
      FieldName = 'fsc_apaterno'
      Required = True
      Size = 50
    end
    object dsfisicasfsc_amaterno: TWideStringField
      FieldName = 'fsc_amaterno'
      Required = True
      Size = 50
    end
    object dsfisicasprs_fk: TIntegerField
      FieldName = 'prs_fk'
      Required = True
    end
    object dsfisicasfsc_fecnac: TDateField
      FieldName = 'fsc_fecnac'
      Required = True
    end
    object dsfisicasfsc_lugarnac: TWideStringField
      FieldName = 'fsc_lugarnac'
      Required = True
      Size = 100
    end
    object dsfisicasfsc_edocivil: TWideStringField
      FieldName = 'fsc_edocivil'
      Required = True
      Size = 19
    end
    object dsfisicasfsc_genero: TWideStringField
      FieldName = 'fsc_genero'
      Required = True
      Size = 9
    end
    object dsfisicasfsc_curp: TWideStringField
      FieldName = 'fsc_curp'
      Required = True
      Size = 18
    end
    object dsfisicasfsc_profesion: TWideStringField
      FieldName = 'fsc_profesion'
      Required = True
      Size = 50
    end
    object dsfisicasfsc_folioid: TWideStringField
      FieldName = 'fsc_folioid'
      Required = True
    end
    object dsfisicasfsc_numacc: TIntegerField
      FieldName = 'fsc_numacc'
    end
    object dsfisicasfsc_importeaccion: TFloatField
      FieldName = 'fsc_importeaccion'
    end
    object dsfisicasfsc_poraccion: TFloatField
      FieldName = 'fsc_poraccion'
    end
  end
  object dsmorales: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'Select * from morales')
    Params = <>
    Left = 456
    Top = 272
    object dsmoralesmrl_id: TIntegerField
      FieldName = 'mrl_id'
      Required = True
    end
    object dsmoralesmrl_razonsocial: TWideStringField
      FieldName = 'mrl_razonsocial'
      Required = True
      Size = 150
    end
    object dsmoralesprs_fk: TIntegerField
      FieldName = 'prs_fk'
      Required = True
    end
    object dsmoralesmrl_fecconstitucion: TDateField
      FieldName = 'mrl_fecconstitucion'
      Required = True
    end
    object dsmoralesmrl_fecinscripcion: TDateField
      FieldName = 'mrl_fecinscripcion'
      Required = True
    end
    object dsmoralesmrl_numescritura: TWideStringField
      FieldName = 'mrl_numescritura'
      Required = True
    end
    object dsmoralesmrl_folinscripcion: TWideStringField
      FieldName = 'mrl_folinscripcion'
      Required = True
    end
    object dsmoralesmrl_folmercantil: TWideStringField
      FieldName = 'mrl_folmercantil'
      Required = True
    end
    object dsmoralesmrl_lugarreg: TWideStringField
      FieldName = 'mrl_lugarreg'
      Required = True
    end
    object dsmoralesmrl_corporativo: TWideStringField
      FieldName = 'mrl_corporativo'
      Required = True
      Size = 100
    end
    object dsmoralesmrl_dirgral: TWideStringField
      FieldName = 'mrl_dirgral'
      Required = True
      Size = 100
    end
    object dsmoralesmrl_gtegral: TWideStringField
      FieldName = 'mrl_gtegral'
      Required = True
      Size = 100
    end
    object dsmoralesmrl_adminunico: TWideStringField
      FieldName = 'mrl_adminunico'
      Required = True
      Size = 100
    end
    object dsmoralesmrl_rlnumescr: TWideStringField
      FieldName = 'mrl_rlnumescr'
      Required = True
    end
    object dsmoralesmrl_rlfecesc: TDateField
      FieldName = 'mrl_rlfecesc'
      Required = True
    end
    object dsmoralesmrl_rlfolins: TWideStringField
      FieldName = 'mrl_rlfolins'
      Required = True
      Size = 50
    end
    object dsmoralesmrl_rlfolmerc: TWideStringField
      FieldName = 'mrl_rlfolmerc'
      Required = True
    end
    object dsmoralesmrl_rllocreg: TWideStringField
      FieldName = 'mrl_rllocreg'
      Required = True
      Size = 100
    end
    object dsmoralesmrl_modoadmon: TWideStringField
      FieldName = 'mrl_modoadmon'
      Required = True
      Size = 25
    end
  end
  object dsPrsMoral: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT * FROM personas, morales WHERE personas.prs_id=morales.pr' +
        's_fk')
    Params = <>
    Left = 400
    Top = 344
    object dsPrsMoralprs_id: TIntegerField
      FieldName = 'prs_id'
      Required = True
    end
    object dsPrsMoralprs_clave: TWideStringField
      FieldName = 'prs_clave'
      Required = True
    end
    object dsPrsMoralprs_nombre: TWideStringField
      FieldName = 'prs_nombre'
      Required = True
      Size = 150
    end
    object dsPrsMoralprs_rfc: TWideStringField
      FieldName = 'prs_rfc'
      Size = 13
    end
    object dsPrsMoralprs_calle: TWideStringField
      FieldName = 'prs_calle'
      Required = True
    end
    object dsPrsMoralprs_noint: TWideStringField
      FieldName = 'prs_noint'
      Required = True
    end
    object dsPrsMoralprs_noext: TWideStringField
      FieldName = 'prs_noext'
      Required = True
    end
    object dsPrsMoralprs_tel1: TWideStringField
      FieldName = 'prs_tel1'
      Required = True
    end
    object dsPrsMoralprs_tel2: TWideStringField
      FieldName = 'prs_tel2'
      Required = True
    end
    object dsPrsMoralprs_tel3: TWideStringField
      FieldName = 'prs_tel3'
    end
    object dsPrsMoralprs_email: TWideStringField
      FieldName = 'prs_email'
    end
    object dsPrsMoralprs_url: TWideStringField
      FieldName = 'prs_url'
    end
    object dsPrsMoralprs_estatus: TWideStringField
      FieldName = 'prs_estatus'
      Required = True
      Size = 8
    end
    object dsPrsMoralrgc_fk: TIntegerField
      FieldName = 'rgc_fk'
      Required = True
    end
    object dsPrsMoraltpr_fk: TIntegerField
      FieldName = 'tpr_fk'
      Required = True
    end
    object dsPrsMoraltpr_tipopersona: TWideStringField
      FieldName = 'tpr_tipopersona'
      Required = True
      Size = 7
    end
    object dsPrsMoralmrl_id: TIntegerField
      FieldName = 'mrl_id'
      Required = True
    end
    object dsPrsMoralmrl_razonsocial: TWideStringField
      FieldName = 'mrl_razonsocial'
      Required = True
      Size = 150
    end
    object dsPrsMoralprs_fk: TIntegerField
      FieldName = 'prs_fk'
      Required = True
    end
    object dsPrsMoralmrl_fecconstitucion: TDateField
      FieldName = 'mrl_fecconstitucion'
      Required = True
    end
    object dsPrsMoralmrl_fecinscripcion: TDateField
      FieldName = 'mrl_fecinscripcion'
      Required = True
    end
    object dsPrsMoralmrl_numescritura: TWideStringField
      FieldName = 'mrl_numescritura'
      Required = True
    end
    object dsPrsMoralmrl_folinscripcion: TWideStringField
      FieldName = 'mrl_folinscripcion'
      Required = True
    end
    object dsPrsMoralmrl_folmercantil: TWideStringField
      FieldName = 'mrl_folmercantil'
      Required = True
    end
    object dsPrsMoralmrl_lugarreg: TWideStringField
      FieldName = 'mrl_lugarreg'
      Required = True
    end
    object dsPrsMoralmrl_corporativo: TWideStringField
      FieldName = 'mrl_corporativo'
      Required = True
      Size = 100
    end
    object dsPrsMoralmrl_dirgral: TWideStringField
      FieldName = 'mrl_dirgral'
      Required = True
      Size = 100
    end
    object dsPrsMoralmrl_gtegral: TWideStringField
      FieldName = 'mrl_gtegral'
      Required = True
      Size = 100
    end
    object dsPrsMoralmrl_adminunico: TWideStringField
      FieldName = 'mrl_adminunico'
      Required = True
      Size = 100
    end
    object dsPrsMoralmrl_rlnumescr: TWideStringField
      FieldName = 'mrl_rlnumescr'
      Required = True
    end
    object dsPrsMoralmrl_rlfecesc: TDateField
      FieldName = 'mrl_rlfecesc'
      Required = True
    end
    object dsPrsMoralmrl_rlfolins: TWideStringField
      FieldName = 'mrl_rlfolins'
      Required = True
      Size = 50
    end
    object dsPrsMoralmrl_rlfolmerc: TWideStringField
      FieldName = 'mrl_rlfolmerc'
      Required = True
    end
    object dsPrsMoralmrl_rllocreg: TWideStringField
      FieldName = 'mrl_rllocreg'
      Required = True
      Size = 100
    end
    object dsPrsMoralmrl_modoadmon: TWideStringField
      FieldName = 'mrl_modoadmon'
      Required = True
      Size = 25
    end
    object dsPrsMoralcp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
  end
  object dsPrsFisica: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT * FROM personas, fisicas WHERE personas.prs_id=fisicas.pr' +
        's_fk')
    Params = <>
    Left = 464
    Top = 344
    object dsPrsFisicaprs_id: TIntegerField
      FieldName = 'prs_id'
      Required = True
    end
    object dsPrsFisicaprs_clave: TWideStringField
      FieldName = 'prs_clave'
      Required = True
    end
    object dsPrsFisicaprs_nombre: TWideStringField
      FieldName = 'prs_nombre'
      Required = True
      Size = 150
    end
    object dsPrsFisicaprs_rfc: TWideStringField
      FieldName = 'prs_rfc'
      Size = 13
    end
    object dsPrsFisicaprs_calle: TWideStringField
      FieldName = 'prs_calle'
      Required = True
    end
    object dsPrsFisicaprs_noint: TWideStringField
      FieldName = 'prs_noint'
      Required = True
    end
    object dsPrsFisicaprs_noext: TWideStringField
      FieldName = 'prs_noext'
      Required = True
    end
    object dsPrsFisicaprs_tel1: TWideStringField
      FieldName = 'prs_tel1'
      Required = True
    end
    object dsPrsFisicaprs_tel2: TWideStringField
      FieldName = 'prs_tel2'
      Required = True
    end
    object dsPrsFisicaprs_tel3: TWideStringField
      FieldName = 'prs_tel3'
    end
    object dsPrsFisicaprs_email: TWideStringField
      FieldName = 'prs_email'
    end
    object dsPrsFisicaprs_url: TWideStringField
      FieldName = 'prs_url'
    end
    object dsPrsFisicaprs_estatus: TWideStringField
      FieldName = 'prs_estatus'
      Required = True
      Size = 8
    end
    object dsPrsFisicargc_fk: TIntegerField
      FieldName = 'rgc_fk'
      Required = True
    end
    object dsPrsFisicatpr_fk: TIntegerField
      FieldName = 'tpr_fk'
      Required = True
    end
    object dsPrsFisicatpr_tipopersona: TWideStringField
      FieldName = 'tpr_tipopersona'
      Required = True
      Size = 7
    end
    object dsPrsFisicafsc_id: TIntegerField
      FieldName = 'fsc_id'
      Required = True
    end
    object dsPrsFisicafsc_nombres: TWideStringField
      FieldName = 'fsc_nombres'
      Required = True
      Size = 50
    end
    object dsPrsFisicafsc_apaterno: TWideStringField
      FieldName = 'fsc_apaterno'
      Required = True
      Size = 50
    end
    object dsPrsFisicafsc_amaterno: TWideStringField
      FieldName = 'fsc_amaterno'
      Required = True
      Size = 50
    end
    object dsPrsFisicaprs_fk: TIntegerField
      FieldName = 'prs_fk'
      Required = True
    end
    object dsPrsFisicafsc_fecnac: TDateField
      FieldName = 'fsc_fecnac'
      Required = True
    end
    object dsPrsFisicafsc_lugarnac: TWideStringField
      FieldName = 'fsc_lugarnac'
      Required = True
      Size = 100
    end
    object dsPrsFisicafsc_edocivil: TWideStringField
      FieldName = 'fsc_edocivil'
      Required = True
      Size = 19
    end
    object dsPrsFisicafsc_genero: TWideStringField
      FieldName = 'fsc_genero'
      Required = True
      Size = 9
    end
    object dsPrsFisicafsc_curp: TWideStringField
      FieldName = 'fsc_curp'
      Required = True
      Size = 18
    end
    object dsPrsFisicafsc_profesion: TWideStringField
      FieldName = 'fsc_profesion'
      Required = True
      Size = 50
    end
    object dsPrsFisicafsc_folioid: TWideStringField
      FieldName = 'fsc_folioid'
      Required = True
    end
    object dsPrsFisicafsc_numacc: TIntegerField
      FieldName = 'fsc_numacc'
    end
    object dsPrsFisicafsc_importeaccion: TFloatField
      FieldName = 'fsc_importeaccion'
    end
    object dsPrsFisicafsc_poraccion: TFloatField
      FieldName = 'fsc_poraccion'
    end
    object dsPrsFisicacp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
  end
  object dsMonedas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from monedas;')
    Params = <>
    Left = 296
    Top = 416
    object dsMonedasmnd_id: TIntegerField
      FieldName = 'mnd_id'
      Required = True
    end
    object dsMonedasmnd_descripcion: TWideStringField
      FieldName = 'mnd_descripcion'
      Required = True
      Size = 50
    end
    object dsMonedasmnd_valor: TFloatField
      FieldName = 'mnd_valor'
    end
    object dsMonedasmnd_fecact: TDateTimeField
      FieldName = 'mnd_fecact'
    end
  end
  object dsActividades: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from actividades')
    Params = <>
    Left = 296
    Top = 296
  end
  object dsEmpresa: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'Select * from empresa')
    Params = <>
    Left = 400
    Top = 416
    object dsEmpresaemp_id: TIntegerField
      FieldName = 'emp_id'
      Required = True
    end
    object dsEmpresaemp_clave: TWideStringField
      FieldName = 'emp_clave'
      Required = True
    end
    object dsEmpresaemp_nombre: TWideStringField
      FieldName = 'emp_nombre'
      Required = True
      Size = 100
    end
    object dsEmpresaemp_logo: TBlobField
      FieldName = 'emp_logo'
    end
    object dsEmpresaemp_calle: TWideStringField
      FieldName = 'emp_calle'
      Required = True
      Size = 100
    end
    object dsEmpresaemp_noext: TWideStringField
      FieldName = 'emp_noext'
      Required = True
    end
    object dsEmpresaemp_noint: TWideStringField
      FieldName = 'emp_noint'
      Required = True
    end
    object dsEmpresaemp_telefono: TWideStringField
      FieldName = 'emp_telefono'
      Required = True
    end
    object dsEmpresaemp_url: TWideStringField
      FieldName = 'emp_url'
      Required = True
      Size = 50
    end
    object dsEmpresaemp_email: TWideStringField
      FieldName = 'emp_email'
      Required = True
      Size = 50
    end
    object dsEmpresacp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
  end
  object dsacciones: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT * FROM acciones, rol_accion,roles WHERE acciones.acc_id=r' +
        'ol_accion.acc_fk and rol_accion.rls_fk=roles.rls_id and roles.rl' +
        's_id=1')
    Params = <>
    Left = 464
    Top = 416
    object dsaccionesacc_id: TIntegerField
      FieldName = 'acc_id'
      Required = True
    end
    object dsaccionesacc_descripcion: TWideStringField
      FieldName = 'acc_descripcion'
      Required = True
      Size = 30
    end
    object dsaccionesacc_dependencia: TIntegerField
      FieldName = 'acc_dependencia'
      Required = True
    end
    object dsaccionesacc_tipo: TWideStringField
      FieldName = 'acc_tipo'
      Required = True
    end
    object dsaccionesacc_fk: TIntegerField
      FieldName = 'acc_fk'
      Required = True
    end
    object dsaccionesrls_fk: TIntegerField
      FieldName = 'rls_fk'
      Required = True
    end
    object dsaccionesrla_permitido: TSmallintField
      FieldName = 'rla_permitido'
    end
  end
  object dsacciones2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from acciones')
    Params = <>
    Left = 528
    Top = 416
    object dsacciones2acc_id: TIntegerField
      FieldName = 'acc_id'
      Required = True
    end
    object dsacciones2acc_descripcion: TWideStringField
      FieldName = 'acc_descripcion'
      Required = True
      Size = 30
    end
    object dsacciones2acc_dependencia: TIntegerField
      FieldName = 'acc_dependencia'
      Required = True
    end
    object dsacciones2acc_tipo: TWideStringField
      FieldName = 'acc_tipo'
      Required = True
    end
  end
  object dsacciones3: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT * FROM rol_accion, acciones, usuario where (usuario.rls_f' +
        'k=rol_accion.rls_fk and acciones.acc_id=rol_accion.acc_fk and ro' +
        'l_accion.rla_permitido=1 and usuario.usr_id=1) and ( acciones.ac' +
        'c_tipo='#39'Menu'#39' or  acciones.acc_tipo='#39'Sub menu'#39' )')
    Params = <>
    Left = 208
    Top = 416
    object dsacciones3acc_fk: TIntegerField
      FieldName = 'acc_fk'
      Required = True
    end
    object dsacciones3rls_fk: TIntegerField
      FieldName = 'rls_fk'
      Required = True
    end
    object dsacciones3rla_permitido: TSmallintField
      FieldName = 'rla_permitido'
    end
    object dsacciones3acc_id: TIntegerField
      FieldName = 'acc_id'
      Required = True
    end
    object dsacciones3acc_descripcion: TWideStringField
      FieldName = 'acc_descripcion'
      Required = True
      Size = 30
    end
    object dsacciones3usr_id: TIntegerField
      FieldName = 'usr_id'
      Required = True
    end
    object dsacciones3rls_fk_1: TIntegerField
      FieldName = 'rls_fk_1'
      Required = True
    end
    object dsacciones3acc_dependencia: TIntegerField
      FieldName = 'acc_dependencia'
      Required = True
    end
  end
  object dspermisos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from rol_accion ')
    Params = <>
    Left = 208
    Top = 352
    object dspermisosacc_fk: TIntegerField
      FieldName = 'acc_fk'
      Required = True
    end
    object dspermisosrls_fk: TIntegerField
      FieldName = 'rls_fk'
      Required = True
    end
    object dspermisosrla_permitido: TSmallintField
      FieldName = 'rla_permitido'
    end
  end
  object dsCentroTrabajo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'Select * from centrotrabajo')
    Params = <>
    Left = 120
    Top = 352
    object dsCentroTrabajoct_id: TIntegerField
      FieldName = 'ct_id'
      Required = True
    end
    object dsCentroTrabajocd_clave: TWideStringField
      FieldName = 'cd_clave'
      Required = True
      Size = 10
    end
    object dsCentroTrabajoct_descripcion: TWideStringField
      FieldName = 'ct_descripcion'
      Required = True
      Size = 100
    end
    object dsCentroTrabajoct_calle: TWideStringField
      FieldName = 'ct_calle'
      Size = 100
    end
    object dsCentroTrabajoct_noext: TWideStringField
      FieldName = 'ct_noext'
    end
    object dsCentroTrabajoct_no_int: TWideStringField
      FieldName = 'ct_no_int'
    end
    object dsCentroTrabajoct_telefono: TWideStringField
      FieldName = 'ct_telefono'
    end
    object dsCentroTrabajoct_email: TWideStringField
      FieldName = 'ct_email'
    end
    object dsCentroTrabajocp_fk: TIntegerField
      FieldName = 'cp_fk'
      Required = True
    end
  end
  object dsBancos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'Select * from bancos')
    Params = <>
    Left = 120
    Top = 416
  end
  object ds2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 208
    Top = 32
  end
  object dsdocumentos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tipo_doc where tpd_estatus=1;')
    Params = <>
    Left = 208
    Top = 296
    object dsdocumentostpd_id: TIntegerField
      FieldName = 'tpd_id'
      Required = True
    end
    object dsdocumentostpd_descripcion: TWideStringField
      FieldName = 'tpd_descripcion'
      Required = True
      Size = 100
    end
    object dsdocumentostpd_estatus: TSmallintField
      FieldName = 'tpd_estatus'
      Required = True
    end
    object dsdocumentostpd_docvalor: TSmallintField
      FieldName = 'tpd_docvalor'
    end
  end
  object dsregimen: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM regimencapital')
    Params = <>
    Left = 120
    Top = 296
  end
  object dssolicitudes: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from solicitudes where sol_folio > 0')
    Params = <>
    Left = 24
    Top = 504
    object dssolicitudessol_id: TIntegerField
      FieldName = 'sol_id'
      Required = True
    end
    object dssolicitudessol_folio: TIntegerField
      FieldName = 'sol_folio'
      Required = True
    end
    object dssolicitudessol_fecha: TDateField
      FieldName = 'sol_fecha'
      Required = True
    end
    object dssolicitudessol_fecaproba: TDateField
      FieldName = 'sol_fecaproba'
      Required = True
    end
    object dssolicitudessol_monto: TFloatField
      FieldName = 'sol_monto'
      Required = True
    end
    object dssolicitudessol_montoaut: TFloatField
      FieldName = 'sol_montoaut'
      Required = True
    end
    object dssolicitudessol_plazo: TFloatField
      FieldName = 'sol_plazo'
      Required = True
    end
    object dssolicitudespp_fk: TIntegerField
      FieldName = 'pp_fk'
      Required = True
    end
    object dssolicitudessol_destino: TWideStringField
      FieldName = 'sol_destino'
      Required = True
      Size = 250
    end
    object dssolicitudessol_tasaord: TFloatField
      FieldName = 'sol_tasaord'
      Required = True
    end
    object dssolicitudessol_tasamor: TFloatField
      FieldName = 'sol_tasamor'
      Required = True
    end
    object dssolicitudessol_periodicidad: TFloatField
      FieldName = 'sol_periodicidad'
      Required = True
    end
    object dssolicitudessol_iva: TFloatField
      FieldName = 'sol_iva'
      Required = True
    end
    object dssolicitudessol_freccapint: TFloatField
      FieldName = 'sol_freccapint'
      Required = True
    end
    object dssolicitudessol_frecpagcap: TFloatField
      FieldName = 'sol_frecpagcap'
      Required = True
    end
    object dssolicitudessol_frecpagint: TFloatField
      FieldName = 'sol_frecpagint'
      Required = True
    end
    object dssolicitudessol_prodseg: TWideStringField
      FieldName = 'sol_prodseg'
      Required = True
      Size = 10
    end
    object dssolicitudessol_producto: TWideStringField
      FieldName = 'sol_producto'
      Required = True
      Size = 100
    end
    object dssolicitudessol_clinombre: TWideStringField
      FieldName = 'sol_clinombre'
      Required = True
      Size = 200
    end
    object dssolicitudessol_clirfc: TWideStringField
      FieldName = 'sol_clirfc'
      Required = True
      Size = 13
    end
    object dssolicitudessol_clicalle: TWideStringField
      FieldName = 'sol_clicalle'
      Required = True
      Size = 200
    end
    object dssolicitudessol_clinoint: TWideStringField
      FieldName = 'sol_clinoint'
      Required = True
    end
    object dssolicitudessol_clinoext: TWideStringField
      FieldName = 'sol_clinoext'
      Required = True
    end
    object dssolicitudessol_clicol: TWideStringField
      FieldName = 'sol_clicol'
      Required = True
      Size = 100
    end
    object dssolicitudessol_clicp: TIntegerField
      FieldName = 'sol_clicp'
      Required = True
    end
    object dssolicitudessol_cliant: TWideStringField
      FieldName = 'sol_cliant'
      Required = True
      Size = 50
    end
    object dssolicitudessol_clitel1: TWideStringField
      FieldName = 'sol_clitel1'
      Required = True
      Size = 10
    end
    object dssolicitudessol_clitel2: TWideStringField
      FieldName = 'sol_clitel2'
      Required = True
      Size = 10
    end
    object dssolicitudessol_clitel3: TWideStringField
      FieldName = 'sol_clitel3'
      Required = True
      Size = 10
    end
    object dssolicitudessol_clitel4: TWideStringField
      FieldName = 'sol_clitel4'
      Required = True
      Size = 10
    end
    object dssolicitudessol_cliemail: TWideStringField
      FieldName = 'sol_cliemail'
      Required = True
      Size = 100
    end
    object dssolicitudessol_clinac: TWideStringField
      FieldName = 'sol_clinac'
      Required = True
      Size = 50
    end
    object dssolicitudessol_clireg: TWideStringField
      FieldName = 'sol_clireg'
      Required = True
      Size = 100
    end
    object dssolicitudessol_comision: TFloatField
      FieldName = 'sol_comision'
      Required = True
    end
    object dssolicitudessol_gastos: TFloatField
      FieldName = 'sol_gastos'
      Required = True
    end
    object dssolicitudesusr_fk: TIntegerField
      FieldName = 'usr_fk'
      Required = True
    end
    object dssolicitudessol_fecrev: TDateField
      FieldName = 'sol_fecrev'
    end
    object dssolicitudessol_observarev: TWideStringField
      FieldName = 'sol_observarev'
      Size = 5000
    end
    object dssolicitudessol_estatus: TWideStringField
      FieldName = 'sol_estatus'
      Required = True
      Size = 21
    end
    object dssolicitudessol_FecRec: TDateTimeField
      FieldName = 'sol_FecRec'
      Required = True
    end
    object dssolicitudessol_observaRec: TWideStringField
      FieldName = 'sol_observaRec'
      Required = True
      Size = 1000
    end
    object dssolicitudessol_FecAnalisis: TDateTimeField
      FieldName = 'sol_FecAnalisis'
      Required = True
    end
    object dssolicitudessol_observaAnalisis: TWideStringField
      FieldName = 'sol_observaAnalisis'
      Required = True
      Size = 1000
    end
    object dssolicitudessol_folcred: TIntegerField
      FieldName = 'sol_folcred'
      Required = True
    end
    object dssolicitudessol_seriecred: TWideStringField
      FieldName = 'sol_seriecred'
      Required = True
      Size = 50
    end
    object dssolicitudesfrmpago_fk: TIntegerField
      FieldName = 'frmpago_fk'
      Required = True
    end
    object dssolicitudesctadestino_fk: TIntegerField
      FieldName = 'ctadestino_fk'
      Required = True
    end
  end
  object dsplan_pagos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'select plan_pagos.pp_id, plan_pagos.pp_descripcion, plan_pagos.p' +
        'p_fecha, plan_pagos.pp_estatus, plan_pagos.pp_plazo, productos.p' +
        'rd_descripcion, plan_pagos.prd_fk, plan_pagos.pp_monto, pp_perio' +
        'dicidad,'
      
        'pp_tord, pp_tmor, pp_tiva, pp_frmintord, pp_frmintmor, pp_frecca' +
        'pint, pp_frecpagcap, pp_frecpagint, pp_editable, pp_tipointeres,' +
        ' pp_comision, pp_gastos,'
      'sbp_descripcion'
      'from plan_pagos, productos, subproducto '
      'where plan_pagos.prd_fk = productos.prd_id'
      'and plan_pagos.pp_estatus = '#39'ACTIVO'#39
      'and sbp_id = sbp_fk')
    Params = <>
    Left = 24
    Top = 568
    object dsplan_pagospp_id: TIntegerField
      FieldName = 'pp_id'
      Required = True
    end
    object dsplan_pagospp_descripcion: TWideStringField
      FieldName = 'pp_descripcion'
      Required = True
      Size = 50
    end
    object dsplan_pagospp_fecha: TDateField
      FieldName = 'pp_fecha'
      Required = True
    end
    object dsplan_pagospp_estatus: TWideStringField
      FieldName = 'pp_estatus'
      Required = True
      Size = 8
    end
    object dsplan_pagospp_plazo: TFloatField
      FieldName = 'pp_plazo'
      Required = True
    end
    object dsplan_pagosprd_descripcion: TWideStringField
      FieldName = 'prd_descripcion'
      Required = True
      Size = 30
    end
    object dsplan_pagosprd_fk: TIntegerField
      FieldName = 'prd_fk'
      Required = True
    end
    object dsplan_pagospp_monto: TFloatField
      FieldName = 'pp_monto'
      Required = True
    end
    object dsplan_pagospp_periodicidad: TFloatField
      FieldName = 'pp_periodicidad'
      Required = True
    end
    object dsplan_pagospp_tord: TFloatField
      FieldName = 'pp_tord'
      Required = True
    end
    object dsplan_pagospp_tmor: TFloatField
      FieldName = 'pp_tmor'
      Required = True
    end
    object dsplan_pagospp_tiva: TFloatField
      FieldName = 'pp_tiva'
      Required = True
    end
    object dsplan_pagospp_frmintord: TWideStringField
      FieldName = 'pp_frmintord'
      Required = True
      Size = 100
    end
    object dsplan_pagospp_frmintmor: TWideStringField
      FieldName = 'pp_frmintmor'
      Required = True
      Size = 100
    end
    object dsplan_pagospp_freccapint: TFloatField
      FieldName = 'pp_freccapint'
      Required = True
    end
    object dsplan_pagospp_frecpagcap: TFloatField
      FieldName = 'pp_frecpagcap'
      Required = True
    end
    object dsplan_pagospp_frecpagint: TFloatField
      FieldName = 'pp_frecpagint'
      Required = True
    end
    object dsplan_pagospp_editable: TSmallintField
      FieldName = 'pp_editable'
      Required = True
    end
    object dsplan_pagospp_tipointeres: TWideStringField
      FieldName = 'pp_tipointeres'
      Required = True
      Size = 17
    end
    object dsplan_pagospp_comision: TFloatField
      FieldName = 'pp_comision'
      Required = True
    end
    object dsplan_pagospp_gastos: TFloatField
      FieldName = 'pp_gastos'
      Required = True
    end
    object dsplan_pagossbp_descripcion: TWideStringField
      FieldName = 'sbp_descripcion'
      Required = True
      Size = 100
    end
  end
  object dssubproducto: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from subproducto')
    Params = <>
    Left = 24
    Top = 624
  end
  object dssolingreso: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from sol_ingresos')
    Params = <>
    Left = 96
    Top = 504
    object dssolingresoslin_id: TIntegerField
      FieldName = 'slin_id'
      Required = True
    end
    object dssolingresoslin_origen: TWideStringField
      FieldName = 'slin_origen'
      Required = True
      Size = 200
    end
    object dssolingresoslin_importe: TFloatField
      FieldName = 'slin_importe'
      Required = True
    end
    object dssolingresoslin_periodicidad: TWideStringField
      FieldName = 'slin_periodicidad'
      Required = True
      Size = 50
    end
    object dssolingresosol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
  end
  object dspasivosbanco: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from sol_pasivo, monedas  where'
      'sol_pasivo.moneda_fk = monedas.mnd_id'
      'and'
      ' slpsv_tipo = '#39'BANCARIOS'#39)
    Params = <>
    Left = 96
    Top = 568
    object dspasivosbancoslpsv_id: TIntegerField
      FieldName = 'slpsv_id'
      Required = True
    end
    object dspasivosbancosol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
    object dspasivosbancoslpsv_tipo: TWideStringField
      FieldName = 'slpsv_tipo'
      Required = True
      Size = 12
    end
    object dspasivosbancoslpsv_institucion: TWideStringField
      FieldName = 'slpsv_institucion'
      Required = True
      Size = 200
    end
    object dspasivosbancoslpsv_tipocred: TWideStringField
      FieldName = 'slpsv_tipocred'
      Required = True
      Size = 100
    end
    object dspasivosbancoslpsv_monto: TFloatField
      FieldName = 'slpsv_monto'
      Required = True
    end
    object dspasivosbancoslpsv_ven: TDateField
      FieldName = 'slpsv_ven'
      Required = True
    end
    object dspasivosbancomoneda_fk: TIntegerField
      FieldName = 'moneda_fk'
      Required = True
    end
    object dspasivosbancoslpsv_garantias: TWideStringField
      FieldName = 'slpsv_garantias'
      Required = True
      Size = 200
    end
    object dspasivosbancomnd_id: TIntegerField
      FieldName = 'mnd_id'
      Required = True
    end
    object dspasivosbancomnd_descripcion: TWideStringField
      FieldName = 'mnd_descripcion'
      Required = True
      Size = 50
    end
    object dspasivosbancomnd_valor: TFloatField
      FieldName = 'mnd_valor'
    end
    object dspasivosbancomnd_fecact: TDateTimeField
      FieldName = 'mnd_fecact'
    end
  end
  object dspasivosnobanco: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from sol_pasivo, monedas  where'
      'sol_pasivo.moneda_fk = monedas.mnd_id'
      'and'
      ' slpsv_tipo = '#39'NO BANCARIOS'#39)
    Params = <>
    Left = 96
    Top = 624
    object dspasivosnobancoslpsv_id: TIntegerField
      FieldName = 'slpsv_id'
      Required = True
    end
    object dspasivosnobancosol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
    object dspasivosnobancoslpsv_tipo: TWideStringField
      FieldName = 'slpsv_tipo'
      Required = True
      Size = 12
    end
    object dspasivosnobancoslpsv_institucion: TWideStringField
      FieldName = 'slpsv_institucion'
      Required = True
      Size = 200
    end
    object dspasivosnobancoslpsv_tipocred: TWideStringField
      FieldName = 'slpsv_tipocred'
      Required = True
      Size = 100
    end
    object dspasivosnobancoslpsv_monto: TFloatField
      FieldName = 'slpsv_monto'
      Required = True
    end
    object dspasivosnobancoslpsv_ven: TDateField
      FieldName = 'slpsv_ven'
      Required = True
    end
    object dspasivosnobancomoneda_fk: TIntegerField
      FieldName = 'moneda_fk'
      Required = True
    end
    object dspasivosnobancoslpsv_garantias: TWideStringField
      FieldName = 'slpsv_garantias'
      Required = True
      Size = 200
    end
    object dspasivosnobancomnd_id: TIntegerField
      FieldName = 'mnd_id'
      Required = True
    end
    object dspasivosnobancomnd_descripcion: TWideStringField
      FieldName = 'mnd_descripcion'
      Required = True
      Size = 50
    end
    object dspasivosnobancomnd_valor: TFloatField
      FieldName = 'mnd_valor'
    end
    object dspasivosnobancomnd_fecact: TDateTimeField
      FieldName = 'mnd_fecact'
    end
  end
  object dssolreferencias: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select sol_fk, prs_fk, slp_nombre, slp_tel1, slp_contacto'
      'from solicitud_persona, personas'
      'where solicitud_persona.prs_fk = personas.prs_id'
      'and personas.tpr_fk = 7'
      'and solicitud_persona.sol_fk = 0')
    Params = <>
    Left = 176
    Top = 504
    object dssolreferenciassol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
    object dssolreferenciasprs_fk: TIntegerField
      FieldName = 'prs_fk'
      Required = True
    end
    object dssolreferenciasslp_nombre: TWideStringField
      FieldName = 'slp_nombre'
      Required = True
      Size = 200
    end
    object dssolreferenciasslp_tel1: TWideStringField
      FieldName = 'slp_tel1'
      Size = 10
    end
    object dssolreferenciasslp_contacto: TWideStringField
      FieldName = 'slp_contacto'
      Size = 100
    end
  end
  object ds3: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 176
    Top = 624
  end
  object dssolactividades: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from actividades, sol_act '
      'where sol_act.act_fk = actividades.act_id'
      'and sol_act.sol_fk = 0')
    Params = <>
    Left = 176
    Top = 568
  end
  object dssolicitudes2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'SELECT *, concat(sol_seriecred, '#39' - '#39', sol_folcred) as folcred F' +
        'ROM solicitudes  WHERE  (sol_folio > 0) and (`sol_estatus`='#39'FOND' +
        'EADO'#39' OR `sol_estatus`='#39'POR FONDEAR'#39')')
    Params = <>
    Left = 528
    Top = 344
    object dssolicitudes2sol_id: TIntegerField
      FieldName = 'sol_id'
      Required = True
    end
    object dssolicitudes2sol_folio: TIntegerField
      FieldName = 'sol_folio'
      Required = True
    end
    object dssolicitudes2sol_fecha: TDateField
      FieldName = 'sol_fecha'
      Required = True
    end
    object dssolicitudes2sol_fecaproba: TDateField
      FieldName = 'sol_fecaproba'
      Required = True
    end
    object dssolicitudes2sol_monto: TFloatField
      FieldName = 'sol_monto'
      Required = True
    end
    object dssolicitudes2sol_montoaut: TFloatField
      FieldName = 'sol_montoaut'
      Required = True
    end
    object dssolicitudes2sol_plazo: TFloatField
      FieldName = 'sol_plazo'
      Required = True
    end
    object dssolicitudes2pp_fk: TIntegerField
      FieldName = 'pp_fk'
      Required = True
    end
    object dssolicitudes2sol_destino: TWideStringField
      FieldName = 'sol_destino'
      Required = True
      Size = 250
    end
    object dssolicitudes2sol_tasaord: TFloatField
      FieldName = 'sol_tasaord'
      Required = True
    end
    object dssolicitudes2sol_periodicidad: TFloatField
      FieldName = 'sol_periodicidad'
      Required = True
    end
    object dssolicitudes2sol_iva: TFloatField
      FieldName = 'sol_iva'
      Required = True
    end
    object dssolicitudes2sol_freccapint: TFloatField
      FieldName = 'sol_freccapint'
      Required = True
    end
    object dssolicitudes2sol_tasamor: TFloatField
      FieldName = 'sol_tasamor'
      Required = True
    end
    object dssolicitudes2sol_frecpagcap: TFloatField
      FieldName = 'sol_frecpagcap'
      Required = True
    end
    object dssolicitudes2sol_frecpagint: TFloatField
      FieldName = 'sol_frecpagint'
      Required = True
    end
    object dssolicitudes2sol_prodseg: TWideStringField
      FieldName = 'sol_prodseg'
      Required = True
      Size = 10
    end
    object dssolicitudes2sol_producto: TWideStringField
      FieldName = 'sol_producto'
      Required = True
      Size = 100
    end
    object dssolicitudes2sol_clinombre: TWideStringField
      FieldName = 'sol_clinombre'
      Required = True
      Size = 200
    end
    object dssolicitudes2sol_clirfc: TWideStringField
      FieldName = 'sol_clirfc'
      Required = True
      Size = 13
    end
    object dssolicitudes2sol_clicalle: TWideStringField
      FieldName = 'sol_clicalle'
      Required = True
      Size = 200
    end
    object dssolicitudes2sol_clinoint: TWideStringField
      FieldName = 'sol_clinoint'
      Required = True
    end
    object dssolicitudes2sol_clinoext: TWideStringField
      FieldName = 'sol_clinoext'
      Required = True
    end
    object dssolicitudes2sol_clicol: TWideStringField
      FieldName = 'sol_clicol'
      Required = True
      Size = 100
    end
    object dssolicitudes2sol_clicp: TIntegerField
      FieldName = 'sol_clicp'
      Required = True
    end
    object dssolicitudes2sol_cliant: TWideStringField
      FieldName = 'sol_cliant'
      Required = True
      Size = 50
    end
    object dssolicitudes2sol_clitel1: TWideStringField
      FieldName = 'sol_clitel1'
      Required = True
      Size = 10
    end
    object dssolicitudes2sol_clitel2: TWideStringField
      FieldName = 'sol_clitel2'
      Required = True
      Size = 10
    end
    object dssolicitudes2sol_clitel3: TWideStringField
      FieldName = 'sol_clitel3'
      Required = True
      Size = 10
    end
    object dssolicitudes2sol_clitel4: TWideStringField
      FieldName = 'sol_clitel4'
      Required = True
      Size = 10
    end
    object dssolicitudes2sol_cliemail: TWideStringField
      FieldName = 'sol_cliemail'
      Required = True
      Size = 100
    end
    object dssolicitudes2sol_clinac: TWideStringField
      FieldName = 'sol_clinac'
      Required = True
      Size = 50
    end
    object dssolicitudes2sol_clireg: TWideStringField
      FieldName = 'sol_clireg'
      Required = True
      Size = 100
    end
    object dssolicitudes2sol_comision: TFloatField
      FieldName = 'sol_comision'
      Required = True
    end
    object dssolicitudes2sol_gastos: TFloatField
      FieldName = 'sol_gastos'
      Required = True
    end
    object dssolicitudes2usr_fk: TIntegerField
      FieldName = 'usr_fk'
      Required = True
    end
    object dssolicitudes2sol_fecrev: TDateField
      FieldName = 'sol_fecrev'
    end
    object dssolicitudes2sol_observarev: TWideStringField
      FieldName = 'sol_observarev'
      Size = 5000
    end
    object dssolicitudes2sol_estatus: TWideStringField
      FieldName = 'sol_estatus'
      Required = True
      Size = 21
    end
    object dssolicitudes2sol_FecRec: TDateTimeField
      FieldName = 'sol_FecRec'
      Required = True
    end
    object dssolicitudes2sol_observaRec: TWideStringField
      FieldName = 'sol_observaRec'
      Required = True
      Size = 1000
    end
    object dssolicitudes2sol_FecAnalisis: TDateTimeField
      FieldName = 'sol_FecAnalisis'
      Required = True
    end
    object dssolicitudes2sol_observaAnalisis: TWideStringField
      FieldName = 'sol_observaAnalisis'
      Required = True
      Size = 1000
    end
    object dssolicitudes2sol_folcred: TIntegerField
      FieldName = 'sol_folcred'
      Required = True
    end
    object dssolicitudes2sol_seriecred: TWideStringField
      FieldName = 'sol_seriecred'
      Required = True
      Size = 50
    end
    object dssolicitudes2frmpago_fk: TIntegerField
      FieldName = 'frmpago_fk'
      Required = True
    end
    object dssolicitudes2ctadestino_fk: TIntegerField
      FieldName = 'ctadestino_fk'
      Required = True
    end
    object dssolicitudes2folcred: TWideStringField
      FieldName = 'folcred'
      ReadOnly = True
      Size = 64
    end
  end
  object dsplanpagosdetalle: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from planpagos_det')
    Params = <>
    Left = 496
    Top = 200
    object dsplanpagosdetalleppd_id: TIntegerField
      FieldName = 'ppd_id'
      Required = True
    end
    object dsplanpagosdetalleppd_nperiodo: TIntegerField
      FieldName = 'ppd_nperiodo'
      Required = True
    end
    object dsplanpagosdetalleppd_fecha: TDateField
      FieldName = 'ppd_fecha'
      Required = True
    end
    object dsplanpagosdetalleppd_monto: TFloatField
      FieldName = 'ppd_monto'
      Required = True
    end
    object dsplanpagosdetalleppd_acapiatl: TFloatField
      FieldName = 'ppd_acapiatl'
      Required = True
    end
    object dsplanpagosdetalleppd_intord: TFloatField
      FieldName = 'ppd_intord'
      Required = True
    end
    object dsplanpagosdetalleppd_iva: TFloatField
      FieldName = 'ppd_iva'
      Required = True
    end
    object dsplanpagosdetalleppd_pago: TFloatField
      FieldName = 'ppd_pago'
      Required = True
    end
    object dsplanpagosdetalleppd_saldo: TFloatField
      FieldName = 'ppd_saldo'
      Required = True
    end
    object dsplanpagosdetallepp_fk: TIntegerField
      FieldName = 'pp_fk'
      Required = True
    end
  end
  object dsarvex: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from personas')
    Params = <>
    Left = 472
    Top = 80
  end
  object dsarve2: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from personas')
    Params = <>
    Left = 472
    Top = 136
  end
end
