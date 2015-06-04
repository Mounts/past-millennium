uses dos,crt,graph;
const r=3;
dayst : array [0..6] of String[9] =('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
var g,m:integer;
 hod, mn, dn, dows : Word;
q,t,tv,o,h:real;
aa,gog,ww,hu:word;
yr,ar,gd,w:integer;
jy,ja,jg,jw:integer;
hh:longint;
daya,rt,daa,da:string[5];
p:pointer;
begin
g:=detect;initgraph(g,m,'');
SetLineStyle(0, $C3, 0);
t:=(3.141592653589/180);
tv:=(3.141592653589/(6*30));
o:=(3.141592653589/180);
h:=(2*3.141592653589/12);
q:=3.141592653589/5000;
rectangle(420,220,500,250);
line(470,220,470,250);
getmem(p,imagesize(420,220,500,250));
getimage(420,220,500,250,p^);
setcolor(green);
circle (320,239,78*r);
circle (320,239,78*r+5);
SetLineStyle(0, $C3, 3);
for yr:=1 to 60 do begin
if (yr/5)<>int(yr/5) then
line (320+trunc(sin(yr*6*t)*77*r),239-trunc(cos(6*yr*t)*77*r),320+trunc(sin(yr*6*t)*74*r),239-trunc(cos(6*yr*t)*74*r));
end;
setcolor(red);
for yr:=0 to 12 do begin
line (320+trunc(sin(yr*h)*77*r),239-trunc(cos(yr*h)*77*r),320+trunc(sin(yr*h)*72*r),239-trunc(cos(yr*h)*72*r));
end;
setcolor(white);
settextstyle(4,0,2);
for yr:=1 to 12 do begin
str(yr,rt);
outtextxy(315+trunc(sin(yr*h)*68*r),225-trunc(cos(yr*h)*68*r),rt);
end;

settextstyle(1,0,2);
SetLineStyle(0, $C3, 3);
while not keypressed do begin
GetTime(ww,gog,aa,hu);
GetDate(hod,mn,dn,dows);
str(dn,da);
ar:=aa;gd:=gog;w:=ww;hh:=hu*100;
if w>12 then w:=w-12;
{setcolor(4);
{milli}{line (320,239,320+trunc(sin(hh*6*q)*60*r),239-trunc(cos(6*hh*q)*60*r));
setcolor(black);
line (320,239,320+trunc(sin(hh*6*q)*60*r),239-trunc(cos(6*hh*q)*60*r));
{}
SetLineStyle(0, $C3, 0);
setcolor(white);
rectangle(420,220,500,250);
line(470,220,470,250);

outtextxy(423,222,dayst[dows]);
outtextxy(473,222,da);
if daa<>da then putimage(420,220,p^,0);

SetLineStyle(0, $C3, 3);
setcolor(white);
outtextxy(270,310,'Novamedia');
if ja<>aa then sound(10000);
setcolor(5);
if ja<>aa then begin
{sec}line (320,239,320+trunc(sin(ar*6*t)*60*r),239-trunc(cos(6*ar*t)*60*r));
setcolor(black);
line (320,239,320+trunc(sin((ar-1)*6*t)*60*r),239-trunc(cos(6*(ar-1)*t)*60*r));
end;
if ja<>aa then begin
setcolor(6);
{min}line (320,239,320+trunc(sin(gd*6*o)*55*r),239-trunc(cos(6*gd*o)*55*r));
setcolor(0);
line (320,239,320+trunc(sin((gd-1)*6*o)*55*r),239-trunc(cos(6*(gd-1)*o)*55*r));
end;
if ja<>aa then begin
setcolor(8);
{hour}line (320,239,320+trunc(sin(w*h)*40*r),239-trunc(cos(w*h)*40*r));
setcolor(0);
line (320,239,320+trunc(sin((w-1)*h)*40*r),239-trunc(cos((w-1)*h)*40*r));
end;
nosound;
if ja<>aa then sound(10000);
ja:=aa;jg:=gog;jw:=ww;
daa:=da;
{}
nosound;
end;
closegraph;
end.
