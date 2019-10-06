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

1.3 - DataModule

1.3.1 - TServerMethodDataModule

1.3.2 - Uses uDWDataModule;

1.3.4 - Button.OnClick -> RESTServicePooler.ServerMethodClass := TDataModule1;

1.4 - TDWServerEvents

1.4.1 - Criar evento : test

1.4.1.1 - Criar parametro : result

1.4.1.2 - no evento test, em OnReplay :	Params.Items['result'].AsString := 'RDW no 6 Delphi Inga'
			
			
https://documenter.getpostman.com/view/632510/SVtR3r5y
