input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(5)
save u,p;
u:=1cm;
path p[];

z.C=origin;
z.A=(-1,-1)*u;
z.B=z.A zscaled (0,1);

p1=z.A{z.A rotated 120}..{z.B rotated 60}z.B--z.C--cycle;

z.M=point .5 of p1;

draw p1;

draw z.C--z.M dashed evenly;

Dot z.A,z.B,z.C,z.M;

label.lft(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.top(btex $C$ etex, z.C);
label.bot(btex $M$ etex, z.M);

label.top(btex $c$ etex, point .35 of p1);
label.urt(btex $a$ etex, point 1.5 of p1);
label.ulft(btex $b$ etex, point 2.5 of p1);

endfig;

beginfig(10) 
save u,p;
u:=2cm;
path p[];

z.p0=(.3,0)*u;
z.p1=(1,0)*u;
z.p2=(2,0)*u;
z.p3=(3,0)*u;
z.p4=(4,0)*u;
z.p5=(4.7,0)*u;

p0=z.p0{up}..tension 2..z.p5{down}..tension 2..cycle;

p1=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p2=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p3=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;

draw p1 penhair;
draw p2 penhair;
draw p3 penhair;

draw p0;

Dot z.p1,z.p2,z.p3,z.p4;

label.bot(btex $p_1$ etex, z.p1);
label.bot(btex $p_2$ etex, z.p2);
label.bot(btex $p_3$ etex, z.p3);
label.bot(btex $p_4$ etex, z.p4);
label.llft(btex $x$ etex, .5[z.p1,z.p2]+(0,.7)*u);
label.llft(btex $z$ etex, .5[z.p2,z.p3]+(0,.7)*u);
label.llft(btex $y$ etex, .5[z.p3,z.p4]+(0,.7)*u);

endfig;

beginfig(20)
save u,p;
u:=2cm;
path p[];

z.p0=(.3,0)*u;
z.p1=(1,0)*u;
z.p2=(2,0)*u;
z.p3=(3,0)*u;
z.p4=(4,0)*u;
z.p5=(4.7,0)*u;

p0=z.p0{up}..tension 2..z.p5{down}..tension 2..cycle;

p100=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u;
p200=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u;
p300=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u;

p1=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p2=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p3=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;

draw p1;
draw p2 penhair;
draw p3;

p11= point 0 of p1{(2,1)}.. .4[z.p2,z.p3]{(up)} .. {(-1,0)}point .9 of p1;
p12= point .2 of p1{(1,0)}.. .3[z.p2,z.p3]{(up)} .. {(-1,0)}point .7 of p1;
p13= point .3 of p1{(1,0)}.. .2[z.p2,z.p3]{(up)} .. {(-1,0)}point .6 of p1;

p31= point 1 of p3{(-2,-1)}.. .6[z.p2,z.p3]{(down)} .. {(1,0)}point .1 of p3;
p32= point .8 of p3{(-1,0)}.. .7[z.p2,z.p3]{(down)} .. {(1,0)}point .3 of p3;

draw subpath (0,1) of p0 cutbefore p100 cutafter p300;
draw subpath (1,2) of p0 cutbefore p300 cutafter p100;

draw p11 penhair;
draw p12 penhair;
draw p13 penhair;

draw p31 penhair;
draw p32 penhair;

Dot z.p2,z.p3;


label.lft(btex $p_2$ etex, z.p2);
label.rt(btex $p_3$ etex, z.p3);

label.lft(btex $x$ etex, .5[z.p1,z.p2]);
label.llft(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);
label.rt(btex $y$ etex, .5[z.p3,z.p4]);
label(btex $s'(x)$ etex rotated 34, (-4,5)+point .2 of p11);
label(btex $s'(y)$ etex rotated -30, (4,5)+point 1.5 of p31);
label.top(btex $M$ etex, point .6 of p0);

endfig;

beginfig(21)
save u,p;
u:=2cm;
path p[];

z.p0=(.3,0)*u;
z.p1=(1,0)*u;
z.p2=(2,0)*u;
z.p3=(3,0)*u;
z.p4=(4,0)*u;
z.p5=(4.7,0)*u;

p0=z.p0{up}..tension 2..z.p5{down}..tension 2..cycle;

p100=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u;
p200=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u;
p300=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u;

p1=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p2=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p3=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;

p11= point 0 of p1{(2,1)}.. .4[z.p2,z.p3]{(up)} .. {(-1,0)}point .8 of p1
..(-1.4)[z.p2,z.p3]{(down)}
..point .3 of p1{(1,0)}.. .2[z.p2,z.p3]{(up)} .. point .5 of p1
..(-1.3)[z.p2,z.p3]{(up)}
.. {(1,0)}point .7 of p1.. .3[z.p2,z.p3]{(down)}.. point .2 of p1{(-1,0)}
..(-1.5)[z.p2,z.p3]{(up)}
.. {(2,1)}point 1 of p1;

p31= point 1 of p3{(-2,-1)}.. .6[z.p2,z.p3]{(down)} .. {(1,0)}point .2 of p3
..(2.4)[z.p2,z.p3]{(up)}
.. point .5 of p3.. .7[z.p2,z.p3]{(up)}..{(1,0)}point .8 of p3
..(2.5)[z.p2,z.p3]{(down)}
.. {(-2,-1)}point 0 of p3;


draw  p0;

draw p11 penhair;

draw p31 penhair;

clip currentpicture to p100--  reverse(p300)--cycle;

draw p1 penhair;
draw p2 penhair;
draw p3 penhair;


Dot z.p2,z.p3;

label.lft(btex $p_2$ etex, z.p2);
label.rt(btex $p_3$ etex, z.p3);

label.ulft(btex $x$ etex, .5[z.p1,z.p2]+(0,.12)*u);
label.llft(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);
label.rt(btex $y$ etex, .5[z.p3,z.p4]+(0,-.27)*u);
label(btex $s'(x)$ etex rotated 34, (-4,5)+point .2 of p11);
label(btex $s'(y)$ etex rotated -10, (4,5)+point 1.7 of p31);
label.top(btex $M$ etex, point .6 of p0);

endfig;

beginfig(30)
save u,p;
u:=2cm;
path p[];

z.p0=(.3,0)*u;
z.p1=(1,0)*u;
z.p2=(2,0)*u;
z.p3=(3,0)*u;
z.p4=(4,0)*u;
z.p5=(4.7,0)*u;

p0=z.p0{up}..tension 2..z.p5{down}..tension 2..cycle;

p1=.5[z.p1,z.p2]-(0,5)*u--.5[z.p1,z.p2]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p2=.5[z.p2,z.p3]-(0,5)*u--.5[z.p2,z.p3]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;
p3=.5[z.p3,z.p4]-(0,5)*u--.5[z.p3,z.p4]+(0,5)*u cutbefore subpath (1,2) of p0 cutafter subpath (0,1) of p0;

draw p1 penhair;
draw p2 penhair;
draw p3 penhair;

p11= point 0 of p1{(2,1)}.. .4[z.p2,z.p3]{(up)} .. {(-1,0)}point .8 of p1
..(-1.4)[z.p2,z.p3]{(down)}
..point .3 of p1{(1,0)}.. .2[z.p2,z.p3]{(up)} .. point .5 of p1
..(-1.3)[z.p2,z.p3]{(up)}
.. {(1,0)}point .7 of p1.. .3[z.p2,z.p3]{(down)}.. point .2 of p1{(-1,0)}
..(-1.5)[z.p2,z.p3]{(up)}
.. {(2,1)}point 1 of p1;

p31= point 1 of p3{(-2,-1)}.. .6[z.p2,z.p3]{(down)} .. {(1,0)}point .2 of p3
..(2.4)[z.p2,z.p3]{(up)}
.. point .5 of p3.. .7[z.p2,z.p3]{(up)}..{(1,0)}point .8 of p3
..(2.5)[z.p2,z.p3]{(down)}
.. {(-2,-1)}point 0 of p3;

draw  p0;

draw p11 penhair;

draw p31 penhair;


Dot z.p1,z.p2,z.p3,z.p4;

label.rt(btex $p_1$ etex, z.p1);
label.lft(btex $p_2$ etex, z.p2);
label.rt(btex $p_3$ etex, z.p3);
label.lft(btex $p_4$ etex, z.p4);

label.ulft(btex $x$ etex, .5[z.p1,z.p2]+(0,.12)*u);
label.llft(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);
label.rt(btex $y$ etex, .5[z.p3,z.p4]+(0,-.27)*u);
label(btex $s'(x)$ etex rotated 34, (-4,5)+point .2 of p11);
label(btex $s'(y)$ etex rotated -10, (4,5)+point 1.7 of p31);
label.top(btex $L$ etex, point .35 of p0);
label.top(btex $R$ etex, point .65 of p0);

endfig;

end
