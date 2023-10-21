unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    img1: TImage;
    tmr1: TTimer;
    tmr2: TTimer;
    pb1: TProgressBar;
    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.tmr1Timer(Sender: TObject);
begin
Form3.Hide;
form2.show;
tmr1.enabled:=false;
end;

procedure TForm3.tmr2Timer(Sender: TObject);
begin
pb1.Position:=pb1.Position+20;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
 pb1.Position:=0
end;

end.
