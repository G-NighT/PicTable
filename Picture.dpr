program Picture;

uses
  Forms,
  GeomPicture in 'GeomPicture.pas' {Table},
  About in 'About.pas' {AboutBox},
  Size in 'Size.pas' {Email};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTable, Table);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TEmail, Email);
  Application.Run;
end.
