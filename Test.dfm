object frmTest: TfrmTest
  Left = 0
  Top = 0
  Caption = 'UblTr Test'
  ClientHeight = 580
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 746
    Height = 580
    ActivePage = tsFatura
    Align = alClient
    TabOrder = 0
    object tsAyar: TTabSheet
      Caption = 'Ayarlar'
      DesignSize = (
        738
        552)
      object Label19: TLabel
        Left = 25
        Top = 40
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Kullan'#305'c'#305' Ad'#305
      end
      object Label22: TLabel
        Left = 58
        Top = 67
        Width = 22
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #350'ifre'
      end
      object Label24: TLabel
        Left = 0
        Top = 13
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'VKN / TCKN'
      end
      object Label25: TLabel
        Left = 0
        Top = 94
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Etiket'
      end
      object Label31: TLabel
        Left = 3
        Top = 121
        Width = 80
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Entegrator'
      end
      object txtPassword: TEdit
        Left = 86
        Top = 64
        Width = 89
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        Text = 'test'
      end
      object txtUsername: TEdit
        Left = 86
        Top = 37
        Width = 89
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 1
        Text = 'test'
      end
      object txtVKN: TEdit
        Left = 86
        Top = 10
        Width = 89
        Height = 21
        MaxLength = 11
        TabOrder = 2
        Text = '2222222222'
      end
      object txtEtiket: TEdit
        Left = 86
        Top = 91
        Width = 187
        Height = 21
        MaxLength = 11
        TabOrder = 3
        Text = 'urn:mail:defaultgb'
      end
      object rbForiba: TRadioButton
        Left = 86
        Top = 120
        Width = 113
        Height = 17
        Caption = 'Foriba'
        TabOrder = 4
      end
      object rbKolaySoft: TRadioButton
        Left = 145
        Top = 120
        Width = 113
        Height = 17
        Caption = 'Kolay Soft'
        Checked = True
        TabOrder = 5
        TabStop = True
      end
    end
    object tsFatura: TTabSheet
      Caption = 'Fatura Yarat'
      ImageIndex = 1
      OnShow = tsFaturaShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 237
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 289
          Height = 237
          Align = alLeft
          Caption = 'D'#252'zenleyen'
          TabOrder = 0
          object Label2: TLabel
            Left = 8
            Top = 20
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VKN / TCKN'
          end
          object Label5: TLabel
            Left = 8
            Top = 74
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Unvan / Ad'#305
          end
          object Label6: TLabel
            Left = 8
            Top = 101
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Soyad'#305
          end
          object Label9: TLabel
            Left = 8
            Top = 128
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Veri Dairesi'
          end
          object Label11: TLabel
            Left = 8
            Top = 155
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = #304'l / '#304'l'#231'e'
          end
          object Label12: TLabel
            Left = 8
            Top = 182
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = #220'lke'
          end
          object Label13: TLabel
            Left = 8
            Top = 207
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Adres'
          end
          object Label17: TLabel
            Left = 8
            Top = 47
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Etiket'
          end
          object txtDuzenleyenVKN: TEdit
            Left = 94
            Top = 17
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 0
            Text = '2222222222'
          end
          object txtDuzenleyenAdi: TEdit
            Left = 94
            Top = 71
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 1
            Text = 'Ad'#305
          end
          object txtDuzenleyenSoyadi: TEdit
            Left = 94
            Top = 98
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 2
            Text = 'Soyad'#305
          end
          object txtDuzenleyenVD: TEdit
            Left = 94
            Top = 125
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 3
            Text = 'Vergi Dairesi'
          end
          object txtDuzenleyenIl: TEdit
            Left = 94
            Top = 152
            Width = 67
            Height = 21
            MaxLength = 11
            TabOrder = 4
            Text = #304'l'
          end
          object txtDuzenleyenIlce: TEdit
            Left = 167
            Top = 152
            Width = 82
            Height = 21
            MaxLength = 11
            TabOrder = 5
            Text = #304'l'#231'e'
          end
          object txtDuzenleyenAdres: TEdit
            Left = 94
            Top = 204
            Width = 187
            Height = 21
            MaxLength = 11
            TabOrder = 6
            Text = 'Adres'
          end
          object cmbDuzenleyenUlke: TComboBox
            Left = 94
            Top = 179
            Width = 121
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 7
            Text = 'TR | T'#252'rkiye'
            Items.Strings = (
              'TR | T'#252'rkiye')
          end
          object txtDuzenleyenEtiket: TEdit
            Left = 94
            Top = 44
            Width = 187
            Height = 21
            MaxLength = 11
            TabOrder = 8
            Text = 'urn:mail:defaultgb'
          end
        end
        object GroupBox2: TGroupBox
          Left = 423
          Top = 0
          Width = 315
          Height = 237
          Align = alRight
          Caption = 'Al'#305'c'#305
          TabOrder = 1
          object Label4: TLabel
            Left = 3
            Top = 20
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VKN / TCKN'
          end
          object Label7: TLabel
            Left = 4
            Top = 101
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Soyad'#305
          end
          object Label8: TLabel
            Left = 4
            Top = 74
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Unvan / Ad'#305
          end
          object Label10: TLabel
            Left = 4
            Top = 128
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Veri Dairesi'
          end
          object Label14: TLabel
            Left = 4
            Top = 155
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = #304'l / '#304'l'#231'e'
          end
          object Label15: TLabel
            Left = 4
            Top = 182
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = #220'lke'
          end
          object Label16: TLabel
            Left = 4
            Top = 207
            Width = 80
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Adres'
          end
          object Label18: TLabel
            Left = 6
            Top = 47
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Etiket'
          end
          object txtAliciVKN: TEdit
            Left = 90
            Top = 17
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 0
            Text = '11111111111'
          end
          object txtAliciAdi: TEdit
            Left = 90
            Top = 71
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 1
            Text = 'Ad'#305
          end
          object txtAliciSoyadi: TEdit
            Left = 90
            Top = 98
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 2
            Text = 'Soyad'#305
          end
          object txtAliciVD: TEdit
            Left = 90
            Top = 125
            Width = 121
            Height = 21
            MaxLength = 11
            TabOrder = 3
            Text = 'Vergi Dairesi'
          end
          object txtAliciIl: TEdit
            Left = 90
            Top = 152
            Width = 67
            Height = 21
            MaxLength = 11
            TabOrder = 4
            Text = #304'l'
          end
          object txtAliciIlce: TEdit
            Left = 163
            Top = 152
            Width = 82
            Height = 21
            MaxLength = 11
            TabOrder = 5
            Text = #304'l'#231'e'
          end
          object cmbAliciUlke: TComboBox
            Left = 90
            Top = 179
            Width = 121
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 6
            Text = 'TR | T'#252'rkiye'
            Items.Strings = (
              'TR | T'#252'rkiye')
          end
          object txtAliciAdres: TEdit
            Left = 90
            Top = 202
            Width = 187
            Height = 21
            MaxLength = 11
            TabOrder = 7
            Text = 'Adres'
          end
          object txtAliciEtiket: TEdit
            Left = 90
            Top = 44
            Width = 187
            Height = 21
            MaxLength = 11
            TabOrder = 8
            Text = 'urn:mail:defaultpk'
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 237
        Width = 738
        Height = 74
        Align = alTop
        Caption = 'Ba'#351'l'#305'k'
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 49
          Width = 79
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fatura Tarihi'
        end
        object Label1: TLabel
          Left = 8
          Top = 22
          Width = 79
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fatura No'
        end
        object Label20: TLabel
          Left = 216
          Top = 22
          Width = 43
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Profil'
        end
        object Label21: TLabel
          Left = 216
          Top = 48
          Width = 43
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tip'
        end
        object dtpFaturaTarihi: TDateTimePicker
          Left = 94
          Top = 45
          Width = 115
          Height = 21
          Date = 43559.789729918980000000
          Time = 43559.789729918980000000
          TabOrder = 0
        end
        object txtFaturaNo: TMaskEdit
          Left = 94
          Top = 18
          Width = 114
          Height = 21
          EditMask = 'AAA2000000000000;1;_'
          MaxLength = 16
          TabOrder = 1
          Text = '   2            '
        end
        object memNotlar: TMemo
          Left = 392
          Top = 15
          Width = 344
          Height = 57
          Align = alRight
          TabOrder = 2
        end
        object cmbSenaryo: TComboBox
          Left = 265
          Top = 19
          Width = 121
          Height = 21
          Style = csDropDownList
          TabOrder = 3
        end
        object cmbTip: TComboBox
          Left = 265
          Top = 45
          Width = 121
          Height = 21
          Style = csDropDownList
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 524
        Width = 738
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        DesignSize = (
          738
          28)
        object btnAc: TBitBtn
          Left = 8
          Top = -1
          Width = 75
          Height = 25
          Caption = 'A'#231
          Enabled = False
          TabOrder = 0
          OnClick = btnAcClick
        end
        object btnKaydet: TButton
          Left = 655
          Top = -1
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Kaydet'
          TabOrder = 1
          OnClick = btnKaydetClick
        end
        object btnGonder: TButton
          Left = 574
          Top = -1
          Width = 75
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'G'#246'nder'
          Enabled = False
          TabOrder = 2
          OnClick = btnGonderClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 311
        Width = 738
        Height = 139
        Align = alClient
        Caption = 'Kalemler'
        TabOrder = 3
        object grdKalemler: TStringGrid
          Left = 2
          Top = 15
          Width = 734
          Height = 122
          Align = alClient
          ColCount = 6
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor]
          TabOrder = 0
          OnSelectCell = grdKalemlerSelectCell
        end
        object cmbOlcuBirimi: TComboBox
          Left = 392
          Top = 29
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = '26 | Ton'
          OnChange = cmbOlcuBirimiChange
          OnExit = cmbOlcuBirimiExit
          Items.Strings = (
            '26 | Ton'
            'AM | Ampul'
            'B32 | Kg / m'#178
            'BAS | Bas'
            'BO | '#350'i'#351'e'
            'BX | Kutu'
            'C62 | Adet'
            'CA | Can'
            'CCT | Ta'#351#305'ma Kapasite/Ton'
            'CLT | Santilitre'
            'CMK | cm'#178
            'CMQ | cm'#179
            'CMT | cm'
            'CS | Koli'
            'CT | Karton'
            'D30 | Br'#252't Kalori De'#287'eri'
            'D40 | Bin Litre'
            'DAY | G'#252'n'
            'DMK | dm'#178
            'DMT | dm'
            'EA | EA'
            'GFI | FISSILE YZOTOP GRAMI'
            'GMS | G'#252'm'#252#351
            'GRM | Gram'
            'GRN | gr'
            'GT | Gross Ton'
            'H62 | Y'#220'Z ADET'
            'HUR | Saat'
            'K20 | Kg Potasyum Oksit'
            'K58 | Kuru Net A'#287'. / Kg'
            'K62 | Kg / Adet'
            'KGM | Kg'
            'KGS | KGS'
            'KH6 | Kg / Bas'
            'KJO | Kilojul'
            'KMA | METYL AMYNLERYN KG'
            'KNI | AZOTUN KYLOGRAMI'
            'KPH | Kg POTASYUM OKSYD'
            'KPR | Kg-'#199'ift'
            'KSD | %90 Kuru '#220'r'#252'n / Kg'
            'KSH | SODYUM HYDROKSYT KG'
            'KTM | Kilometre'
            'KUR | URANYUM KYLOGRAMI'
            'KWH | Kilowattsaat'
            'KWT | kW'
            'LPA | Saf Alkol Listesi'
            'LR | Tabaka'
            'LTR | Litre'
            'MLT | Mililitre'
            'MMQ | m'#179
            'MMT | Milimetre'
            'MON | Ay'
            'MTK | m'#178
            'MTQ | m'#179
            'MTR | Metre'
            'NCL | H'#252'cre Adet'
            'NCR | Karat'
            'NM3 | 101.32 bar/m'#179' 0'#176'C'
            'PA | Paket'
            'PR | Adet('#199'ift)'
            'R9 | Bin m'#179
            'SET | Set'
            'SM3 | 101.32 bar/m'#179' 15'#176'C'
            'T3 | Bin Adet'
            'TWH | B'#304'N kW'#183'h')
        end
        object cmbOTV: TComboBox
          Left = 392
          Top = 56
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = '0071 | '#214'TV 1.L'#304'STE'
          OnChange = cmbOTVChange
          OnExit = cmbOTVExit
          Items.Strings = (
            '0071 | '#214'TV 1.L'#304'STE'
            '9077 | '#214'TV 2.L'#304'STE'
            '0073 | '#214'TV 3.L'#304'STE'
            '0075 | '#214'TV 3A L'#304'STE'
            '0076 | '#214'TV 3B L'#304'STE'
            '0077 | '#214'TV 3C L'#304'STE'
            '0074 | '#214'TV 4.L'#304'STE')
        end
        object cmbTevkifat: TComboBox
          Left = 392
          Top = 83
          Width = 105
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 3
          Text = '0235 | 16/1-c'
          OnChange = cmbTevkifatChange
          OnExit = cmbTevkifatExit
          Items.Strings = (
            '0235 | 16/1-c'
            '0231 | 17/4-g'
            '0701 | 3065 s. KDV'
            '0616 | 5018 H'#304'ZMET'
            '0623 | A'#286'A'#199' VE ORMAN'
            '0615 | BASKI VE BASIM'
            '0619 | CU, ZN, AL TSLM'
            '0613 | '#199'EVRE BAH'#199'E BAK'
            '0650 | D'#304#286'ERLER'#304
            '0602 | ET'#220'T, PLAN-PROJ'
            '0609 | FASON TEKST'#304'L'
            '0621 | HURDA TESL'#304'M'
            '0620 | HURDA VE ATIK'
            '0617 | HURDADAN K'#220'L'#199'E'
            '0606 | '#304#350'G'#220'C'#220' TEM'#304'N'
            '0618 | K'#220'L'#199'E'
            '0603 | ONARIM H'#304'ZMET'
            '0605 | ORGAN'#304'ZASYON'
            '0607 | '#214'ZEL G'#220'VENL'#304'K'
            '0614 | SERV'#304'S TA'#350'IMA'
            '0611 | SPOR YAY.REKLAM'
            '0622 | TEKST'#304'L HMD TSL'
            '0612 | TEM'#304'ZL'#304'K H'#304'ZMET'
            '0610 | TUR'#304'ST'#304'K M'#220#350'.TM'
            '0608 | YAPI DENET'#304'M'
            '0601 | YAPIM ET'#220'T-PROJ'
            '0604 | YEMEK SERV'#304'S')
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 450
        Width = 738
        Height = 74
        Align = alBottom
        Caption = 'Dip Toplamlar'
        TabOrder = 4
      end
    end
    object tsDurum: TTabSheet
      Caption = 'Durum Sorgula'
      Enabled = False
      ImageIndex = 2
      DesignSize = (
        738
        552)
      object Label23: TLabel
        Left = 128
        Top = 15
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Zarf ETTN'
        ExplicitLeft = 17
      end
      object Label32: TLabel
        Left = 128
        Top = 45
        Width = 60
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Fatura ETTN'
      end
      object txtZarfETTN: TEdit
        Left = 189
        Top = 12
        Width = 211
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
      object btnSorgula: TButton
        Left = 101
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Sorgula'
        TabOrder = 1
        OnClick = btnSorgulaClick
      end
      object txtFaturaETTN: TEdit
        Left = 189
        Top = 39
        Width = 211
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 2
      end
    end
    object tsMukellef: TTabSheet
      Caption = 'M'#252'kellefler'
      Enabled = False
      ImageIndex = 3
      OnShow = tsMukellefShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 0
        object btnMukellef: TButton
          Left = 241
          Top = 3
          Width = 145
          Height = 25
          Caption = 'M'#252'kellef Listesini Getir'
          TabOrder = 0
          OnClick = btnMukellefClick
        end
      end
      object grdMukellefler: TStringGrid
        Left = 0
        Top = 33
        Width = 738
        Height = 519
        Align = alClient
        FixedCols = 0
        TabOrder = 1
      end
    end
    object tsBelgeler: TTabSheet
      Caption = 'Belgeler'
      Enabled = False
      ImageIndex = 5
      OnShow = tsBelgelerShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          738
          33)
        object Label28: TLabel
          Left = 14
          Top = 7
          Width = 18
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Y'#246'n'
        end
        object Label29: TLabel
          Left = 276
          Top = 10
          Width = 36
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Tarihler'
          ExplicitLeft = 165
        end
        object Label30: TLabel
          Left = 423
          Top = 9
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Belge'
        end
        object rbFaturalarGelen: TRadioButton
          Left = 114
          Top = 7
          Width = 49
          Height = 17
          Caption = 'Gelen'
          TabOrder = 2
        end
        object btnBelgeler: TButton
          Left = 640
          Top = 2
          Width = 96
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Sorgula'
          TabOrder = 0
          OnClick = btnBelgelerClick
        end
        object rbFaturalarGiden: TRadioButton
          Left = 48
          Top = 7
          Width = 49
          Height = 17
          Caption = 'Giden'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object dtpBaslangic: TDateTimePicker
          Left = 205
          Top = 6
          Width = 83
          Height = 21
          Date = 43627.000000000000000000
          Time = 43627.000000000000000000
          TabOrder = 3
          OnChange = dtpBaslangicChange
        end
        object dtpBitis: TDateTimePicker
          Left = 294
          Top = 6
          Width = 83
          Height = 21
          Date = 43627.999988425930000000
          Time = 43627.999988425930000000
          TabOrder = 4
          OnChange = dtpBitisChange
        end
        object cmbBelge: TComboBox
          Left = 459
          Top = 6
          Width = 81
          Height = 21
          TabOrder = 5
        end
      end
      object grdFaturalar: TStringGrid
        Left = 0
        Top = 33
        Width = 738
        Height = 519
        Align = alClient
        FixedCols = 0
        TabOrder = 1
      end
    end
    object tsHtml: TTabSheet
      Caption = 'G'#246'rsel'
      Enabled = False
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          738
          33)
        object Label26: TLabel
          Left = 176
          Top = 3
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Fatura ETTN'
        end
        object Label27: TLabel
          Left = 16
          Top = 3
          Width = 18
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Y'#246'n'
        end
        object btnHtml: TButton
          Left = 470
          Top = 0
          Width = 98
          Height = 25
          Caption = 'HTML'
          TabOrder = 0
          OnClick = btnHtmlClick
        end
        object txtETTN: TEdit
          Left = 253
          Top = 0
          Width = 211
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object rbGiden: TRadioButton
          Left = 40
          Top = 2
          Width = 49
          Height = 17
          Caption = 'Giden'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object rbGelen: TRadioButton
          Left = 95
          Top = 2
          Width = 49
          Height = 17
          Caption = 'Gelen'
          TabOrder = 3
        end
        object btnPdf: TButton
          Left = 574
          Top = 0
          Width = 98
          Height = 25
          Caption = 'PDF'
          TabOrder = 4
          OnClick = btnPdfClick
        end
      end
      object wbHtml: TWebBrowser
        Left = 0
        Top = 33
        Width = 738
        Height = 519
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 352
        ExplicitTop = 288
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C000000464C0000A43500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object dlgSave: TSaveDialog
    FileName = 'test.xml'
    Filter = 'Xml File|*.xml'
    Left = 304
    Top = 192
  end
  object dlgOpen: TOpenDialog
    Filter = 'Xml File|*.xml'
    Left = 96
    Top = 296
  end
end
