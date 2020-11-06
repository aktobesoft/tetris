Program Tetris;
uses Graph,crt,tetr;
type mas=array[1..100]of word;
     kk=array [1..200,1..2] of word;
var
  Gd, Gm: Integer;
  Radius,v,m,ss,ti,tt,j,k,ii,x,y,pol,max,min:word;c:char;d:boolean;
  jj:mas; qq:integer;sas:boolean;xw:kk;ll:array [1..200] of boolean;
  tef:array[1..5,1..2] of word;
  vas,kor:array [1..5] of byte;mi,maxi,name:string;
  i,h,vom,kel,kol,kub,ur,p,mm,lo,maxum,der,de:byte;
procedure en(r,u:word);
var a,b:integer;
begin
     if u=0 then begin
     setcolor(7);setfillstyle(1,7);floodfill(x+10,y+10,7);setcolor(7);
     line(x+2,y+2,x+21,y+2);line(x+2,y+2,x+2,y+21);end else begin
     setcolor(r);rectangle(x,y,x+23,y+23);setfillstyle(1,r);floodfill(x+10,y+10,r);
     if u=1 then setcolor(white) else setcolor(1);line(x+1,y+1,x+22,y+1);
     line(x+1,y+1,x+1,y+22);end;end;
procedure Tanis2;
var tan:char;ey:word;g:set of byte;g1:set of char;
begin
     setbkcolor(15);setcolor(1);SetTextStyle(1, 0, 10);
     OutTextXY(120, 100, 'TETRIS');setcolor(6);
     for k:=1 to 20 do writeln;SetTextStyle(1, 0, 3);
     kub:=9;kol:=18;ur:=0;name:='User';Outtextxy(50,440,' Nazhmite Probel dlya Izmenenia parametrov');
     tan:=readkey;
     case tan of
     #32:begin closegraph;tanis(kol,kub,ur,name);Gd := Detect;
  InitGraph(Gd, Gm, 'c:\bp\bgi');if GraphResult <> grOk then Halt(1);
  end;end;
end;
procedure tek;
var p,dd,aa,kkk:integer;yo:boolean;
begin
          aa:=0;
          dd:=jj[vom] mod kub;
          if dd=0 then dd:=jj[vom]-kub else dd:=jj[vom]-dd;
          for p:=dd+1 to dd+kub do
          if not (ll[p]) then inc(aa);
          if aa=kub then begin for p:=dd+1 to dd+kub do begin x:=xw[p,1];y:=xw[p,2];
                              en(5,0);ll[p]:=true;end;
          inc(lo);der:=dd+kub;
           end;

