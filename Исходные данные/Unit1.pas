unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, CellGameBoard, CellBanks, Menus, StdCtrls,shellapi;

type
  TForm1 = class(TForm)
    board1: TCellGameBoard;
    btmpclbnk1: TBitmapCellBank;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Timer1: TTimer;
    Panel1: TPanel;
    img1: TImage;
    Label1: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure board1CellMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; Col, Row, X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}
      var ochk:integer;

procedure TForm1.N2Click(Sender: TObject);
begin
               Form3.close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var x,y,z:Integer;
begin
   for x:=0 to board1.colcnt-1 do
    for y:=0 to board1.rowcnt-1 do
    begin
    z:=Random(4);
      if z=0 then
      board1.Layers[0][x,y].State:=0;
      if z=1 then
      board1.Layers[0][x,y].State:=1;
      if z=2 then
      board1.Layers[0][x,y].State:=2;
      if z=3 then
      board1.Layers[0][x,y].State:=3;
            end;
            Timer1.Enabled:=True;
end;

procedure TForm1.board1CellMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; Col, Row, X, Y: Integer);

const d: array[1..8,1..2] of Integer =
      ((0,1),(1,0),(0,-1),(-1,0),(1,1),(-1,1),(1,-1),(-1,-1));

var i,ii,iii,iiii,iiiii: Integer;
    dx, dy,xx,yy,a,b,aa,z,x7,x4,i2,i3,i4,i5,i6,i7,i8,i9,i10,y4,o,st: Integer;
begin
     st:=0;
o:=0;
      for x:=0 to board1.colcnt-1 do
    for y:=0 to board1.rowcnt-1 do
    begin
     if board1.Layers[0][x,y].State>3   then
      o:=o+1;
    end;
    if o=0 then
    begin
        if board1.layers[0][col,row].state=0  then
                  board1.layers[0][col,row].state:=4 ;
                    if board1.layers[0][col,row].state=1  then
                  board1.layers[0][col,row].state:=5 ;
                  if board1.layers[0][col,row].state=2  then
                  board1.layers[0][col,row].state:=6 ;
                  if board1.layers[0][col,row].state=3  then
                  board1.layers[0][col,row].state:=7;
                  end;
                  if o=1 then
                  begin
                     if board1.layers[0][col,row].state=0  then
                  board1.layers[0][col,row].state:=4 ;
                    if board1.layers[0][col,row].state=1  then
                  board1.layers[0][col,row].state:=5 ;
                  if board1.layers[0][col,row].state=2  then
                  board1.layers[0][col,row].state:=6 ;
                  if board1.layers[0][col,row].state=3  then
                  board1.layers[0][col,row].state:=7;
                  end;
    if o=2 then
     begin

                  if board1.layers[0][col,row].state=0  then
                  board1.layers[0][col,row].state:=4 ;
                    if board1.layers[0][col,row].state=1  then
                  board1.layers[0][col,row].state:=5 ;
                  if board1.layers[0][col,row].state=2  then
                  board1.layers[0][col,row].state:=6 ;
                  if board1.layers[0][col,row].state=3  then
                  board1.layers[0][col,row].state:=7;
                  if  (Board1.layers[0][col,row].state=4)               then
  A:=4;
   if  (Board1.layers[0][col,row].state=5)          then
  A:=5;
   if  (Board1.layers[0][col,row].state=6)      then
  A:=6;
   if  (Board1.layers[0][col,row].state=7) then
  A:=7;
                   for i := 1 to 8 do
    begin
      dx := col+ d[i,1];
      dy := row + d[i,2];
      if  (dx >= 0) and (dx < 10) and (dy >= 0) and (dy < 10) and (Board1.layers[0][dx,dy].state=a) then
                                    begin


                                      st:=st+1;
        x4:=dx;
        y4:=dy;
        for i2 := 1 to 8 do
        begin
           dx := x4 + d[i,1];
      dy := y4 + d[i,2];
      if  (dx >= 0) and (dx < 10) and (dy >= 0) and (dy < 10) and (Board1.layers[0][dx,dy].state=a) then
        begin
                 
                   st:=st+1;
     end;
     end;
     end;
     end;
     if  st>1 then
     begin
        ochk:=ochk+1;
     z:=Random(4);
      if z=0 then
      board1.Layers[0][col,row].State:=0;
      if z=1 then
      board1.Layers[0][col,row].State:=1;
      if z=2 then
      board1.Layers[0][col,row].State:=2;
      if z=3 then
      board1.Layers[0][col,row].State:=3;

                   for i := 1 to 8 do
    begin
      dx := col+ d[i,1];
      dy := row + d[i,2];
      if  (dx >= 0) and (dx < 10) and (dy >= 0) and (dy < 10) and (Board1.layers[0][dx,dy].state=a) then
                                    begin


                                    z:=Random(4);
                                      if z=0 then
                                      ochk:=ochk+1;
      board1.Layers[0][dx,dy].State:=0;
      if z=1 then
      board1.Layers[0][dx,dy].State:=1;
      if z=2 then
      board1.Layers[0][dx,dy].State:=2;
      if z=3 then
      board1.Layers[0][dx,dy].State:=3;
        x4:=dx;
        y4:=dy;
        for i2 := 1 to 8 do
        begin
           dx := x4 + d[i,1];
      dy := y4 + d[i,2];
      if  (dx >= 0) and (dx < 10) and (dy >= 0) and (dy < 10) and (Board1.layers[0][dx,dy].state=a) then
        begin

        if (dx<>x4) and (dy<>y4) then begin
          ochk:=ochk+1;

          z:=Random(4);
        if z=0 then
                    board1.Layers[0][dx,dy].State:=0;
      if z=1 then
      board1.Layers[0][dx,dy].State:=1;
      if z=2 then
      board1.Layers[0][dx,dy].State:=2;
      if z=3 then
      board1.Layers[0][dx,dy].State:=3;
                  end;

     end;
     end;
      end;

    end;

      end;
      end;


    if o=2 then
    begin
        for x:=0 to board1.colcnt-1 do
    for y:=0 to board1.rowcnt-1 do
    begin
        if board1.layers[0][x,y].state=4  then
                  board1.layers[0][x,y].state:=0 ;
                    if board1.layers[0][x,y].state=5  then
                  board1.layers[0][x,y].state:=1 ;
                  if board1.layers[0][x,y].state=6  then
                  board1.layers[0][x,y].state:=2 ;
                  if board1.layers[0][x,y].state=7  then
                  board1.layers[0][x,y].state:=3;



      end;

       end;
       lbl1.Caption:=inttostr(ochk);
        end;
procedure TForm1.FormCreate(Sender: TObject);
begin
ochk:=0;
end;

procedure TForm1.N1Click(Sender: TObject);
var x,y,z:integer;
begin
ochk:=0;
  for x:=0 to board1.colcnt-1 do
    for y:=0 to board1.rowcnt-1 do
    begin
    z:=Random(4);
      if z=0 then
      board1.Layers[0][x,y].State:=0;
      if z=1 then
      board1.Layers[0][x,y].State:=1;
      if z=2 then
      board1.Layers[0][x,y].State:=2;
      if z=3 then
      board1.Layers[0][x,y].State:=3;
            end;
            lbl1.Caption:=inttostr(ochk);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
ShellExecute(0,PChar('open'),PChar('Справка.chm'),nil,nil,SW_SHOW);
end;

end.
