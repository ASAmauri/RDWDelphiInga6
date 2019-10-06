unit RDWServer.Model.DataModule;

interface

uses
  System.SysUtils, System.Classes, uDWDatamodule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject, System.JSon;

type
  TDataModule1 = class(TServerMethodDataModule)
    DWServerEvents1: TDWServerEvents;
    procedure DWServerEvents1EventstestReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWServerEvents1EventstestPureJsonReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWServerEvents1EventsassynceventReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DWServerEvents1EventsassynceventReplyEvent(
  var Params: TDWParams; var Result: string);
var

  vstringtime : TStringlist;

  Json : TJsonObject;

begin

    vstringtime := TStringlist.Create;

    Json := TJSONObject.create;

    try
        JSon.AddPair('Evento','6 Delphi Inga');
        JSon.AddPair('Local','Sabium Sistemas');
        JSon.AddPair('Tema','RDW RestDataWare - Distribua-se!');
        JSon.AddPair('Palestrante','Amauri dos Santos Alves -  ASA!');

        vstringtime.Add(Json.ToJSON);

        vstringtime.SaveToFile(ExtractFilePath(Paramstr(0)) + 'RDWServer_assyncJson.txt');

    finally

        FreeAndNil(Json);
        FreeAndNil(vstringtime);

    end;

end;

procedure TDataModule1.DWServerEvents1EventstestPureJsonReplyEvent(
  var Params: TDWParams; var Result: string);
var

  Json : TJsonObject;

begin

   Json := TJSONObject.create;
   try
      JSon.AddPair('Evento','6 Delphi Inga');
      JSon.AddPair('Local','Sabium Sistemas');
      JSon.AddPair('Tema','RDW RestDataWare - Distribua-se!');
      JSon.AddPair('Palestrante','Amauri dos Santos Alves -  ASA!');
      Result := Json.ToJSON;
   finally
     FreeAndNil(Json);
   end;

end;

procedure TDataModule1.DWServerEvents1EventstestReplyEvent(
  var Params: TDWParams; var Result: string);
begin

  Params.ItemsString['result'].AsString := 'RDW no 6� Delphi Ing� - Delphi! by ASA!'

end;

end.
