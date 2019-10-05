program RDWClient;

uses
  Vcl.Forms,
  RDWClient.View.Main in '..\view\RDWClient.View.Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
