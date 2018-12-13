unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdMessage, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdCoderHeader, sSkinManager;

type
  TForm1 = class(TForm)
    IdSMTP1: TIdSMTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdMessage1: TIdMessage;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    sSkinManager1: TsSkinManager;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure IdMessage1InitializeISO(var VTransferHeader: TTransfer;
      var VHeaderEncoding: Char; var VCharSet: String);
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
begin

//Проверяем целостность
if edit2.Text='' then
  begin
    MessageDlg('Не указан получатель!',mtError, mbOKCancel, 0);
    abort;
  end;

if combobox1.Text='' then
  begin
    MessageDlg('Не указан домен!',mtError, mbOKCancel, 0);
    abort;
  end;

if CheckBox1.Checked=true then
  begin
    edit3.Text:='';
  end;

//Подключаемся к яндексу
idsmtp1.Host:='smtp.yandex.ru';
idsmtp1.Port:=25;
idsmtp1.Username:='debug42';
idsmtp1.Password:='popidol123';

//Заполняем форму отправки
idMessage1.Body.Text:=Memo1.Text;
idMessage1.From.Text:='debug42@yandex.ru';
idMessage1.Recipients.EMailAddresses:=edit2.Text+combobox1.Text;
IdMessage1.Subject:=AnsiToUTF8(edit3.Text);

//Отправляем
idsmtp1.Connect();
if idsmtp1.Connected=true then
begin
label4.Visible:=true;
label4.Caption:='Соединение установлено';
label4.Font.Color:=clGreen;
idsmtp1.Send(idMessage1);
idsmtp1.Disconnect;
end;
end;

procedure TForm1.IdMessage1InitializeISO(var VTransferHeader: TTransfer;
  var VHeaderEncoding: Char; var VCharSet: String);
begin
VCharSet:=IdMessage1.CharSet; 
end;

end.
