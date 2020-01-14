unit araclar;

interface

uses
  System.SysUtils, System.Types, System.TypInfo, System.Classes, System.Zip;

  function TBytes2TByteDynArray(Bytes: TBytes): TByteDynArray;
  function TByteDynArray2TBytes(Bytes: TByteDynArray): TBytes;
  function EnumValues(const ATypeInfo: PTypeInfo): TStrings;
  function EnumValue(const ATypeInfo: PTypeInfo; Value: Integer): string;
  function FileToBase64(const AFileName: string): String;
  function Sikistir(Stream: TStream; FileName: string): TBytes;
  function Base64toBytes(const Base64: string): TBytes;

implementation

uses
  System.NetEncoding;

function TBytes2TByteDynArray(Bytes: TBytes): TByteDynArray;
var
  ByteDynArray: TByteDynArray;
begin
  SetLength(ByteDynArray, Length(Bytes));
  Move(Pointer(Bytes)^, Pointer(ByteDynArray)^, Length(Bytes));
  TBytes2TByteDynArray := ByteDynArray;
end;

function TByteDynArray2TBytes(Bytes: TByteDynArray): TBytes;
//var
//  Bytes: TByteDynArray;
begin
  SetLength(Result, Length(Bytes));
  Move(Pointer(Bytes)^, Pointer(Result)^, Length(Bytes));
//  TBytes2TByteDynArray := ByteDynArray;
end;


function EnumValues(const ATypeInfo: PTypeInfo): TStrings;
var
  i: Integer;
begin
  Result := TStringList.Create;
  for i := GetTypeData(ATypeInfo).MinValue to GetTypeData(ATypeInfo).MaxValue do
  begin
    Result.Add(GetEnumName(ATypeInfo, i));
  end;
end;

function EnumValue(const ATypeInfo: PTypeInfo; Value: Integer): string;
begin
  EnumValue := GetEnumName(ATypeInfo, Ord(Value));
end;

function FileToBase64(const AFileName: string): string;
var
  FileStream: TStream;
  Base64Stream: TStringStream;
begin
  FileStream := TFileStream.Create(AFileName, fmOpenRead);
  Base64Stream := TStringStream.Create;
  TBase64Encoding.Base64.Encode(FileStream, Base64Stream);
  Result := Base64Stream.DataString;
  FileStream.Free;
  Base64Stream.Free;
end;

function Base64toBytes(const Base64: string): TBytes;
begin
  Base64toBytes := TBase64Encoding.Base64.DecodeStringToBytes(Base64);
end;

function Sikistir(Stream: TStream; FileName: string): TBytes;
var
//  LZip: TZCompressionStream;
  ZipStream: TStream;
  ZipFile: TZipFile;
begin
  ZipFile := TZipFile.Create();
  ZipStream := TMemoryStream.Create;
  ZipFile.Open(ZipStream, TZipMode.zmWrite);
  Stream.Seek(0, 0);
  ZipFile.Add(Stream, FileName, TZipCompression.zcDeflate);
  ZipFile.Close;
  ZipStream.Seek(0, 0);
  SetLength(Result, ZipStream.Size);
  ZipStream.ReadBuffer(Result, ZipStream.Size);
  FreeAndNil(ZipStream);
end;

end.
