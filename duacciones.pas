unit duacciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, CommCtrl, Vcl.Mask;

type
  PunteroInteger = ^Integer;
  TFrmacciones = class(TForm)
    Panel4: TPanel;
    lblTitulo: TLabel;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    CheckBox1: TCheckBox;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    Edit1: TEdit;
    procedure CargarTree();
    procedure TreeView1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure pnlNuevoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ObtenerIdRol();
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    idRol: Integer;
  public
    { Public declarations }
  end;

var
  Frmacciones: TFrmacciones;


implementation

{$R *.dfm}

uses dudm, duprincipal;

procedure TFrmacciones.CargarTree;
var
X, I, N: Integer;
Nod: TTreeNode;
NodSuplementario: TTreeNode;
MiPunteroInteger: PunteroInteger;
begin
  TreeView1.Items.Clear;
  dm.dsacciones.First;
  for X:=0 to (dm.dsacciones.RecordCount-1) do
    begin
      I:=dm.dsacciones.fieldByName('acc_dependencia').asinteger;
      // Si el campo padre vale 0 (no tiene padre)
      if I=0 then
        begin //Agrego un nuevo nodo, que nazca directamente del raíz
          Nod:=TreeView1.Items.Add (nil,dm.dsacciones.FieldByName('acc_descripcion').asstring);
          New(MiPunteroInteger);
          MiPunteroInteger^:=dm.dsacciones.Fieldbyname('acc_id').asinteger;
          nod.Data:=MiPunteroInteger;
          nod.Selected :=true;
        end
      else
        begin //Agrego un nuevo nodo hijo al padre que le corresponda
          //Recorro desde el último nodo al primero, hasta que la propiedad data (donde guardo
          //el código de cada nodo, sea igual al campo padre del nodo a agregar
          N:=TreeView1.Items.Count -1;
          while PunteroInteger(TreeView1.Items[N].Data)^ <>I do
            Dec(N);
          //Agrego el nodo hijo
          nodSuplementario:=TreeView1.Items.AddChild(TreeView1.Items[N],dm.dsacciones.FieldByName('acc_descripcion').asstring);
          New(MiPunteroInteger);
          MiPunteroInteger^:= dm.dsacciones.Fieldbyname('acc_id').asinteger;
          nodSuplementario.Data:=MiPunteroInteger;
          Nod.selected:=True;
          Nod.Expanded:=False;
        end;
      //ShowMessage('idAccion: '+IntToStr(dm.dsaccionesacc_id.Value)+' idRol'+IntToStr(dm.dsaccionesrls_fk.Value)+' Permitido'+IntToStr(dm.dsaccionesrla_permitido.Value));
      if(dm.dsaccionesrla_permitido.Value= 1) then
      begin
        TreeView1.Items[X].ImageIndex:=1;
        TreeView1.Items[X].SelectedIndex:=1
      end;
      dm.dsacciones.Next;
    end;
    //Treeview1.Items[(Treeview1.Items.Count-1)].Delete;
    TreeView1.Visible := false;
    TreeView1.Visible := true;
    TreeView1.FullExpand;
end;

procedure TFrmacciones.CheckBox1Click(Sender: TObject);
var
i, id: Integer;
begin
  obteneridrol;
  TreeView1.Visible := false;
  if CheckBox1.Checked=true then
    for i := 0 to treeview1.Items.Count-1 do
    begin

      TreeView1.Items[i].ImageIndex:=1;
      TreeView1.Items[i].SelectedIndex:=1;

      dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Items[i].Text+'"');
      id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
      dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=1 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
    end
  else
  begin
    for i := 0 to treeview1.Items.Count-1 do
    begin
      TreeView1.Items[i].ImageIndex:=0;
      TreeView1.Items[i].SelectedIndex:=0;
      dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Items[i].Text+'"');
      id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
      dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=0 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
    end
  end;
  TreeView1.Visible := true;

end;

procedure TFrmacciones.DBGrid1CellClick(Column: TColumn);
var
 i: Integer;
begin
  ObtenerIdRol;
  //dm.filtra(dm.dsacciones, 'SELECT * FROM acciones, rol_accion, roles WHERE acciones.acc_id=rol_accion.acc_fk and rol_accion.rls_fk=roles.rls_id and roles.rls_id='+IntToStr(idrol));
  cargarTree;
  //CheckBox1.Checked
