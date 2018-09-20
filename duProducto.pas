unit duProducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
TCrackDBGrid = class (TDBGrid);
  Tfrmproducto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Image2: TImage;
    edbusca: TEdit;
    Panel5: TPanel;
    pnlNuevo: TPanel;
    pnlImprimir: TPanel;
    Panel4: TPanel;
    lblTitulo: TLabel;
    btnelimina: TSpeedButton;
    btnmodifica: TSpeedButton;
    DataSource1: TDataSource;
    Panel6: TPanel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image2Click(Sender: TObject);
    procedure pnlNuevoClick(Sender: TObject);
    procedure pnlNuevoMouseLeave(Sender: TObject);
    procedure pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btneliminaClick(Sender: TObject);
    procedure btnmodificaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproducto: Tfrmproducto;
  filtro : string;

implementation

{$R *.dfm}

uses dudm, duactusuario, duActProd, duprincipal;

procedure Tfrmproducto.btnmodificaClick(Sender: TObject);
begin
application.CreateForm(Tfrmactproducto, frmactproducto);


frmproducto.AlphaBlend := true;
frmproducto.AlphaBlendValue := 55;

frmactproducto.envia := 'M';

frmactproducto.showmodal;
end;

procedure Tfrmproducto.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
MRect : TRect ;
begin


with TCrackDBGrid (DBGrid1) do MRect:= CellRect (8,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
btnmodifica.Parent := DBGrid1 ;
btnmodifica.Left := (MRect.Right - btnmodifica.Width) ;
btnmodifica.Top := MRect.Top ;
btnmodifica.Height := (MRect.Bottom-MRect.Top);

with TCrackDBGrid (DBGrid1) do MRect:= CellRect (9,Row);
//MRect := TCrackDBGrid.CellRect(Column.Index,TCrackDBGrid(dbgrid1).Row);
btnelimina.Parent := DBGrid1 ;
btnelimina.Left := (MRect.Right - btnelimina.Width)-10 ;
btnelimina.Top := MRect.Top ;
btnelimina.Height := (MRect.Bottom-MRect.Top);


  //



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
frmprincipal.colorgrid(Rect, sender, dbgrid1, DataCol, Column, State);
end;

procedure Tfrmproducto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmproducto.Image2Click(Sender: TObject);
begin
filtro := 'select * from productos where '+
'prd_descripcion like '+ quotedstr('%'+edbusca.text+'%') + ' and  prd_estatus = 1' ;



if edbusca.text = '' then
    dm.filtra(dm.dsprod, 'select * from productos where  prd_estatus = 1')
   else
   dm.filtra(dm.dsprod, filtro);
end;

procedure Tfrmproducto.Label1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmproducto.pnlNuevoClick(Sender: TObject);
begin
application.CreateForm(Tfrmactproducto, frmactproducto);


frmproducto.AlphaBlend := true;
frmproducto.AlphaBlendValue := 55;


dm.activa_ds(dm.dssubprod);
dm.dsprod.Append;

frmactproducto.envia := 'N';
frmactproducto.showmodal;
end;

procedure Tfrmproducto.pnlNuevoMouseLeave(Sender: TObject);
begin
pnlnuevo.Color := $00C08000;
end;

procedure Tfrmproducto.pnlNuevoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
pnlNuevo.Color := $00C1C760;
end;

procedure Tfrmproducto.btneliminaClick(Sender: TObject);
begin
           if messagedlg('Confirme que desea dar de baja el producto: ' + dm.dsprodprd_descripcion.asstring,mtConfirmation,[MbYes,mbNo],0) = mryes then
          begin
            dm.cambia(dm.ds1, 'update productos set  prd_estatus ="INACTIVO" where prd_id = ' + dm.dsprodprd_id.asstring);
            dm.activa_ds(dm.dsprod);

          end;
          ///5614564
end;

end.

