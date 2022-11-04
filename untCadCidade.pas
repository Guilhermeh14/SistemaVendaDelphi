unit untCadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadCidade = class(TfrmPadrao)
    Label1: TLabel;
    dbCodCidade: TDBEdit;
    Label2: TLabel;
    dbeNomeCidade: TDBEdit;
    Label3: TLabel;
    dbeSiglaEstado: TDBEdit;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidade: TfrmCadCidade;

implementation

{$R *.dfm}

uses untModulo;

procedure TfrmCadCidade.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  modulo.qryCidadeIDCIDADE.AsString:= modulo.AutoNum('IDCIDADE','CIDADE');
  dbeNomeCidade.Enabled:=true;
  dbeSiglaEstado.Enabled:=true;
  dbCodCidade.Enabled:=true;

end;



procedure TfrmCadCidade.btnAlterarClick(Sender: TObject);
begin
  inherited;
  dbeNomeCidade.Enabled:=true;
  dbeSiglaEstado.Enabled:=true;
  dbCodCidade.Enabled:=true;
end;

procedure TfrmCadCidade.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dbeNomeCidade.Enabled:=false;
  dbeSiglaEstado.Enabled:=false;
  dbCodCidade.Enabled:=false;
end;

procedure TfrmCadCidade.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dbeNomeCidade.Enabled:=false;
  dbeSiglaEstado.Enabled:=false;
  dbCodCidade.Enabled:=false;
end;

end.
