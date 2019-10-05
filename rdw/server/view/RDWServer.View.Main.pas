unit RDWServer.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDWAbout, uRESTDWBase,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RESTServicePooler1: TRESTServicePooler;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  RDWServer.Model.DataModule;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  RESTServicePooler1.ServerMethodClass := TDataModule1;

  RESTServicePooler1.Active := not RESTServicePooler1.Active;

  if RESTServicePooler1.Active then
    Button1.Caption := 'Stop'
  else
    Button1.Caption := 'Start';

end;

end.
