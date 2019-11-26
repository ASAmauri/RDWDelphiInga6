# RDWDelphiInga6
RDW 6º Delphi Ingá -  Fonte da Palestra sobre RDW e eventos assíncronos

RDWServer - Passo a passo para se criar o servidor de eventos:

1 - Criar um Projeto VCL

1.1 - No formulário principal colocar um RESTServicePooler

1.1.1 - Configurar a propriedade "PORT"

1.1.2 - Configurar a propriedade "ServerParams", User e Password 

1.2 - No formulario principal colocar um "Button" e mudar o Caption para "Start"

1.2.1 - No evento OnClick do "Button", escrever RESTServicePooler.ServerMethodClass := nil;

1.2.2 - No evento OnClick do "Button", escrever RESTServicePooler.Active := not RESTServicePooler.Active;

1.2.3 - No evento Onclick do "Button", escrever   if RESTServicePooler1.Active then
    Button1.Caption := 'Stop'
  else
    Button1.Caption := 'Start';

1.3 - DataModule - criar um novo DataModule

1.3.1 - Uses uDWDataModule;

1.3.2 - Mudar no Type de Class(TDataModule) para Class(TServerMethodDataModule)

1.3.4 - No formulario principal no Button.OnClick mudar de nil para RESTServicePooler.ServerMethodClass := TDataModule1;

1.4 - TDWServerEvents

1.4.1 - Criar o evento "test"

1.4.1.1 - no evento "test", criar o parametro "result" do tipo out

1.4.1.2 - no evento "test", no OnReplayEvent, escrever Params.Items['result'].AsString := 'RDW no 6 Delphi Inga'
			


POSTMAN 

Para proceder os testes é possível utilizar o POSTMAN.

Podes acessar um exemplo de test no link abaixo:

https://documenter.getpostman.com/view/632510/SVtR3r5y



RDWClient Events - Passo a passo para se criar o servidor de eventos:

Os fontes são muito simples e estão funcionando. :-)))

Em breve o passo a passo...
