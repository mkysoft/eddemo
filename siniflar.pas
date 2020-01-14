unit siniflar;

interface

type

  TDurum = (Hatali, Basarili, Isleniyor);
  TYon = (GIDEN, GELEN);
  TBelge = (FATURA, ZARF, CEVAP, YANIT);

  TSenaryo    = (TEMELFATURA, TICARIFATURA, EARSIVFATURA, IHRACAT);
  TTip        = (SATIS, IADE, ISTISNA);

  TMuhatap = class
     private
     public
      public VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres: string;

      constructor Yarat(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres: String);
  end;

  TVergi = class
     private
     public
      public Tevkifat: Boolean;
      public Kodu, Adi: string;
      public Matrah, Oran, Tutar: Double;

      constructor Yarat(Kodu, Adi: String; Matrah, Oran, Tutar: Double; Tevkifat: Boolean = false);
  end;

  TIskonto = class
     private
     public
      public Matrah, Oran, Tutar: Double;

      constructor Yarat(Matrah, Oran, Tutar: Double);
  end;

  TKalem = class
     private
     public
      public Kodu, Adi, OlcuBirimi: String;
      public Miktar, BirimFiyat, Tutar: Double;
      public Iskonto: TIskonto;
      public Vergiler: TArray<TVergi>;

      constructor Yarat(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, Tutar: Double);
  end;

implementation

constructor TMuhatap.Yarat(VKN, Adi, Soyadi, VergiDairesi, Il, Ilce, UlkeKodu, UlkeAdi, Adres: String);
begin
  Self.VKN := VKN;
  Self.Adi := Adi;
  Self.Soyadi := Soyadi;
  Self.VergiDairesi := VergiDairesi;
  Self.Il := Il;
  Self.Ilce := Ilce;
  Self.UlkeKodu := UlkeKodu;
  Self.UlkeAdi := UlkeAdi;
  Self.Adres := Adres;
end;



constructor TVergi.Yarat(Kodu, Adi: String; Matrah, Oran, Tutar: Double; Tevkifat: Boolean = false);
begin
  Self.Tevkifat := Tevkifat;
  Self.Kodu := Kodu;
  Self.Adi := Adi;
  Self.Matrah := Matrah;
  Self.Oran := Oran;
  Self.Tutar := Tutar;
end;

constructor TIskonto.Yarat(Matrah, Oran, Tutar: Double);
begin
  Self.Matrah := Matrah;
  Self.Oran := Oran;
  Self.Tutar := Tutar;
end;

constructor TKalem.Yarat(Kodu, Adi, OlcuBirimi: String; Miktar, BirimFiyat, Tutar: Double);
begin
  Self.Kodu := Kodu;
  Self.Adi := Adi;
  Self.OlcuBirimi := OlcuBirimi;
  Self.Miktar := Miktar;
  Self.BirimFiyat := BirimFiyat;
  Self.Tutar := Tutar;
  SetLength(Self.Vergiler, 0);
end;

end.
