unit ED;

interface

uses
  System.Classes,
  System.SysUtils,
  siniflar;

function Lisans(Anhtar: string): Boolean; stdcall; external 'ED.dll';
function Baslik(Senaryo: TSenaryo; Tipi: TTip; FaturaNo, ParaBirimi: String; FaturaTarihi: TDate): Boolean; stdcall; external 'ED.dll';
function Notlar(Notlar: TStrings): Boolean; stdcall; external 'ED.dll';
function Gorsel(Xslt: string): Boolean; stdcall;  external 'ED.dll';
function Tedarikci(Muhatap: TMuhatap): Boolean; stdcall; external 'ED.dll';
function Musteri(Muhatap: TMuhatap): Boolean; stdcall; external 'ED.dll';
function Alici(Muhatap: TMuhatap): Boolean; stdcall; external 'ED.dll';
function KalemEkle(Kalem: TKalem): Boolean; stdcall; external 'ED.dll';
function DipToplam(SatirToplami, VergiDahil, VergiHaric, Odenecek: Double): Boolean; stdcall; external 'ED.dll';
function GTB: TMuhatap; stdcall; external 'ED.dll';
function GetirByteArray: TBytes; stdcall; external 'ED.dll';
function GetirString: UTF8String; stdcall; external 'ED.dll';

implementation

end.
