unit Tetr;
interface
procedure tanis(var a,b,c:byte;var s:string);
procedure go;
procedure champ(kk:string;t:integer;var oo:integer);
procedure ch(min:integer;name:string);
implementation
uses crt,graph;
procedure  tanis(var a,b,c:byte;var s:string);
var R,l,san,kor,h:Integer;g,g1,g2:set of char;sett:char;kom,ko:string;
begin
  g:=['1'..'5'];g1:=['4'..'9'];g2:=['0'..'9'];
  textbackground(2);
  clrscr;textcolor(15);
  r:=15;h:=5;
  gotoxy(r,2);writeln('Dlya izmenenie parametrov nazhmite cifru i <Enter>');
  gotoxy(10,h);textcolor(11);
  WriteLn('1: Dlya izmenenie chislo vertikalnih kubikov');gotoxy(10,h+2);
  WriteLn('2: Dlya izmenenie chislo gorizontalih kubikov');gotoxy(10,h+4);
  WriteLn('3: Dlya izmenenie imeni igroka');gotoxy(10,h+6);
  WriteLn('4: Dlya izmenenie Urovna slozhnosti');
  gotoxy(10,h+8);WriteLn('5: Exit');
  repeat textcolor(11);gotoxy(15,h+10);
  WriteLn(' <Enter>');gotoxy(15,h+10);
  repeat sett:=readkey;
  until sett in g;
  gotoxy(15,h+10);textcolor(11);Write(sett);readln;
  gotoxy(15,h+10);textcolor(2);Write(sett,' <Enter>');
  case sett of
  '1':begin textcolor(11);gotoxy(15,h+10);
            Write('Vvedite chislo ot 10..17 i nazh_te <Enter>');
            gotoxy(17,h+12);textcolor(11);Write('->');
            repeat gotoxy(19,h+12);textcolor(2);write(kom);
            textcolor(11);gotoxy(19,h+12);readln(kom);if (length(kom)=2) and
            (kom[1] in g2) and (kom[2] in g2) then
            val(kom,san,l) else begin san:=0;gotoxy(19,h+12);textcolor(2);write(kom);end;
            until (san>=10) and (san<=17);
            a:=san+1;
            textcolor(2);gotoxy(15,h+10);
            Write('Vvedite chislo ot 10..18 i nazh_te <Enter>');
            gotoxy(17,h+12);textcolor(2);Write('->');
            gotoxy(19,h+12);write(kom);
            end;
  '2':begin textcolor(11);gotoxy(15,h+10);
            Write('Vvedite chislo ot 4..10 i nazh_te <Enter>');
            gotoxy(17,h+12);textcolor(11);Write('->');
            repeat gotoxy(19,h+12);textcolor(2);write(kom);
            textcolor(11);gotoxy(19,h+12);readln(kom);
            if (length(kom)=2) and (kom[1] in g2) and (kom[2] in g2) then
            val(kom,san,l) else if (length(kom)=1) and (kom[1] in g2)then
            val(kom,san,l) else begin san:=0;gotoxy(19,h+12);textcolor(2);write(kom);end;
            until (san>=4) and (san<=10);
            b:=san;
            textcolor(2);gotoxy(15,h+10);
            Write('Vvedite chislo ot 4..10 i nazh_te <Enter>');
            gotoxy(17,h+12);textcolor(2);Write('->');
            gotoxy(19,h+12);write(kom);
            end;
  '3':begin textcolor(11);gotoxy(17,h+10);write('Vvedite imya igroka--> ');readln(s);
      textcolor(2);gotoxy(17,h+10);write('Vvedite imya igroka--> ',s);end;
  '4':begin textcolor(11);gotoxy(15,h+10);write('Vibirite uroven slozhnosti:');
            gotoxy(17,h+12);write('1:Legko');kor:=0;
            gotoxy(17,h+13);write('2:Srednie');
            gotoxy(17,h+14);write('3:Trudno');
            gotoxy(17,h+15);write('4:Ochen trudno');
            repeat textcolor(2);gotoxy(19,h+16);write('->',ko);
            textcolor(11);gotoxy(19,h+16);write('->');readln(ko);
            until (length(ko)=1) and (ko[1] in g) and (ko[1]<>'5');
            textcolor(2);gotoxy(19,h+16);write('->',ko);
            val(ko,c,l);
            textcolor(2);gotoxy(15,h+10);write('Vibirite uroven slozhnosti:');
            gotoxy(17,h+12);write('1:Legko');
            gotoxy(17,h+13);write('2:Srednie');
            gotoxy(17,h+14);write('3:Trudno');
            gotoxy(17,h+15);write('4:Ochen trudno');
            gotoxy(17,h+16);write('->');gotoxy(19,h+16);write(sett);
            end;
             end;
  until sett='5';
end;
procedure go;
type mas=record
     ati:string;
     och:integer;
     end;
