unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls,shellapi;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    img1: TImage;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm2.N1Click(Sender: TObject);
begin
Form3.close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.Hide;
Form1.show;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
ShellExecute(0,PChar('open'),PChar('Справка.chm'),nil,nil,SW_SHOW);
end;

procedure TForm2.N2Click(Sender: TObject);
begin
Form2.Hide;
Form1.show;
end;

end.
