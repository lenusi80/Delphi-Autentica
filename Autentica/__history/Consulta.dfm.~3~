object Frm_Consulta: TFrm_Consulta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta'
  ClientHeight = 365
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 18
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label2: TLabel
    Left = 134
    Top = 18
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Label3: TLabel
    Left = 145
    Top = 334
    Width = 31
    Height = 14
    Caption = 'Total'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 249
    Top = 18
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label5: TLabel
    Left = 22
    Top = 64
    Width = 326
    Height = 13
    Caption = 
      'Clique duas vezes sobre o registro para visualiz'#225'-lo na  tela pr' +
      'incipal'
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 80
    Width = 349
    Height = 222
    TabStop = False
    DataSource = FrmPrincipal.DsQrRegistros
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Especie'
        Title.Caption = 'Tipo'
        Width = 46
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Data'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 113
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 323
    Top = 30
    Width = 46
    Height = 31
    Caption = 'Ok'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object MaskEdit1: TMaskEdit
    Left = 22
    Top = 37
    Width = 105
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 134
    Top = 37
    Width = 105
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object DBEdit1: TDBEdit
    Left = 183
    Top = 326
    Width = 172
    Height = 22
    TabStop = False
    DataField = 'Total'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 249
    Top = 37
    Width = 63
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Todos'
    Items.Strings = (
      'RC'
      'PG'
      'TOT'
      'Todos')
  end
  object Button1: TButton
    Left = 22
    Top = 323
    Width = 106
    Height = 25
    Caption = 'Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = QrTotal
    Left = 344
    Top = 309
  end
  object QrTotal: TADOQuery
    Active = True
    Connection = FrmPrincipal.DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(Valor) as Total  from Tb_Registros  ')
    Left = 304
    Top = 309
    object QrTotalTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
    end
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 152
    Top = 296
    ReportForm = {17000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = FrmPrincipal.Qr_Registros
    Left = 192
    Top = 296
  end
end
