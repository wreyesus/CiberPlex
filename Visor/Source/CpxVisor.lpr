program CpxVisor;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, FormPrincipal, FormPant, FormLog, FormPantCli, ogMotGraf2d,
  ogDefObjGraf, CPServidorCab, CibTramas, CibFacturables, FormFijTiempo, FormBoleta;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPant, frmPant);
  Application.CreateForm(TfrmLog, frmLog);
  Application.CreateForm(TfrmPantCli, frmPantCli);
  Application.CreateForm(TfrmFijTiempo, frmFijTiempo);
  Application.CreateForm(TfrmBoleta, frmBoleta);
  Application.Run;
end.

