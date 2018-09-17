unit dureporteform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDesgn, frxDBSet;

type
  Treporteform = class(TForm)
    frxDesigner1: TfrxDesigner;
    frxDBDtest: TfrxDBDataset;
    reporte: TfrxReport;
    function frxDesigner1SaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reporteform: Treporteform;

implementation

{$R *.dfm}

function Treporteform.frxDesigner1SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
begin
showmessage('aqui lo guardo: ' + frxdesigner1.SaveDir);
end;

end.
