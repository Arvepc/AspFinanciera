// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.banxico.org.mx/DgieWSWeb/DgieWS?WSDL
// Encoding : UTF-8
// Version  : 1.0
// (07/08/2018 02:09:00 p.m. - - $Rev: 90173 $)
// ************************************************************************ //

unit DgieWS;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : http://ws.dgie.banxico.org.mx
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : DgieWSPortSoapBinding
  // service   : DgieWS
  // port      : DgieWSPort
  // URL       : http://www.banxico.org.mx/DgieWSWeb/DgieWS
  // ************************************************************************ //
  DgieWSPort = interface(IInvokable)
  ['{26DE6843-74B3-C09E-E6C4-195779B0D34E}']
    function  reservasInternacionalesBanxico: string; stdcall;
    function  tasasDeInteresBanxico: string; stdcall;
    function  tiposDeCambioBanxico: string; stdcall;
    function  udisBanxico: string; stdcall;
  end;

function GetDgieWSPort(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DgieWSPort;


implementation
  uses System.SysUtils;

function GetDgieWSPort(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DgieWSPort;
const
  defWSDL = 'http://www.banxico.org.mx/DgieWSWeb/DgieWS?WSDL';
  defURL  = 'http://www.banxico.org.mx/DgieWSWeb/DgieWS';
  defSvc  = 'DgieWS';
  defPrt  = 'DgieWSPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as DgieWSPort);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { DgieWSPort }
  InvRegistry.RegisterInterface(TypeInfo(DgieWSPort), 'http://ws.dgie.banxico.org.mx', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DgieWSPort), '');

end.