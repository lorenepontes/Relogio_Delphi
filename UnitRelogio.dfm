object FrmRelogio: TFrmRelogio
  Left = 0
  Top = 0
  VertScrollBar.Style = ssFlat
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Rel'#243'gio'
  ClientHeight = 362
  ClientWidth = 539
  Color = clWhite
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblContador: TLabel
    Left = 0
    Top = 0
    Width = 539
    Height = 278
    Align = alClient
    Alignment = taCenter
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    Visible = False
    ExplicitWidth = 212
    ExplicitHeight = 64
  end
  object LblRelogio: TLabel
    Left = 0
    Top = 0
    Width = 539
    Height = 278
    Align = alClient
    Alignment = taCenter
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 212
    ExplicitHeight = 64
  end
  object PnlBotoes: TPanel
    Left = 0
    Top = 278
    Width = 539
    Height = 58
    Align = alBottom
    BevelInner = bvLowered
    Color = clWhite
    DragMode = dmAutomatic
    ParentBackground = False
    TabOrder = 0
    Visible = False
    object BitBtnIniciar: TBitBtn
      Left = 233
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      Layout = blGlyphBottom
      TabOrder = 0
      OnClick = BitBtnIniciarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 539
    Height = 26
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object LblDesenvolvedora: TLabel
      Left = 1
      Top = 1
      Width = 152
      Height = 24
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = '  Projeto: Lorene Garcia'
      Layout = tlCenter
    end
    object LblDtHora: TLabel
      Left = 153
      Top = 1
      Width = 385
      Height = 24
      Align = alClient
      Alignment = taRightJustify
      Caption = 'teste'
      Layout = tlCenter
      ExplicitLeft = 513
      ExplicitWidth = 25
      ExplicitHeight = 13
    end
  end
  object MMenu: TMainMenu
    Left = 472
    Top = 8
    object Relgio1: TMenuItem
      Caption = 'Rel'#243'gio'
      OnClick = Relgio1Click
    end
    object Cronmetro1: TMenuItem
      Caption = 'Cron'#244'metro'
      OnClick = Cronmetro1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object TmRelogio: TTimer
    OnTimer = TmRelogioTimer
    Left = 472
    Top = 59
  end
  object TmCronometro: TTimer
    Enabled = False
    Interval = 1
    OnTimer = BtnIniciarClick
    Left = 472
    Top = 107
  end
end
