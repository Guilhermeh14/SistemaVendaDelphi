inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 486
  ExplicitHeight = 525
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 406
    ExplicitTop = 406
  end
  inherited pnlCampos: TPanel
    Height = 261
    ExplicitLeft = 8
    ExplicitTop = 139
    ExplicitHeight = 261
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 208
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 97
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 654
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 104
      Width = 654
      Height = 21
      DataField = 'ENDERCLIENTE'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 144
      Width = 161
      Height = 21
      DataField = 'CPFCLIENTE'
      DataSource = dts
      TabOrder = 3
      OnEnter = DBEdit4Enter
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 184
      Width = 161
      Height = 21
      DataField = 'FONECLIENTE'
      DataSource = dts
      TabOrder = 4
      OnEnter = DBEdit5Enter
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 224
      Width = 161
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 5
    end
    object dblCidade: TDBLookupComboBox
      Left = 184
      Top = 224
      Width = 145
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCliente
    Top = 416
  end
end
