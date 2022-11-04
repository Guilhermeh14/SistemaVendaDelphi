unit untCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCliente = class(TfrmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    dblCidade: TDBLookupComboBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmCadCliente.btnAdicionarClick(Sender: TObject);
begin
  inherited;
   modulo.qryClienteIDCLIENTE.asString := modulo.AutoNum('IDCLIENTE','CLIENTE');
end;

procedure TfrmCadCliente.DBEdit4Enter(Sender: TObject);
begin
  inherited;
  modulo.qryClienteCPFCLIENTE.editMask:= '999.999.999-99;_';
end;

procedure TfrmCadCliente.DBEdit5Enter(Sender: TObject);
begin
  inherited;
  modulo.qryClienteFONECLIENTE.editMask:= '(99)99999-9999;_';
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.open;
end;

procedure TfrmCadCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  modulo.qryCidade.close;
end;

end.
