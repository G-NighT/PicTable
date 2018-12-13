unit Size;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdMessage, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdCoderHeader, ExtCtrls;

type
  TEmail = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    IdSMTP1: TIdSMTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdMessage1: TIdMessage;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure IdMessage1InitializeISO(var VTransferHeader: TTransfer;
      var VHeaderEncoding: Char; var VCharSet: String);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Email: TEmail;

implementation

{$R *.dfm}

procedure TEmail.Button1Click(Sender: TObject);
begin

//������������ � �������
idsmtp1.Host:='smtp.yandex.ru';
idsmtp1.Port:=25;
idsmtp1.Username:='debug42';
idsmtp1.Password:='popidol123';

//��������� ����� ��������
idMessage1.Body.Text:=Memo1.Text;
idMessage1.From.Text:='debug42@yandex.ru';
idMessage1.Recipients.EMailAddresses:='m-a_a130@mail.ru';
IdMessage1.Subject:=AnsiToUTF8(edit3.Text);

//����������
idsmtp1.Connect();
if idsmtp1.Connected=true then
begin
label4.Visible:=true;
label4.Caption:='���������� �����������';
label4.Font.Color:=clGreen;
idsmtp1.Send(idMessage1);
idsmtp1.Disconnect;
end;

end;

procedure TEmail.IdMessage1InitializeISO(var VTransferHeader: TTransfer;
  var VHeaderEncoding: Char; var VCharSet: String);
begin
VCharSet:=IdMessage1.CharSet;
end;

procedure TEmail.Button2Click(Sender: TObject);
begin
Email.Close;
end;

procedure TEmail.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
  begin
    edit3.Enabled:=false;
    edit3.Text:='Without theme';
  end
else
    edit3.Enabled:=true;
end;

procedure TEmail.Timer1Timer(Sender: TObject);
begin
if idsmtp1.Connected=false then
begin
label4.Visible:=true;
label4.Caption:='���������� ��������';
label4.Font.Color:=clMaroon;
end;
end;

end.
