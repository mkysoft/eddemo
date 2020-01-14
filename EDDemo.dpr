program EDDemo;

uses
  Vcl.Forms,
  Test in 'Test.pas' {frmTest},
  siniflar in 'siniflar.pas',
  ED in 'ED.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTest, frmTest);
  Application.Run;
end.
