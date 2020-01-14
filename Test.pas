unit Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, StrUtils, System.Generics.Collections,
  Vcl.OleCtrls, SHDocVw, siniflar;

type
  TfrmTest = class(TForm)
    btnKaydet: TButton;
    dlgSave: TSaveDialog;
    dlgOpen: TOpenDialog;
    btnAc: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    txtDuzenleyenVKN: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    txtAliciVKN: TEdit;
    txtDuzenleyenAdi: TEdit;
    Label5: TLabel;
    txtDuzenleyenSoyadi: TEdit;
    Label6: TLabel;
    txtAliciAdi: TEdit;
    txtAliciSoyadi: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    dtpFaturaTarihi: TDateTimePicker;
    Label1: TLabel;
    txtFaturaNo: TMaskEdit;
    GroupBox5: TGroupBox;
    grdKalemler: TStringGrid;
    cmbOlcuBirimi: TComboBox;
    memNotlar: TMemo;
    Label9: TLabel;
    txtDuzenleyenVD: TEdit;
    txtAliciVD: TEdit;
    Label10: TLabel;
    txtDuzenleyenIl: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    txtDuzenleyenIlce: TEdit;
    txtDuzenleyenAdres: TEdit;
    Label13: TLabel;
    cmbDuzenleyenUlke: TComboBox;
    Label14: TLabel;
    txtAliciIl: TEdit;
    txtAliciIlce: TEdit;
    cmbAliciUlke: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    txtAliciAdres: TEdit;
    btnGonder: TButton;
    Label17: TLabel;
    txtDuzenleyenEtiket: TEdit;
    txtAliciEtiket: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    txtUsername: TEdit;
    txtPassword: TEdit;
    Label20: TLabel;
    cmbSenaryo: TComboBox;
    Label21: TLabel;
    cmbTip: TComboBox;
    pcMain: TPageControl;
    tsAyar: TTabSheet;
    Label22: TLabel;
    tsFatura: TTabSheet;
    tsDurum: TTabSheet;
    txtZarfETTN: TEdit;
    Label23: TLabel;
    btnSorgula: TButton;
    Label24: TLabel;
    txtVKN: TEdit;
    Label25: TLabel;
    txtEtiket: TEdit;
    tsMukellef: TTabSheet;
    btnMukellef: TButton;
    Panel3: TPanel;
    grdMukellefler: TStringGrid;
    tsHtml: TTabSheet;
    Panel4: TPanel;
    btnHtml: TButton;
    txtETTN: TEdit;
    wbHtml: TWebBrowser;
    rbGiden: TRadioButton;
    rbGelen: TRadioButton;
    Label26: TLabel;
    Label27: TLabel;
    tsBelgeler: TTabSheet;
    Panel5: TPanel;
    btnBelgeler: TButton;
    grdFaturalar: TStringGrid;
    Label28: TLabel;
    rbFaturalarGiden: TRadioButton;
    rbFaturalarGelen: TRadioButton;
    dtpBaslangic: TDateTimePicker;
    dtpBitis: TDateTimePicker;
    Label29: TLabel;
    cmbBelge: TComboBox;
    Label30: TLabel;
    rbForiba: TRadioButton;
    rbKolaySoft: TRadioButton;
    Label31: TLabel;
    cmbOTV: TComboBox;
    cmbTevkifat: TComboBox;
    txtFaturaETTN: TEdit;
    Label32: TLabel;
    btnPdf: TButton;
    procedure btnKaydetClick(Sender: TObject);
    procedure btnAcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdKalemlerSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cmbOlcuBirimiExit(Sender: TObject);
    procedure cmbOlcuBirimiChange(Sender: TObject);
    procedure btnGonderClick(Sender: TObject);
    procedure btnSorgulaClick(Sender: TObject);
    procedure tsFaturaShow(Sender: TObject);
    procedure btnMukellefClick(Sender: TObject);
    procedure tsMukellefShow(Sender: TObject);
    procedure btnHtmlClick(Sender: TObject);
    procedure btnBelgelerClick(Sender: TObject);
    procedure tsBelgelerShow(Sender: TObject);
    procedure dtpBitisChange(Sender: TObject);
    procedure dtpBaslangicChange(Sender: TObject);
    procedure cmbOTVExit(Sender: TObject);
    procedure cmbOTVChange(Sender: TObject);
    procedure cmbTevkifatChange(Sender: TObject);
    procedure cmbTevkifatExit(Sender: TObject);
    procedure btnPdfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTest: TfrmTest;

implementation

{$R *.dfm}

uses
  System.TypInfo,
  System.IOUtils,
  araclar,
  ED;

