// 
// Created by the DataSnap proxy generator.
// 06/06/2024 15:14:54
// 

unit UServerClases;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FGetVariablesCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure GetVariables(var temperatura: Double; var presion: Double; var nivel: Double);
  end;

implementation

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.GetVariables(var temperatura: Double; var presion: Double; var nivel: Double);
begin
  if FGetVariablesCommand = nil then
  begin
    FGetVariablesCommand := FDBXConnection.CreateCommand;
    FGetVariablesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetVariablesCommand.Text := 'TServerMethods1.GetVariables';
    FGetVariablesCommand.Prepare;
  end;
  FGetVariablesCommand.Parameters[0].Value.SetDouble(temperatura);
  FGetVariablesCommand.Parameters[1].Value.SetDouble(presion);
  FGetVariablesCommand.Parameters[2].Value.SetDouble(nivel);
  FGetVariablesCommand.ExecuteUpdate;
  temperatura := FGetVariablesCommand.Parameters[0].Value.GetDouble;
  presion := FGetVariablesCommand.Parameters[1].Value.GetDouble;
  nivel := FGetVariablesCommand.Parameters[2].Value.GetDouble;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetVariablesCommand.DisposeOf;
  inherited;
end;

end.
