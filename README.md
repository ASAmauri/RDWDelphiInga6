# RDWDelphiInga6
RDW 6º Delphi Ingá -  Fonte da Palestra sobre RDW e eventos assíncronos

Steps:

1 - Criar um Projeto VCL

1.1 - RESTServicePooler

1.1.1 - PORT

1.1.2 - ServerParams

1.2 - Button : Start / Stop

1.2.1 - RESTServicePooler.ServerMethodClass := nil;

1.2.2 - Active

1.2.3 - Button.Caption

1.3 - DataModule
1.3.1 - TServerMethodDataModule
1.3.2 - Uses
1.3.3 -		uDWDataModule;
1.3.4 - Button.OnClick -> RESTServicePooler.ServerMethodClass := TDataModule1;

1.4 - TDWServerEvents
1.4.1 - Criar evento : test
1.4.1.1 - Criar parametro : result
1.4.1.2 - no evento test, em OnReplay :
			Params.Items['result'].AsString := 'RDW no 6 Delphi Inga'
			
			
https://documenter.getpostman.com/view/632510/SVtR3r5y
