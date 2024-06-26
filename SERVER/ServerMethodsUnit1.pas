unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth;

type
  TServerMethods1 = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure GetVariables(var temperatura, presion, nivel: double);
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

//crea datos aleatorios para las variables
procedure TServerMethods1.GetVariables(var temperatura, presion, nivel: double);
begin
  randomize;
  temperatura:= random(150) + 50;
  presion:= random(150);
  nivel:= random(150);
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

