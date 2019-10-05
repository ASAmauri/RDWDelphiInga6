program RDWServer;

uses
  Vcl.Forms,
  RDWServer.View.Main in '..\view\RDWServer.View.Main.pas' {Form1},
  RDWServer.Model.DataModule in '..\model\RDWServer.Model.DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
