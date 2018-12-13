unit GeomPicture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls;

type
  TTable = class(TForm)
    MainMenu1: TMainMenu;
    app: TMenuItem;
    aboutprog: TMenuItem;
    exit: TMenuItem;
    color: TMenuItem;
    inpic: TMenuItem;
    outpic: TMenuItem;
    rand1: TMenuItem;
    set1: TMenuItem;
    set2: TMenuItem;
    rand2: TMenuItem;
    geomfig: TMenuItem;
    circles: TMenuItem;
    kvadrat: TMenuItem;
    ellipsed: TMenuItem;
    pryamoygl: TMenuItem;
    lined: TMenuItem;
    rand3: TMenuItem;
    set3: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    ColorDialog1: TColorDialog;
    Edit1: TEdit;
    UpDown1: TUpDown;
    procedure aboutprogClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
    procedure circlesClick(Sender: TObject);
    procedure ellipsedClick(Sender: TObject);
    procedure pryamoyglClick(Sender: TObject);
    procedure kvadratClick(Sender: TObject);
    procedure rand1Click(Sender: TObject);
    procedure rand2Click(Sender: TObject);
    procedure rand3Click(Sender: TObject);
    procedure set1Click(Sender: TObject);
    procedure set2Click(Sender: TObject);
    procedure set3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Table: TTable;

implementation

uses About;

{$R *.dfm}

procedure TTable.aboutprogClick(Sender: TObject);
begin
AboutBox.showmodal;
end;

procedure TTable.exitClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TTable.circlesClick(Sender: TObject);
begin
Shape1.Shape:=stCircle;
Shape2.Shape:=stCircle;
Shape3.Shape:=stCircle;
Shape4.Shape:=stCircle;
Shape5.Shape:=stCircle;
Shape6.Shape:=stCircle;
Shape7.Shape:=stCircle;
Shape8.Shape:=stCircle;
Shape9.Shape:=stCircle;
Shape1.Height:=65;
Shape2.Height:=65;
Shape3.Height:=65;
Shape4.Height:=65;
Shape5.Height:=65;
Shape6.Height:=65;
Shape7.Height:=65;
Shape8.Height:=65;
Shape9.Height:=65;
Shape1.Visible:=true;
Shape2.Visible:=true;
Shape3.Visible:=true;
Shape4.Visible:=true;
Shape5.Visible:=true;
Shape6.Visible:=true;
Shape7.Visible:=true;
Shape8.Visible:=true;
Shape9.Visible:=true;
color.Enabled:=true;
Edit1.Visible:=true;
UpDown1.Visible:=true;
end;

procedure TTable.ellipsedClick(Sender: TObject);
begin
Shape1.Shape:=stEllipse;
Shape2.Shape:=stEllipse;
Shape3.Shape:=stEllipse;
Shape4.Shape:=stEllipse;
Shape5.Shape:=stEllipse;
Shape6.Shape:=stEllipse;
Shape7.Shape:=stEllipse;
Shape8.Shape:=stEllipse;
Shape9.Shape:=stEllipse;
Shape1.Height:=80;
Shape2.Height:=80;
Shape3.Height:=80;
Shape4.Height:=80;
Shape5.Height:=80;
Shape6.Height:=80;
Shape7.Height:=80;
Shape8.Height:=80;
Shape9.Height:=80;
Shape1.Visible:=true;
Shape2.Visible:=true;
Shape3.Visible:=true;
Shape4.Visible:=true;
Shape5.Visible:=true;
Shape6.Visible:=true;
Shape7.Visible:=true;
Shape8.Visible:=true;
Shape9.Visible:=true;
color.Enabled:=true;
Edit1.Visible:=true;
UpDown1.Visible:=true;
end;

procedure TTable.pryamoyglClick(Sender: TObject);
begin
Shape1.Shape:=stRectangle;
Shape2.Shape:=stRectangle;
Shape3.Shape:=stRectangle;
Shape4.Shape:=stRectangle;
Shape5.Shape:=stRectangle;
Shape6.Shape:=stRectangle;
Shape7.Shape:=stRectangle;
Shape8.Shape:=stRectangle;
Shape9.Shape:=stRectangle;
Shape1.Height:=80;
Shape2.Height:=80;
Shape3.Height:=80;
Shape4.Height:=80;
Shape5.Height:=80;
Shape6.Height:=80;
Shape7.Height:=80;
Shape8.Height:=80;
Shape9.Height:=80;
Shape1.Visible:=true;
Shape2.Visible:=true;
Shape3.Visible:=true;
Shape4.Visible:=true;
Shape5.Visible:=true;
Shape6.Visible:=true;
Shape7.Visible:=true;
Shape8.Visible:=true;
Shape9.Visible:=true;
color.Enabled:=true;
Edit1.Visible:=true;
UpDown1.Visible:=true;
end;