end;


procedure TFrmacciones.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure TFrmacciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmacciones.FormShow(Sender: TObject);
begin
  TStringGrid(DBGrid1).DefaultRowHeight := 25;
end;

procedure TFrmacciones.ObtenerIdRol;
begin
  idRol:=dbgrid1.DataSource.DataSet.Fields[0].AsInteger;
  dm.filtra(dm.dsacciones, 'SELECT * FROM acciones, rol_accion, roles WHERE acciones.acc_id=rol_accion.acc_fk and rol_accion.rls_fk=roles.rls_id and roles.rls_id='+IntToStr(idrol));
  //ShowMessage(IntToStr(idRol));
end;

procedure TFrmacciones.pnlNuevoClick(Sender: TObject);
var
rolId: Integer;
begin
  if edit1.Text='' then
    ShowMessage('Ingrese una descripción')
  else
  begin
    dm.filtra(dm.ds2, 'SELECT max(rls_id) as maximo FROM roles');
    rolId:= dm.ds2.FieldByName('maximo').AsInteger;
    rolId:= rolId+1;
    dm.cambia(dm.ds1, 'INSERT INTO roles VALUES ('+IntToStr(rolId)+', "'+edit1.Text+'", "ACTIVO")');
    dm.Activa_DS(dm.dsrol);
    ShowMessage('Rol agregado');
    edit1.Text:='';
  end;
end;

procedure TFrmacciones.pnlNuevoMouseLeave(Sender: TObject);
begin
  pnlNuevo.Color := $00C08000;
end;

procedure TFrmacciones.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnlNuevo.Color := $00C1C760;
end;

procedure TFrmacciones.TreeView1Click(Sender: TObject);
var
id, I, J: Integer;
begin
  obteneridrol;
  TreeView1.Visible := false;
if TreeView1.Selected.ImageIndex=0 then
  begin
    TreeView1.Selected.ImageIndex:=1;
    TreeView1.Selected.SelectedIndex:=1;
    dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Text+'"');
    id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
    dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=1 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
    if TreeView1.Selected.HasChildren then
      for I := 0 to TreeView1.Selected.Count - 1 do
      begin
         TreeView1.Selected.Item[i].ImageIndex:=1;
         TreeView1.Selected.Item[i].SelectedIndex:=1;
         if TreeView1.Selected.Item[i].HasChildren then
         dm.filtra(dm.dsacciones2,'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Item[i].Text+'"');
         id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
         dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=1 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
         for j := 0 to TreeView1.Selected.Item[i].Count - 1 do
         begin
          TreeView1.Selected.Item[i].Item[j].ImageIndex:=1;
          TreeView1.Selected.Item[i].Item[j].SelectedIndex:=1;
          dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Item[i].Item[j].Text+'"');
          id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
          dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=1 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
         end;
      end;
    TreeView1.Visible := true;
    exit;
  end
  else
  begin
    TreeView1.Selected.ImageIndex:=0;
    TreeView1.Selected.SelectedIndex:=0;
    dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Text+'"');
    id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
    dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=0 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
    for I := 0 to TreeView1.Selected.Count - 1 do
    begin
         TreeView1.Selected.Item[i].ImageIndex:=0;
         TreeView1.Selected.Item[i].SelectedIndex:=0;
         dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Item[i].Text+'"');
         id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
         dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=0 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
         if TreeView1.Selected.Item[i].HasChildren then
         for j := 0 to TreeView1.Selected.Item[i].Count - 1 do
         begin
          TreeView1.Selected.Item[i].Item[j].ImageIndex:=0;
          TreeView1.Selected.Item[i].Item[j].SelectedIndex:=0;
          dm.filtra(dm.dsacciones2, 'SELECT * FROM acciones WHERE acc_descripcion="'+TreeView1.Selected.Item[i].Item[j].Text+'"');
          id:=dm.dsacciones2.FieldByName('acc_id').AsInteger;
          dm.cambia(dm.ds1, 'UPDATE rol_accion SET rla_permitido=0 WHERE acc_fk='+IntToStr(id)+' and rls_fk='+IntToStr(idrol));
         end;
    end;
    TreeView1.Visible := true;
    exit;
  end;
end;

end.
