unit duprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  IdBaseComponent, IdSASL, IdSASLUserPass, IdSASL_CRAMBase, IdSASL_CRAM_MD5,
  Data.DB, ZDataset, ZAbstractRODataset, ZAbstractDataset, ZStoredProcedure,
  Vcl.Grids, Vcl.DBGrids, ZAbstractConnection, ZConnection, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.Win.ADODB, Vcl.OleCtrls, SHDocVw, Vcl.Menus,
  System.ImageList, Vcl.ImgList, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  Tfrmprincipal = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lblusuario: TLabel;
    Panel5: TPanel;
    Image1: TImage;
    IdSASLCRAMMD51: TIdSASLCRAMMD5;
    ZConnection1: TZConnection;
    DataSource1: TDataSource;
    ZStoredProc1: TZStoredProc;
    ZQuery1: TZQuery;
    db: TFDConnection;
    ADOConnection1: TADOConnection;
    ADOStoredProc1: TADOStoredProc;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Clientes1: TMenuItem;
    Salir1: TMenuItem;
    tvMenu: TTreeView;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure CargarTree();
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure tvMenuChange(Sender: TObject; Node: TTreeNode);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure CargarMonedas();
    function CreateMDI(Owner:TForm;BaseClass:TFormClass; FormVar:TForm):Boolean;
    function ChecarNodos(Serie:String):String;
  private
    { Private declarations }
    procedure CapturarPantalla( x, y, iAncho, iAlto: Integer; Imagen: TBitmap );
  public
    { Public declarations }
    ChildNode : IXMLNode;
    ChildNode2 : IXMLNode;
    ChildNode3 : IXMLNode;
    procedure colorgrid(Rect: TRect; sender: Tobject; ngrid : Tdbgrid; DataCol: Integer; Column: TColumn; State: TGridDrawState);

  end;

var
  frmprincipal: Tfrmprincipal;
  menu_t: integer;  //1 abierto 2 colapsado

implementation
uses Hashes, duusuarios, dudm, duPersonas, dumonedas, duactividades, DgieWS,
  duempresa, duacciones, ducentrostrabajo,
  dubancos, dudocumentos, dulistasolicitudes, dudispercion,
  duProducto, dumesacontrolcredito, dumesacontrolfinal, duanalisis, duPlanPagos,
  duserie;

{$R *.dfm}
procedure Tfrmprincipal.CapturarPantalla( x, y, iAncho, iAlto: Integer; Imagen: TBitmap );
var
  DC: HDC;
  lpPal : PLOGPALETTE;
