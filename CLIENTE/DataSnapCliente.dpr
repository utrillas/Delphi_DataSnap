program DataSnapCliente;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMainForm in 'UMainForm.pas' {frmCliente},
  UServerClases in 'UServerClases.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.Run;
end.