function FormToDll(FaturaNo: String): TBytes;
var
  i: Integer;
  Miktar, BirimFiyat, Matrah, Tutar: Double;
  IskontoMatrah, IskontoOran, IskontoTutar: Double;
  KDVMatrah, KDVOran, KDVTutar: Double;
  OTVMatrah, OTVOran, OTVTutar: Double;
  TevkifatMatrah, TevkifatOran, TevkifatTutar: Double;
  UlkeAdi, UlkeKodu: String;
  SatirToplami, VergiDahil, VergiHaric, Odenecek: Double;
  Kalem: TKalem;
  Vergi: TVergi;
  Musteri, Alici: TMuhatap;
  Profil: TSenaryo;
  Tipi: TTip;
begin
  with frmTest do
  begin
    Profil := TSenaryo(GetEnumValue(TypeInfo(TSenaryo), cmbSenaryo.Text));
    Tipi := TTip(GetEnumValue(TypeInfo(TTip), cmbTip.Text));
    ED.Baslik(Profil, Tipi, FaturaNo, 'TRY', dtpFaturaTarihi.Date);
    ED.Notlar(frmTest.memNotlar.Lines);
    ED.Gorsel(FileToBase64('general.xslt'));
    //Tedarikçi
    UlkeAdi := Trim(SplitString(cmbDuzenleyenUlke.Text, '|')[1]);
    UlkeKodu := Trim(SplitString(cmbDuzenleyenUlke.Text, '|')[0]);
    ED.Tedarikci(TMuhatap.Yarat(txtDuzenleyenVKN.Text, txtDuzenleyenAdi.Text, txtDuzenleyenSoyadi.Text, txtDuzenleyenVD.Text, txtDuzenleyenIl.Text, txtDuzenleyenIlce.Text, UlkeKodu, UlkeAdi, txtDuzenleyenAdres.Text));

    //Müşteri
    UlkeAdi := Trim(SplitString(cmbAliciUlke.Text, '|')[1]);
    UlkeKodu := Trim(SplitString(cmbAliciUlke.Text, '|')[0]);
    Musteri := TMuhatap.Yarat(txtAliciVKN.Text, txtAliciAdi.Text, frmTest.txtAliciSoyadi.Text, frmTest.txtAliciVD.Text, txtAliciIl.Text, txtAliciIlce.Text, UlkeKodu, UlkeAdi, txtAliciAdres.Text);
    if Profil = TSenaryo.IHRACAT then
    begin
      Alici := Musteri;
      ED.Alici(Alici);
      Musteri := ED.GTB;
    end;
    ED.Musteri(Musteri);
    with frmTest.grdKalemler do
      for i := 1 to RowCount do
        if Trim(Cells[0,i]) <> '' then
        begin
          Miktar := StrToFloat(Cells[2,i]);
          BirimFiyat := StrToFloat(Cells[4,i]);
          IskontoOran := StrToFloat(Cells[5,i]) / 100;
          IskontoMatrah := BirimFiyat * Miktar;
          IskontoTutar := IskontoMatrah * IskontoOran;
          if Cells[6,i] <> EmptyStr then
          begin
            OTVOran := StrToFloat(Cells[7,i]);
            OTVMatrah := Miktar * BirimFiyat - IskontoTutar;
            OTVTutar := OTVMatrah * OTVOran / 100;
          end;
          KDVOran := StrToFloat(Cells[8,i]);
          KDVMatrah := Miktar * BirimFiyat - IskontoTutar + OTVTutar;
          KDVTutar := KDVMatrah * KDVOran / 100;
          if Cells[9,i] <> EmptyStr then
          begin
            TevkifatOran := StrToFloat(Cells[10,i]);
            TevkifatMatrah := KDVTutar;
            TevkifatTutar := TevkifatMatrah * TevkifatOran / 100;
          end;

          Tutar :=  KDVMatrah + OTVTutar + KDVTutar;
          Kalem := TKalem.Yarat(Cells[0,i], Cells[1,i], Trim(SplitString(Cells[3,i], '|')[0]), Miktar, BirimFiyat, Tutar);
          Kalem.Iskonto := TIskonto.Yarat(IskontoMatrah, IskontoOran, IskontoTutar);
          //ÖTV
          if Cells[6,i] <> EmptyStr then
          begin
            Vergi := TVergi.Yarat(Trim(SplitString(Cells[6,i], '|')[0]), Trim(SplitString(Cells[6,i], '|')[1]), OTVMatrah, OTVOran, OTVTutar);
            Insert(Vergi, Kalem.Vergiler, High(Kalem.Vergiler));
          end;
          //KDV
          Vergi := TVergi.Yarat('0015', 'Gerçek Usulde Katma Değer Vergisi', KDVMatrah, KDVOran, KDVTutar);
          Insert(Vergi, Kalem.Vergiler, High(Kalem.Vergiler));
          //Tevkifat
          if Cells[9,i] <> EmptyStr then
          begin
            Vergi := TVergi.Yarat(Trim(SplitString(Cells[9,i], '|')[0]), Trim(SplitString(Cells[9,i], '|')[1]), TevkifatMatrah, TevkifatOran, TevkifatTutar, true);
            Insert(Vergi, Kalem.Vergiler, High(Kalem.Vergiler));
          end;

          ED.KalemEkle(Kalem);
          SatirToplami := SatirToplami + KDVMatrah;
          VergiHaric := VergiHaric + KDVMatrah;
          VergiDahil := VergiDahil + Tutar;
          Odenecek := Odenecek + Tutar;
        end;
    ED.DipToplam(SatirToplami, VergiDahil, VergiHaric, Odenecek);
  end;
  FormToDll := ED.GetirByteArray;
