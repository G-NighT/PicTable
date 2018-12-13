unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure OKButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;
  tagart:boolean;

implementation

uses Size;

{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
AboutBox.Close;
end;

procedure TAboutBox.Button2Click(Sender: TObject);
begin
case tagart of
  false:  begin Comments.Visible:=true;
               tagart:=true;
         end;
  true: begin Comments.Visible:=false;
               tagart:=false;
         end;
end;
end;

procedure TAboutBox.Button1Click(Sender: TObject);
begin
Email.showmodal;
end;

end.
 