end;
procedure tek3;
var kkk,aa,p,dd:byte;
begin
     for p:=der downto maxum do begin
          if p-kub*lo<kub then begin if ll[p]=false then ll[p]:=true;
              x:=xw[p,1];y:=xw[p,2];en(5,0);end
                        else if (not (ll[p-kub*lo])) and (ll[p]) then begin ll[p]:=ll[p-kub*lo];{vas[p]:=5;{vas[p-5];;}
                                x:=xw[p,1];y:=xw[p,2];
                                         en(getpixel(xw[p-kub*lo,1],xw[p-kub*lo,2]),1)
                                         end else if (ll[p]=ll[p-kub*lo]) and (not (ll[p-kub*lo])) then begin
                                         x:=xw[p,1];y:=xw[p,2];en(getpixel(xw[p-kub*lo,1],xw[p-kub*lo,2]),1);end else
                                         if (ll[p-kub*lo]) and (not (ll[p])) then begin {vas[p]:=5;vas[p-5];}
                                         ll[p]:=true;
                                         x:=xw[p,1];y:=xw[p,2];
                                         en(5,0);end;end;
                                         maxum:=maxum+lo*kub;
end;
procedure tek2;
var wer:byte;
begin
     for wer:=2 to i do
     if jj[wer]=jj[1]-1 then jj[wer]:=jj[1]+kub else
     if jj[wer]=jj[1]+kub then jj[wer]:=jj[1]+1 else
     if jj[wer]=jj[1]+1 then jj[wer]:=jj[1]-kub else
     if jj[wer]=jj[1]-kub then jj[wer]:=jj[1]-1;
     end;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'c:\bp\bgi');
  if GraphResult <> grOk then
    Halt(1);
    tanis2;
    randomize;
    k:=75; pol:=0;maxum:=kub*kol-kub;
    for i:=1 to kub*kol do begin
    if i mod kub=1 then begin k:=175;inc(pol,25);end;
    if i<=(kub*kol)-kub then ll[i]:=true else ll[i]:=false;
       k:=k+25;
       xw[i,1]:=k;
       xw[i,2]:=pol;
       end;k:=8;kel:=random(4)+1;
    repeat
          kor[1]:=random(14)+1;
    until kor[1]<>7;
    vom:=2;
    while vom<=kel do begin
          kor[vom]:=random(14)+1;h:=0;
          for ss:=1 to vom-1 do
          if (kor[vom]=kor[ss]) or (kor[vom]=7) or (kor[vom]=1)then h:=1;
          if h<>1 then inc(vom);
    end;
    {********* oinnin basi i - komp oilagan san yagni kubik sani ******}
    max:=0;min:=0;
    cleardevice;for vom:=1 to 15 do delay(10000);
    setbkcolor(1);
    setcolor(red);
    rectangle(197,23,200+kub*25+1,kol*25+2);
    setfillstyle(1,7);
    floodfill(210,27,red);i:=0;
    setTextStyle(4, 0, 3);
          mi:='0';maxi:='0';
          setcolor(15);
          outtextxy(80,200,mi);outtextxy(30,180,'Ochko :');
          outtextxy(80,300,maxi);outtextxy(30,280,'Scorest :');
    if ur<>0 then begin case ur of
    1:vom:=kub*13;
    2:vom:=kub*12;
    3:vom:=kub*9;
    4:vom:=kub*7;end;
    for i:=vom to kub*kol-kub do begin k:=random(2)+1;
    if k=1 then begin
    x:=xw[i,1];y:=xw[i,2];
    ll[i]:=false;
    repeat ss:=random(14)+1;
    until (ss<>7) and (ss<>1);
    en(ss,1);
    end;end;end;
    while c<>'n' do begin sas:=true;
    i:=kel;for vom:=1 to kel do vas[vom]:=kor[vom];
    kel:=random(5)+1;
    tef[1,1]:=200+((kub+2)*25);tef[1,2]:=50;
    case kel of
    2:begin tef[2,1]:=(200+(kub+2)*25)-25;tef[2,2]:=50;end;
    3:begin tef[2,1]:=(200+(kub+2)*25)-25;tef[2,2]:=50;tef[3,1]:=(200+(kub+2)*25)+25;tef[3,2]:=50;end;
    4:begin tef[2,1]:=(200+(kub+2)*25)-25;tef[2,2]:=50;tef[3,1]:=(200+(kub+2)*25)+25;tef[3,2]:=50;
    tef[4,1]:=(200+(kub+2)*25);tef[4,2]:=75;end;
    5:begin tef[1,2]:=75;tef[2,1]:=(200+(kub+2)*25)-25;tef[2,2]:=75;tef[3,1]:=(200+(kub+2)*25)+25;tef[3,2]:=75;
    tef[4,1]:=(200+(kub+2)*25);tef[4,2]:=100;
    tef[5,1]:=(200+(kub+2)*25);tef[5,2]:=50;
    end;
    end;
    repeat
    kor[1]:=random(14)+2;
    until (kor[1]<>7) and (kor[1]<>15);
    vom:=2;
    while vom<=kel do begin
    kor[vom]:=random(14)+2;h:=0;
    for ss:=1 to vom-1 do
    if (kor[vom]=kor[ss]) or (kor[vom]=7) or (kor[vom]=15)then h:=1;
    if h<>1 then inc(vom);
    end;
    for vom:=1 to kel do begin
    x:=tef[vom,1];y:=tef[vom,2];
    en(kor[vom],1);end;
    p:=round(kub/2);
    if kub mod 2 =0 then p:=p+1;
    jj[1]:=p;
    case i of
    2:begin jj[2]:=p-1;v:=1;end;
    3:begin jj[2]:=p-1;jj[3]:=p+1;v:=1;end;
    4:begin p:=p+kub;jj[1]:=p;jj[2]:=p-1;jj[3]:=p+1;jj[4]:=p+kub;v:=1;end;
    5:begin p:=p+kub;jj[1]:=p;jj[2]:=p-1;jj[3]:=p+1;jj[4]:=p+kub;v:=1;
    jj[5]:=p-kub;
    end;
    end;
    h:=0;
          for vom:=1 to i do
          if (not (ll[jj[vom]+kub])) then inc(h);
          if h>0 then begin for vom:=1 to i do begin
          x:=xw[jj[vom],1];y:=xw[jj[vom],2];
    en(vas[vom],1);end;
     setcolor(15);
     SetTextStyle(4, 0, 3);
     Outtextxy(1,25,'    Game over');
     Outtextxy(5,55,'Est zhilanie sigrat');
     Outtextxy(5,85,'   escho (y/n)?');
     c:='s';
     while (c<>'y') and (c<>'n') do c:=readkey;
     if c='y' then begin
     for vom:=1 to kub*kol-kub do
     if ll[vom]=false then begin ll[vom]:=true;
     x:=xw[vom,1];y:=xw[vom,2];en(5,0);end;
     setcolor(1);
     settextstyle(4,0,3);
     outtextxy(80,200,mi);outtextxy(80,300,maxi);setcolor(15);maxi:='0';mi:='0';
     max:=0;min:=0;setcolor(15);mi:='0';maxi:='0';
     outtextxy(80,200,mi);outtextxy(80,300,maxi);
     setcolor(1);setTextStyle(4, 0, 3);Outtextxy(1,25,'    Game over');
     Outtextxy(5,55,'Est zhilanie sigrat');Outtextxy(5,85,'   escho (y/n)?');
     setcolor(15);maxum:=kub*kol-kub;
     outtextxy(80,200,mi);outtextxy(80,300,maxi);
     end;end;
    {******************* kvadrat matr_ca kuru **********************}
    if tt<>5000 then tt:=5000;
    if min div 500>1 then tt:=tt-((min div 500)*500);
    while sas do begin ti:=0;
    for vom:=1 to i do begin
    x:=xw[jj[vom],1];y:=xw[jj[vom],2];
    en(vas[vom],1);end;{c:='';}
    for ii:=1 to 20 do begin
    {*********************** Basyluin Tekseru *************************}
                       {if ii mod 10=0 then ti:=0;}
                       if keypressed then
                               begin c:=readkey;
                               if (c=#77) or (c=#75) or (c=#113) or (c=#72)
                               or (c=#32) or (c=#80)
                               then begin
    {*********************** Kansha Kubik ekenin tekseru *****************}
    {************ max-on zhak ahetki ***** min-sol zhal shetki ***********}
                               h:=0;k:=0;
                            case c of
                                    {********* Onga ***********}
                                    #77:begin h:=0;for vom:=1 to i do
                                    if (ll[jj[vom]+1]) and (jj[vom] mod kub<>0)then inc(h);
                                    if h=i then begin k:=1;
                                            for vom:=1 to i do begin
                                             x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);jj[vom]:=jj[vom]+1;end;
                                            end;end;
                                    {********* Solga *********}
                                    #75:begin h:=0;for vom:=1 to i do
                                    if (ll[jj[vom]-1]) and (jj[vom] mod kub<>1) then inc(h);
                                    if h=i then begin k:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);jj[vom]:=jj[vom]-1;end;end;end;
                                    {****** Probel ***********}
                                    #72:if (i<>1) then
                                    case i of
                                        4:case v of
                                        1:begin h:=1;v:=2;
                                        for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;tek2;
                                            end;
                                        2:if (ll[jj[1]-1]) and (jj[1] mod kub<>1) then begin h:=1;
                                        v:=3;
                                        for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;tek2;
                                            end;
                                        3:if ll[jj[1]+kub] then begin h:=1;v:=4;
                                        for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;tek2;
                                            end;
                                        4:if (ll[jj[1]+1]) and (jj[1] mod kub<>0) then begin h:=1;
                                        v:=1;
                                        for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;tek2;end;end;
                                    3:case v of
                                      1:if (ll[jj[1]+kub]) and (ll[jj[1]-kub]) then begin h:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;tek2;v:=2;end;
                                      2:if (ll[jj[1]+1]) and (jj[1] mod kub<>0) and (ll[jj[1]-1]) and (jj[1] mod kub<>1) then
                                        begin h:=1;for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                            tek2;v:=1;end;
                                            end;
                                     2:case v of
                                      1:if (ll[jj[1]-4]) and (ll[jj[1]+kub]) then begin h:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                           tek2;v:=2;end;
                                      2:if (ll[jj[1]+1]) and (jj[1] mod kub<>0)then begin h:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                           tek2;v:=3;end;
                                      3:if (ll[jj[1]-kub]) then begin h:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                           tek2;v:=4;end;
                                      4:if (ll[jj[1]-1]) and (ll[jj[1]-kub+1]) and (jj[1] mod kub<>1) then begin h:=1;
                                           for vom:=1 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                            tek2;v:=1;end;
                                            end;
                                      5:begin h:=1;
                                            for vom:=2 to i do
                                            if jj[vom]=jj[1]-1 then vas[vom]:=getpixel(xw[jj[1]-kub,1],xw[jj[1]-kub,2])else
                                            if jj[vom]=jj[1]-kub then vas[vom]:=getpixel(xw[jj[1]+1,1],xw[jj[1]-1,2]) else
                                            if jj[vom]=jj[1]+1 then vas[vom]:=getpixel(xw[jj[1]+kub,1],xw[jj[1]+kub,2]) else
                                            if jj[vom]=jj[1]+kub then vas[vom]:=getpixel(xw[jj[1]-1,1],xw[jj[1]-1,2]);
                                            for vom:=2 to i do begin
                                            x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                            en(vas[vom],0);end;
                                            end;end;
{************************************* *************************************}
                                    #113:sas:=false;
                                    #32:begin c:='a';
                                              setcolor(15);
                                              SetTextStyle(4, 0, 3);
                                              Outtextxy(55,375,'Pause');
                                              repeat
                                              c:=readkey;
                                              until c=#32;
                                              setcolor(1);
                                              SetTextStyle(4, 0, 3);
                                              Outtextxy(55,375,'Pause');
                                              end;
                                    #80:tt:=200;
                                           end;
                                           if (k=1) or (h=1)then begin
                                           for vom:=1 to i do begin
                                           x:=xw[jj[vom],1];y:=xw[jj[vom],2];
                                           en(vas[vom],1);end;k:=0;h:=0;end;
                                     end;
                                 delay(3000);
                                 end else delay(tt);

                       end;
                       h:=0;
          if sas=false then c:='n';
          for vom:=1 to i do
          if not (ll[jj[vom]+kub])then inc(h);
          if h>0 then begin
          sas:=false;lo:=0;
          for vom:=1 to i do begin
          x:=xw[jj[vom],1];
          y:=xw[jj[vom],2];
          en(vas[vom],1);if jj[vom]<maxum then maxum:=jj[vom];
          ll[jj[vom]]:=false;end;
          pol:=jj[1];pol:=min div 500;
          der:=0;
          for vom:=i downto 1 do
          if (jj[vom]=jj[1]-kub) then begin
          tek;end;
          for vom:=i downto 1 do
          if (jj[vom]=jj[1]) then begin
          tek;end;
          for vom:=i downto 1 do
          if (jj[vom]=jj[1]+kub) then begin
          tek;end;
          if lo>0 then begin setcolor(1);
          setTextStyle(4, 0, 3);
          outtextxy(80,200,mi);min:=min+kub*10+lo*10-10;str(min,mi);
          setcolor(15);
          outtextxy(80,200,mi);
          if pol<>min div 500 then begin pol:=min div 500;
          setcolor(1);
          setTextStyle(4, 0, 3);
          outtextxy(80,300,maxi);str(pol,maxi);
          setcolor(15);
          outtextxy(80,300,maxi);end;
          if (ll[jj[2]]) and (ll[jj[3]]) and (i=3) and (not (ll[jj[1]])) then begin de:=der;der:=der-kub*lo;lo:=1;tek3;
          der:=de;delay(10000);delay(10000);tek3;end else begin
          delay(10000);delay(10000);
          tek3;end;
          end;
          for vom:=1 to kel do begin
    x:=tef[vom,1];y:=tef[vom,2];
    en(1,2);end;
           end else for vom:=1 to i do begin
        x:=xw[jj[vom],1];y:=xw[jj[vom],2];
        en(vas[vom],0);
        inc(jj[vom],kub);
        end;
        end;
          end;
          if (min<>0) then begin
          champ(name,min+ur*250,qq);
          ch(qq,name);
          end;
          CloseGraph;
end.