var s,k:string;f:file of mas;a:array [1..10] of mas;
    i,code,n,j:integer;
begin
     clrscr;
     assign(f,'c:\champ.txt');
     reset(f);i:=0;
     for i:=1 to 10 do begin read(f,a[i]);
           writeln(a[i].ati,', ',a[i].och);
           end;
end;
procedure champ(kk:string;t:integer;var oo:integer);
type mas=record
     ati:string;
     och:integer;
     end;
var s,k:string;f:file of mas;a:array [1..10] of mas;
    ii,i,code,n,j:integer;
begin
     clrscr;
     assign(f,'c:\champ.txt');
     reset(f);i:=0;
     for i:=1 to 10 do begin read(f,a[i]);
           end;
     close(f);
     {if t>=a[1].och then begin champ:=true;
     for i:=2 to 10 do begin
     a[i].och:=a[i-1].och;a[i].ati:=a[i-1].ati;end;
     a[1].och:=t;a[1].ati:=kk;
     end else }j:=0;
     code:=0;
     if t>=a[10].och then
     repeat inc(j);
     if a[j].och<=t then begin
     for i:=10 downto j do begin
     a[i].och:=a[i-1].och;
     a[i].ati:=a[i-1].ati;end;
                             a[j].och:=t;a[j].ati:=kk;
                             oo:=j;
                             erase(f);
                             rewrite(f);
                             for ii:=1 to 10 do
                             write(f,a[ii]);close(f);
                             code:=1;
                             end;
     until code=1;
     end;
procedure ch(min:integer;name:string);
type mas=record
     ati:string;
     och:integer;
     end;
VAR  qq,i,r,j,x,gd,gm,k,y,m:integer;c:char;maxi,ma:string;
     aa:array [1..10] of mas;f:file of mas;
procedure en(r,u:word);
var a,b:integer;
begin
     if u=0 then begin
     setcolor(7);setfillstyle(1,7);floodfill(x+10,y+10,7);setcolor(7);
     line(x+2,y+2,x+21,y+2);line(x+2,y+2,x+2,y+21);end else begin
     setcolor(r);rectangle(x,y,x+23,y+23);setfillstyle(1,r);floodfill(x+10,y+10,r);
     if u=1 then setcolor(white) else setcolor(1);line(x+1,y+1,x+22,y+1);
     line(x+1,y+1,x+1,y+22);end;
end;
Begin
Gd := Detect;
  InitGraph(Gd, Gm, 'c:\bp\bgi');
randomize;
if (min<>0) then begin
          cleardevice;
          setbkcolor(1);
          setcolor(9);
          str(min,maxi);
          maxi:='Vi na '+maxi+' meste';
          setTextStyle(1, 0, 4);m:=0;k:=0;
          for i:=k to 25 do begin
          if 25*i<625 then begin x:=(25*i)+10;y:=m;
          en(random(14)+2,1); end;
          if 25*i<450 then begin y:=(25*i);x:=m+10;
          en(random(14)+2,1);end;
          if 25*i<625 then begin y:=450;x:=(25*i)+10;
          en(random(14)+2,1);end;
          if 25*i<450 then begin y:=(25*i);x:=610;
          en(random(14)+2,1);end;
          end;
          if min=1 then begin name:=name+' vi champion !!!';
          qq:=70; end else
           begin name:=name+' pozdravlaiu';qq:=70;end;
          settextstyle(2, 0 ,5);
          outtextxy(255,430,'AKTOBE 2006');
          assign(f,'c:\champ.txt');
          reset(f);m:=100;settextstyle(7, 0 ,3);
          for i:=1 to 10 do begin
          read(f,aa[i]);inc(m,25);str(aa[i].och,ma);
          case i of
          1:setcolor(14);
          2:setcolor(7);
          3:setcolor(8) else setcolor(15);end;
          outtextxy(320,m,aa[i].ati);
          outtextxy(500,m,ma);
          end; close(f);
          {setcolor(1);}
          j:=15;setTextStyle(4, 0, 5);
          if min<=3 then begin
          case min of
          1:j:=14;
          2:j:=7;
          3:j:=8 else j:=15;end;
          setcolor(j);
          str(min,ma);
          setTextStyle(4, 0, 5);
          outtextxy(150,100,ma);
          setTextStyle(4, 0, 8);
          outtextxy(100,250,'Mesto');
          repeat
          setcolor(1);
          outtextxy(qq,50,Name);
          for i:=1 to 20 do delay(5000);
          setcolor(j);
          outtextxy(qq,50,Name);
          for i:=1 to 15 do delay(10000);
          until keypressed; end else begin
          setcolor(15);
          outtextxy(qq,50,Name);
          str(min,ma);
          setTextStyle(4, 0, 30);
          outtextxy(150,100,ma);
          setTextStyle(4, 0, 8);
          outtextxy(100,250,'Mesto');
          c:=readkey;end;closegraph;end;
end;
end.