begin
  if ( iAncho = 0 ) OR ( iAlto = 0 ) then
    Exit;

  Imagen.Width := iAncho;
  Imagen.Height := iAlto;
  DC := GetDc( 0 );

  if ( DC = 0 ) then
    Exit;

  if ( GetDeviceCaps( dc, RASTERCAPS) and  RC_PALETTE = RC_PALETTE ) then
  begin
    GetMem( lpPal, SizeOf( TLOGPALETTE ) + ( 255 * SizeOf( TPALETTEENTRY ) ) );
    FillChar( lpPal^, SizeOf( TLOGPALETTE ) + ( 255 * SizeOf( TPALETTEENTRY ) ), #0 );
    lpPal^.palVersion := $300;
    lpPal^.palNumEntries := GetSystemPaletteEntries( DC, 0, 256, lpPal^.palPalEntry );

    if (lpPal^.PalNumEntries <> 0) then
      Imagen.Palette := CreatePalette( lpPal^ );

    FreeMem( lpPal, SizeOf( TLOGPALETTE ) + ( 255 * SizeOf( TPALETTEENTRY ) ) );
  end;

  BitBlt( Imagen.Canvas.Handle, 0, 0, iAncho, iAlto, DC, x, y, SRCCOPY );
  ReleaseDc( 0, DC );
end;

procedure Tfrmprincipal.Button3Click(Sender: TObject);
var
imagen : Tbitmap;
begin
 { Imagen := TBitmap.Create;
  CapturarPantalla( 200, 100, 250, 250, Imagen );
  Imagen.SaveToFile( ExtractFilePath( Application.ExeName ) + 'capturax.jpg' );
  Imagen.Free;   }
end;

procedure Tfrmprincipal.Button4Click(Sender: TObject);
begin
//wb1.Navigate('https://www.youtube.com/watch?v=eXXRZBG9NLo');
end;

procedure Tfrmprincipal.Button5Click(Sender: TObject);
begin
application.CreateForm(Tfrmusuarios, frmusuarios);
frmusuarios.show
end;

procedure Tfrmprincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if mryes = messagedlg('¿Esta seguro que desea salir del sistema?',mtConfirmation,[mbYes,mbNo],0) then
CanClose:=True;
end;

procedure Tfrmprincipal.FormShow(Sender: TObject);
begin
menu_t := 1;
lblusuario.caption := 'Usuario: ' + dm.usuario;
dm.dsusuario.Open;
CargarTree;
end;

procedure Tfrmprincipal.Image1Click(Sender: TObject);
begin
if tvMenu.Visible then
  begin
   tvMenu.Visible:= False;
   panel3.Visible:= False
  end
    else
    begin
     panel3.Visible := True;
     tvMenu.Visible := True;
    end;
end;

procedure Tfrmprincipal.CargarMonedas;
var
  i,j : Integer;
  extra, fecha, euro, dolarc, libra, yen, dolar: String;
begin
  try
    frmmonedas.DBMemo1.Lines.Add(GetDgieWSPort.tiposDeCambioBanxico);
  except
    showMessage('No se pudo realizar la consulta de las monedas intentelo de nuevo más tarde');
    exit;
  end;
  frmmonedas.DBMemo1.Lines.SaveToFile(ExtractFilepath(Application.ExeName) + 'Archivo.xml');

  ChildNode:= frmmonedas.XMLDocument1.DocumentElement.ChildNodes[0];
  extra:=ChildNode.ChildNodes['Prepared'].Text;
  fecha:=copy(extra,1,19);
  ChildNode:= frmmonedas.XMLDocument1.DocumentElement.ChildNodes[1];
  euro:=ChecarNodos('SF46410');
  dolarc:=ChecarNodos('SF60632');
  dolar:=ChecarNodos('SF43718');
  libra:=ChecarNodos('SF46407');
  yen:=ChecarNodos('SF46406');

  {//Dolar Canadiense
  ChildNode2:= ChildNode.ChildNodes[2];
  ChildNode3:= ChildNode2.ChildNodes[0];
  dolarc:=ChildNode3.AttributeNodes[1].Text;

  //Dolar
  ChildNode2:= ChildNode.ChildNodes[3];
  ChildNode3:= ChildNode2.ChildNodes[0];
  dolar:=ChildNode3.AttributeNodes[1].Text;


  //Libra
  ChildNode2:= ChildNode.ChildNodes[4];
  ChildNode3:= ChildNode2.ChildNodes[0];
  libra:=ChildNode3.AttributeNodes[1].Text;

  //Yen
  ChildNode2:= ChildNode.ChildNodes[5];
  ChildNode3:= ChildNode2.ChildNodes[0];
  yen:=ChildNode3.AttributeNodes[1].Text;}

  try
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_fecact="'+Fecha+'" WHERE mnd_id=1');
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_valor='+dolar+', mnd_fecact="'+Fecha+'" WHERE mnd_id=2');
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_valor='+euro+', mnd_fecact="'+Fecha+'" WHERE mnd_id=3');
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_fecact="'+Fecha+'" WHERE mnd_id=4');
  //dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_valor='+dolarc+', mnd_fecact="'+Fecha+'" WHERE mnd_id=4');
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_valor='+libra+', mnd_fecact="'+Fecha+'" WHERE mnd_id=5');
  dm.cambia(dm.ds1, 'UPDATE monedas SET mnd_valor='+yen+', mnd_fecact="'+Fecha+'" WHERE mnd_id=6');
  dm.filtra(dm.dsMonedas, 'SELECT * FROM monedas');
  except
    showMessage('No se pudo realizar la actualización de las monedas intentelo de nuevo más tarde');
  end;
end;

function TfrmPrincipal.ChecarNodos(Serie:String):String;
begin
    if ChildNode.ChildNodes[1].AttributeNodes['IDSERIE'].Text=Serie then
  begin
    ChildNode2:= ChildNode.ChildNodes[1];
    ChildNode3:= ChildNode2.ChildNodes[0];
    ChecarNodos:=ChildNode3.AttributeNodes[1].Text;
  end
  else
  begin
    if ChildNode.ChildNodes[2].AttributeNodes['IDSERIE'].Text=Serie then
    begin
      ChildNode2:= ChildNode.ChildNodes[2];
      ChildNode3:= ChildNode2.ChildNodes[0];
      ChecarNodos:=ChildNode3.AttributeNodes[1].Text;
    end
    else
    begin
      if ChildNode.ChildNodes[3].AttributeNodes['IDSERIE'].Text=Serie then
      begin
        ChildNode2:= ChildNode.ChildNodes[3];
        ChildNode3:= ChildNode2.ChildNodes[0];
        ChecarNodos:=ChildNode3.AttributeNodes[1].Text;
      end
      else
      begin
        if ChildNode.ChildNodes[4].AttributeNodes['IDSERIE'].Text=Serie then
        begin
          ChildNode2:= ChildNode.ChildNodes[4];
          ChildNode3:= ChildNode2.ChildNodes[0];
          ChecarNodos:=ChildNode3.AttributeNodes[1].Text;
        end
        else
        begin
          if ChildNode.ChildNodes[5].AttributeNodes['IDSERIE'].Text=Serie then
          begin
            ChildNode2:= ChildNode.ChildNodes[5];
            ChildNode3:= ChildNode2.ChildNodes[0];
            ChecarNodos:=ChildNode3.AttributeNodes[1].Text;
          end;
        end;
      end;
    end;
  end;
end;


procedure Tfrmprincipal.CargarTree;
var
X, I, N: Integer;
Nod: TTreeNode;
NodSuplementario: TTreeNode;
MiPunteroInteger: PunteroInteger;
Nodo: String;
begin
{dm.filtra(dm.dsacciones3,'SELECT * FROM rol_accion, acciones, usuario where (usuario.rls_fk=rol_accion.rls_fk and acciones.acc_id=rol_accion.acc_fk and rol_accion.rla_permitido=1 and usuario.usr_id='+IntToStr(dm.id_rol)+') and ( acciones.acc_tipo="Menu" or  acciones.acc_tipo="Sub menu")');
Tvmenu.Items.Clear;
  dm.dsacciones3.First;
  IdRol:=dm.dsacciones3rls_fk.Value;
  for X:=0 to (dm.dsacciones3.RecordCount-1) do
    begin
      I:=dm.dsacciones3.fieldByName('acc_dependencia').asinteger;
      // Si el campo padre vale 0 (no tiene padre)
      if I=0 then
        begin //Agrego un nuevo nodo, que nazca directamente del raíz
          Nodo:=AnsiUpperCase(dm.dsacciones3.FieldByName('acc_descripcion').asstring);
          Nod:=Tvmenu.Items.Add (nil,Nodo);
          New(MiPunteroInteger);
          MiPunteroInteger^:=dm.dsacciones3.Fieldbyname('acc_id').asinteger;
          nod.Data:=MiPunteroInteger;
          nod.Selected :=true;
        end
      else
        begin //Agrego un nuevo nodo hijo al padre que le corresponda
          //Recorro desde el último nodo al primero, hasta que la propiedad data (donde guardo
          //el código de cada nodo, sea igual al campo padre del nodo a agregar
          N:=Tvmenu.Items.Count -1;
          while PunteroInteger(Tvmenu.Items[N].Data)^ <>I do
            Dec(N);
          //Agrego el nodo hijo
          Nodo:=AnsiUpperCase(dm.dsacciones3.FieldByName('acc_descripcion').asstring);
          nodSuplementario:=Tvmenu.Items.AddChild(Tvmenu.Items[N],Nodo);
          New(MiPunteroInteger);
          MiPunteroInteger^:= dm.dsacciones3.Fieldbyname('acc_id').asinteger;
          nodSuplementario.Data:=MiPunteroInteger;
          Nod.selected:=True;
          Nod.Expanded:=False;
        end;
      dm.dsacciones3.Next;
    end;

    Tvmenu.FullExpand;}
end;

procedure Tfrmprincipal.colorgrid(Rect: TRect; sender: Tobject; ngrid: Tdbgrid;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Sender as TDBGrid).Datasource.DataSet.RecNo mod 2 = 0 then
        (Sender as TDBGrid).Canvas.Brush.Color := $00FFF5EC
      else
        (Sender as TDBGrid).Canvas.Brush.Color := $00F5FEFE;
(Sender as TDBGrid).Canvas.Font.Color := clBlack;

(Sender as TDBGrid).DefaultDrawColumnCell(rect,DataCol,Column,State);

 if gdSelected in State then
  begin
    ngrid.Canvas.Brush.Color:= $00C08200;
    ngrid.Canvas.Font.Color := clwhite;
    ngrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

function TfrmPrincipal.CreateMDI(Owner:TForm;BaseClass:TFormClass; FormVar:TForm):Boolean;
var
found:Boolean;
i:integer;
begin
found := FAlse;
// recorremos el array de ventanas hijas
For i:= 0 To Owner.MDIChildCount-1 Do
    If Owner.MDIChildren[i] is BaseClass Then
    Begin
    Owner.MDIChildren[i].Show;
    found := True;
    End;
createMDI := Found;
end;

procedure Tfrmprincipal.tvMenuChange(Sender: TObject; Node: TTreeNode);
begin
 if Assigned(Node) then
    if Node.Text='CONSULTAR CLIENTES' then
    begin
      application.createForm(TfrmPersonas, frmPersonas) ;
      dm.activa_ds(dm.dsPersonas);
      frmPersonas.show;
    end;

    if Node.Text='CONSULTAR ACTIVIDADES' then
    begin
      application.createForm(Tfrmactividades, frmactividades) ;
      dm.activa_ds(dm.dsActividades);
      frmactividades.show;
    end;

    case Node.AbsoluteIndex of
    1:  Close;
    3:  begin
          if not createMDI(frmPrincipal,TfrmPersonas, frmPersonas) then
          begin
            application.createForm(TfrmPersonas, frmPersonas) ;
            dm.activa_ds(dm.dsPersonas);
            frmpersonas.tipo:=1;
            frmPersonas.show;
          end;
        end;
    6:  begin
          application.createForm(TfrmPlanPagos, frmPlanpagos) ;
          dm.activa_ds(dm.dsplan_pagos);
          frmPlanPagos.show;
        end;

    7:  begin
          application.createForm(Tfrmlistasolicitudes, frmlistasolicitudes) ;
          dm.activa_ds(dm.dssolicitudes);
          frmlistasolicitudes.show;
        end;
    9:  begin
          application.createForm(Tfrmanalisis, frmanalisis) ;
          dm.activa_ds(frmanalisis.dstipodoc);
          frmanalisis.show;
        end;
    10:  begin
          application.createForm(Tfrmmesacontrolcredito, frmmesacontrolcredito) ;
          dm.activa_ds(dm.dssolicitudes);
          frmmesacontrolcredito.show;
        end;
    11:  begin
          application.createForm(Tfrmmesacontrolfinal, frmmesacontrolfinal) ;
          dm.activa_ds(frmmesacontrolfinal.dssolicitud);
          frmmesacontrolfinal.show;
        end;
    14:  begin
          application.createForm(Tfrmdispercion, frmdispercion) ;
          dm.activa_ds(dm.dssolicitudes2);
          frmdispercion.show;
        end;
    26: begin
          application.createForm(Tfrmempresa, frmempresa) ;
          dm.activa_ds(dm.dsEmpresa);
          frmempresa.show;
        end;
    27: begin
          application.createForm(Tfrmproducto, frmproducto) ;
          dm.activa_ds(dm.dsProd);
          frmproducto.show;
        end;
    28: begin
          application.createForm(Tfrmusuarios, frmusuarios) ;
          dm.activa_ds(dm.dsusuario);
          frmusuarios.show;
        end;
    29: begin
          application.createForm(Tfrmacciones, frmacciones) ;
          dm.activa_ds(dm.dsrol);
          dm.activa_ds(dm.dsacciones);
          frmacciones.CargarTree;
          frmacciones.show;
        end;
    32:  begin
          application.createForm(Tfrmactividades, frmactividades) ;
          dm.activa_ds(dm.dsActividades);
          frmactividades.show;
        end;
    33:  begin
          application.createForm(Tfrmbancos, frmbancos) ;
          dm.activa_ds(dm.dsBancos);
          frmbancos.show;
        end;
    34:  begin
          application.createForm(Tfrmcentrostrabajo, frmcentrostrabajo) ;
          dm.activa_ds(dm.dsCentroTrabajo);
          frmcentrostrabajo.show;
        end;
    37: begin
          application.createForm(Tfrmmonedas, frmmonedas) ;
          dm.activa_ds(dm.dsMonedas);
          CargarMonedas;
          frmmonedas.Show;
        end;
    38: begin
          application.createForm(Tfrmserie, frmserie) ;
          dm.activa_ds(dm.dsserie);
          frmserie.envia:='M';
          frmserie.WindowState:= wsMaximized;
          frmserie.FormStyle:= fsMDIChild;
          frmserie.Show;
        end;
    39: begin
          application.createForm(Tfrmdocumentos, frmdocumentos) ;
          dm.activa_ds(dm.dsdocumentos);
          frmdocumentos.Show;
          //5641654
        end;
    end;
end;

end.
