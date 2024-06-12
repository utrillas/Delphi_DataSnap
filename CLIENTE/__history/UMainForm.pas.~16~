unit UMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr;

type
  TfrmCliente = class(TForm)
    lblTemperatura: TLabel;
    lblVariable: TLabel;
    lblNivel: TLabel;
    lblPresion: TLabel;
    txtTemperatura: TEdit;
    txtPresion: TEdit;
    txtNivel: TEdit;
    btnMostrar: TButton;
    SQLConnection1: TSQLConnection;
    Timer1: TTimer;
    procedure btnMostrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    opcion:boolean;
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.fmx}

uses UServerClases;

procedure TfrmCliente.btnMostrarClick(Sender: TObject);
var
  ser: TServerMethods1Client;
  nivel, temperatura, presion: Double;
begin
  if opcion = True then
    begin
      try
        ser := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
        ser.GetVariables(temperatura, presion, nivel);
        txtTemperatura.Text := temperatura.ToString;
        txtPresion.Text := presion.ToString;
        txtNivel.Text := nivel.ToString;
      except
        opcion:= false;
        showmessage('ERROR con el servidor');
        abort;

      end;
    end;
end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  opcion:= True;
end;

end.