end;

procedure TfrmTest.btnAcClick(Sender: TObject);
begin
  if dlgOpen.Execute then
  begin
    //
  end;
end;

procedure TfrmTest.btnBelgelerClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.btnGonderClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.btnHtmlClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.btnKaydetClick(Sender: TObject);
var
  UblTr: TBytes;
  Dosya: TFileStream;
begin
  if dlgSave.Execute then
  begin
    UblTr := FormToDll(txtFaturaNo.Text);
    Dosya := TFileStream.Create(dlgSave.FileName, fmCreate);
    Dosya.WriteBuffer(Pointer(UblTr)^, Length(UblTr));
    Dosya.Free;
  end;
end;

procedure TfrmTest.btnMukellefClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.btnPdfClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.btnSorgulaClick(Sender: TObject);
begin
  //
end;

procedure TfrmTest.cmbOlcuBirimiChange(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbOlcuBirimi.Items[cmbOlcuBirimi.ItemIndex];
  cmbOlcuBirimi.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.cmbOlcuBirimiExit(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbOlcuBirimi.Items[cmbOlcuBirimi.ItemIndex];
  cmbOlcuBirimi.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.cmbOTVChange(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbOTV.Items[cmbOTV.ItemIndex];
  cmbOTV.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.cmbOTVExit(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbOTV.Items[cmbOTV.ItemIndex];
  cmbOTV.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.cmbTevkifatChange(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbTevkifat.Items[cmbTevkifat.ItemIndex];
  cmbTevkifat.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.cmbTevkifatExit(Sender: TObject);
begin
  grdKalemler.Cells[grdKalemler.Col, grdKalemler.Row] := cmbTevkifat.Items[cmbTevkifat.ItemIndex];
  cmbTevkifat.Visible := False;
  grdKalemler.SetFocus;
end;

procedure TfrmTest.dtpBaslangicChange(Sender: TObject);
begin
  dtpBitis.MinDate := dtpBaslangic.DateTime;
end;

procedure TfrmTest.dtpBitisChange(Sender: TObject);
begin
  dtpBaslangic.MaxDate := dtpBitis.DateTime;
end;

procedure TfrmTest.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  cmbOlcuBirimi.Visible := False;
  cmbOTV.Visible := False;
  cmbTevkifat.Visible := False;
  grdKalemler.DefaultRowHeight := cmbOlcuBirimi.Height;
  grdKalemler.ColCount := 11;
  grdKalemler.Cells[0, 0] := 'Mlz./Hiz. No';
  grdKalemler.Cells[1, 0] := 'Mlz./Hiz. Adı';
  grdKalemler.Cells[2, 0] := 'Miktar';
  grdKalemler.Cells[3, 0] := 'Ölç.Brm.';
  grdKalemler.Cells[4, 0] := 'Brm.Fyt.';
  grdKalemler.Cells[5, 0] := 'İsk.Orn.';
  grdKalemler.Cells[6, 0] := 'Ötv.Tür.';
  grdKalemler.Cells[7, 0] := 'Ötv.Orn.';
  grdKalemler.Cells[8, 0] := 'Kdv.Orn.';
  grdKalemler.Cells[9, 0] := 'Tvkf.Tür.';
  grdKalemler.Cells[10, 0] := 'Tvkf.Orn.';
  //örnek
  grdKalemler.Cells[0, 1] := '001';
  grdKalemler.Cells[1, 1] := 'Örnek Malzeme';
  grdKalemler.Cells[2, 1] := '5';
  grdKalemler.Cells[3, 1] := 'C62 | Adet';
  grdKalemler.Cells[4, 1] := '10';
  grdKalemler.Cells[5, 1] := '0';
  grdKalemler.Cells[6, 1] := '0071 | ÖTV 1.LİSTE';
  grdKalemler.Cells[7, 1] := '10';
  grdKalemler.Cells[8, 1] := '18';
  grdKalemler.Cells[0, 2] := '002';
  grdKalemler.Cells[1, 2] := 'Örnek Malzeme';
  grdKalemler.Cells[2, 2] := '3';
  grdKalemler.Cells[3, 2] := 'C62 | Adet';
  grdKalemler.Cells[4, 2] := '15';
  grdKalemler.Cells[5, 2] := '5';
  grdKalemler.Cells[8, 2] := '8';

  //Senaryo
  cmbSenaryo.Items := EnumValues(TypeInfo(TSenaryo));
  cmbSenaryo.ItemIndex := 0;

  //Tip
  cmbTip.Items := EnumValues(TypeInfo(TTip));
  cmbTip.ItemIndex := 0;

  //Belge
  cmbBelge.Items := EnumValues(TypeInfo(TBelge));
  cmbBelge.ItemIndex := 0;

end;

procedure TfrmTest.grdKalemlerSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  R: TRect;
begin
  if (ARow > 0) then
  begin
    R := grdKalemler.CellRect(ACol, ARow);
    R.Left := R.Left + grdKalemler.Left;
    R.Right := R.Right + grdKalemler.Left;
    R.Top := R.Top + grdKalemler.Top;
    R.Bottom := R.Bottom + grdKalemler.Top;
    if (ACol = 3) then
    begin
      cmbOlcuBirimi.Left := R.Left + 1;
      cmbOlcuBirimi.Top := R.Top + 1;
//      cmbOlcuBirimi.Width := (R.Right + 1) - R.Left;
      cmbOlcuBirimi.Height := (R.Bottom + 1) - R.Top;
      cmbOlcuBirimi.Visible := True;
      cmbOlcuBirimi.SetFocus;
    end
    else if (ACol = 6) then
    begin
      cmbOTV.Left := R.Left + 1;
      cmbOTV.Top := R.Top + 1;
//      cmbOTV.Width := (R.Right + 1) - R.Left;
      cmbOTV.Height := (R.Bottom + 1) - R.Top;
      cmbOTV.Visible := True;
      cmbOTV.SetFocus;
    end
    else if (ACol = 9) then
    begin
      cmbTevkifat.Left := R.Left + 1;
      cmbTevkifat.Top := R.Top + 1;
//      cmbTevkifat.Width := (R.Right + 1) - R.Left;
      cmbTevkifat.Height := (R.Bottom + 1) - R.Top;
      cmbTevkifat.Visible := True;
      cmbTevkifat.SetFocus;
    end
  end
  else
    CanSelect := True;
end;

procedure TfrmTest.tsBelgelerShow(Sender: TObject);
begin
  grdFaturalar.ColCount := 8;
  grdFaturalar.Cells[0, 0] := 'ETTN';
  grdFaturalar.Cells[1, 0] := 'Etiket';
  grdFaturalar.Cells[2, 0] := 'VKN';
  grdFaturalar.Cells[3, 0] := 'ZarfTipi';
  grdFaturalar.Cells[4, 0] := 'ZarfETTN';
  grdFaturalar.Cells[5, 0] := 'FaturaNo';
  grdFaturalar.Cells[6, 0] := 'ERPNo';
  grdFaturalar.Cells[7, 0] := 'Oluşturma';
  grdFaturalar.ColWidths[7] := 110;

end;

procedure TfrmTest.tsFaturaShow(Sender: TObject);
begin
  txtDuzenleyenVKN.Text := txtVKN.Text;
  txtDuzenleyenEtiket.Text := txtEtiket.Text;
end;

procedure TfrmTest.tsMukellefShow(Sender: TObject);
begin
  grdMukellefler.ColCount := 6;
  grdMukellefler.Cells[0, 0] := 'VKN';
  grdMukellefler.Cells[1, 0] := 'Etiket';
  grdMukellefler.Cells[2, 0] := 'Unvan';
  grdMukellefler.ColWidths[2] := 150;
  grdMukellefler.Cells[3, 0] := 'Tip';
  grdMukellefler.Cells[4, 0] := 'Oluşturma';
  grdMukellefler.ColWidths[4] := 110;
  grdMukellefler.Cells[5, 0] := 'İlk Giriş';
  grdMukellefler.ColWidths[5] := 110;
end;

end.