procedure TTable.kvadratClick(Sender: TObject);
begin
Shape1.Shape:=stSquare;
Shape2.Shape:=stSquare;
Shape3.Shape:=stSquare;
Shape4.Shape:=stSquare;
Shape5.Shape:=stSquare;
Shape6.Shape:=stSquare;
Shape7.Shape:=stSquare;
Shape8.Shape:=stSquare;
Shape9.Shape:=stSquare;
Shape1.Visible:=true;
Shape2.Visible:=true;
Shape3.Visible:=true;
Shape4.Visible:=true;
Shape5.Visible:=true;
Shape6.Visible:=true;
Shape7.Visible:=true;
Shape8.Visible:=true;
Shape9.Visible:=true;
color.Enabled:=true;
Edit1.Visible:=true;
UpDown1.Visible:=true;
end;

procedure TTable.rand1Click(Sender: TObject);
begin
Shape1.Brush.Color:=RGB(random(255),random(255),random(255));
Shape2.Brush.Color:=RGB(random(255),random(255),random(255));
Shape3.Brush.Color:=RGB(random(255),random(255),random(255));
Shape4.Brush.Color:=RGB(random(255),random(255),random(255));
Shape5.Brush.Color:=RGB(random(255),random(255),random(255));
Shape6.Brush.Color:=RGB(random(255),random(255),random(255));
Shape7.Brush.Color:=RGB(random(255),random(255),random(255));
Shape8.Brush.Color:=RGB(random(255),random(255),random(255));
Shape9.Brush.Color:=RGB(random(255),random(255),random(255));
end;

procedure TTable.rand2Click(Sender: TObject);
{var cvet:integer;}
begin
Shape10.Brush.Color:=RGB(random(255),random(255),random(255));
{cvet:=random(17);
case cvet of
1: Shape10.Brush.Color:=clBtnFace;
2: Shape10.Brush.Color:=clBlack;
3: Shape10.Brush.Color:=clGreen;
4: Shape10.Brush.Color:=clRed;
5: Shape10.Brush.Color:=clPurple;
6: Shape10.Brush.Color:=clYellow;
7: Shape10.Brush.Color:=clLime;
8: Shape10.Brush.Color:=clBlue;
9: Shape10.Brush.Color:=clAqua;
10: Shape10.Brush.Color:=clHighlight;
11: Shape10.Brush.Color:=clGradientActiveCaption;
12: Shape10.Brush.Color:=clMaroon;
13: Shape10.Brush.Color:=clOlive;
14: Shape10.Brush.Color:=clMoneyGreen;
15: Shape10.Brush.Color:=clFuchsia;
16: Shape10.Brush.Color:=clTeal;
17: Shape10.Brush.Color:=clGray;
end;}
end;

procedure TTable.rand3Click(Sender: TObject);
begin
Shape1.Pen.Color:=RGB(random(255),random(255),random(255));
Shape2.Pen.Color:=RGB(random(255),random(255),random(255));
Shape3.Pen.Color:=RGB(random(255),random(255),random(255));
Shape4.Pen.Color:=RGB(random(255),random(255),random(255));
Shape5.Pen.Color:=RGB(random(255),random(255),random(255));
Shape6.Pen.Color:=RGB(random(255),random(255),random(255));
Shape7.Pen.Color:=RGB(random(255),random(255),random(255));
Shape8.Pen.Color:=RGB(random(255),random(255),random(255));
Shape9.Pen.Color:=RGB(random(255),random(255),random(255));
end;

procedure TTable.set1Click(Sender: TObject);
begin
if colordialog1.Execute then
begin
Shape1.Brush.Color:=colordialog1.Color;
Shape2.Brush.Color:=colordialog1.Color;
Shape3.Brush.Color:=colordialog1.Color;
Shape4.Brush.Color:=colordialog1.Color;
Shape5.Brush.Color:=colordialog1.Color;
Shape6.Brush.Color:=colordialog1.Color;
Shape7.Brush.Color:=colordialog1.Color;
Shape8.Brush.Color:=colordialog1.Color;
Shape9.Brush.Color:=colordialog1.Color;
end;
end;

procedure TTable.set2Click(Sender: TObject);
begin
if colordialog1.Execute then
begin
Shape10.Brush.Color:=colordialog1.Color;
end;
end;

procedure TTable.set3Click(Sender: TObject);
begin
if colordialog1.Execute then
begin
Shape1.Pen.Color:=colordialog1.Color;
Shape2.Pen.Color:=colordialog1.Color;
Shape3.Pen.Color:=colordialog1.Color;
Shape4.Pen.Color:=colordialog1.Color;
Shape5.Pen.Color:=colordialog1.Color;
Shape6.Pen.Color:=colordialog1.Color;
Shape7.Pen.Color:=colordialog1.Color;
Shape8.Pen.Color:=colordialog1.Color;
Shape9.Pen.Color:=colordialog1.Color;
end;
end;

procedure TTable.Edit1Change(Sender: TObject);
begin
Shape1.Pen.Width:=strtoint(edit1.Text);
Shape2.Pen.Width:=strtoint(edit1.Text);
Shape3.Pen.Width:=strtoint(edit1.Text);
Shape4.Pen.Width:=strtoint(edit1.Text);
Shape5.Pen.Width:=strtoint(edit1.Text);
Shape6.Pen.Width:=strtoint(edit1.Text);
Shape7.Pen.Width:=strtoint(edit1.Text);
Shape8.Pen.Width:=strtoint(edit1.Text);
Shape9.Pen.Width:=strtoint(edit1.Text);
end;

end.
