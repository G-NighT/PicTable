object Form1: TForm1
  Left = 207
  Top = 239
  Width = 292
  Height = 237
  Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1082#1083#1080#1077#1085#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 64
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 26
    Height = 13
    Caption = #1050#1086#1084#1091
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 27
    Height = 13
    Caption = #1058#1077#1084#1072
  end
  object Label4: TLabel
    Left = 144
    Top = 160
    Width = 73
    Height = 33
    Alignment = taCenter
    Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086
    Color = clBtnFace
    ParentColor = False
    Visible = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 56
    Top = 160
    Width = 75
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 56
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 184
    Top = 16
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      '@mail.ru'
      '@yandex.ru'
      '@gmail.com')
  end
  object Edit3: TEdit
    Left = 56
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 56
    Top = 64
    Width = 209
    Height = 89
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 184
    Top = 40
    Width = 73
    Height = 17
    Caption = #1041#1077#1079' '#1090#1077#1084#1099
    TabOrder = 5
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atLogin
    Left = 32
    Top = 8
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 64
    Top = 8
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    OnInitializeISO = IdMessage1InitializeISO
    Left = 96
    Top = 8
  end
  object sSkinManager1: TsSkinManager
    InternalSkins = <>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'MS Sans Serif'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'c:\Skins'
    SkinName = 'Beijing'
    SkinInfo = '8'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    Left = 128
    Top = 8
  end
end
