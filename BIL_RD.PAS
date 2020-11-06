Program Ts;
uses Graph,crt,tetr;
type mas=array[1..100]of word;
     kk=array [1..200,1..2] of word;
var
  Gd, Gm: Integer;
  Radius,v,m,ss,ti,tt,j,k,i,ii,x,y,pol,max,min:word;c:char;d:boolean;
  jj:mas; qq:integer;
       sas:boolean;xw:kk;ll:array [1..200] of boolean;
       tef:array[1..5,1..2] of word;
      vas,kor:array [1..5] of byte;mi,maxi,name:string;
      h,vom,kel,kol,kub,ur,p,mm,lo,maxum,der,de:byte;term:real;
procedure en(r,u:word);
var a,b:integer;
begin
     setcolor(5);
     circle(x,y,15);
     setfillstyle(1,5);
     floodfill(x+10,y+10,5);
     for a:=1 to 15 do delay(500);
     setcolor(1);
     circle(x,y,15);
     setfillstyle(1,1);
     floodfill(x+10,y+10,1);
end;
begin
     Gd := Detect;
  InitGraph(Gd, Gm, 'c:\bp\bgi');
  if GraphResult <> grOk then
    Halt(1);i:=300;j:=300;
    setbkcolor(1);putpixel(i+16,j+16,6);
    max:=60;min:=170;putpixel(max,min-16,6);
    term:=(i-max)/(j-min);ii:=0;
    repeat inc(ii);
    {j:=round(i/term);}
    x:=i-ii;y:=j-round(ii/term);
    putpixel(x+16,y+16,6);
    en(5,1);
    if keypressed then c:=readkey;
    until (c='q') or (i-ii<=1);
    readln;
    closegraph;
end.