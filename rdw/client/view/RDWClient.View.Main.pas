unit RDWClient.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uDWJSONObject,
  uDWConstsData,
  Vcl.StdCtrls, uRESTDWServerEvents, uDWAbout, uRESTDWBase, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RESTClientPooler1: TRESTClientPooler;
    DWClientEvents1: TDWClientEvents;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var

    vErrorMessage : String;

    dwParams      : TdwParams;

begin

    dwParams      := Nil;

    DWClientEvents1.SendEvent('assyncevent', dwParams, vErrorMessage, sePOST, True);

    if vErrorMessage = '' then

        Showmessage('Assync Event Executed...')
    else

        Showmessage(vErrorMessage);
end;

end.
