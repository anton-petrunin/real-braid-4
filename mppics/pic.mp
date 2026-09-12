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

beginfig(4)
save u,p;
u:=1cm;
path p[];

z.C=origin;
z.A=(-1,-1)*u;
z.B=z.A zscaled (0,1);

p1=z.A{z.A rotated 120}..{z.B rotated 60}z.B--z.C--cycle;

draw p1;

Dot z.A,z.B,z.C;

label.bot(btex $c$ etex, point .5 of p1);
label.urt(btex $a$ etex, point 1.5 of p1);
label.ulft(btex $b$ etex, point 2.5 of p1);

endfig;

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
label.rt(btex $y$ etex, .5[z.p3,z.p4]+(0,-.27)*u);
label(btex $s'(x)$ etex rotated 34, (-4,5)+point .2 of p11);
label(btex $s'(y)$ etex rotated -10, (4,5)+point 1.7 of p31);
label.top(btex $L$ etex, point .35 of p0);
label.top(btex $R$ etex, point .65 of p0);

clip currentpicture to .5[z.p2,z.p3]+(0,-5)*u--.5[z.p2,z.p3]+(0,5)*u--.5[z.p2,z.p3]+(-5,5)*u--.5[z.p2,z.p3]+(-5,-5)*u--cycle;

draw p2;
label.lrt(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);

endfig;

beginfig(31)
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
label.rt(btex $y$ etex, .5[z.p3,z.p4]+(0,-.27)*u);
label(btex $s'(x)$ etex rotated 34, (-4,5)+point .2 of p11);
label(btex $s'(y)$ etex rotated -10, (4,5)+point 1.7 of p31);
label.top(btex $L$ etex, point .35 of p0);
label.top(btex $R$ etex, point .65 of p0);

clip currentpicture to .5[z.p2,z.p3]+(0,-5)*u--.5[z.p2,z.p3]+(0,5)*u--.5[z.p2,z.p3]+(5,5)*u--.5[z.p2,z.p3]+(5,-5)*u--cycle;

draw p2;
label.llft(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);

endfig;

beginfig(40)
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


p31= point 1 of p3{(2,-1)}
..(2.3)[z.p2,z.p3]{(down)}
.. point .5 of p3
.. .7[z.p2,z.p3]{(down)}
.. {(2,-1)}point 0 of p3;

draw  p0;

draw p31 penhair;


Dot z.p1,z.p2,z.p3,z.p4;

label.rt(btex $p_1$ etex, z.p1);
label.lft(btex $p_2$ etex, z.p2);
label.rt(btex $p_3$ etex, z.p3);
label.lft(btex $p_4$ etex, z.p4);
label.lrt(btex $z$ etex, .5[z.p2,z.p3]+(0,.9)*u);
label.ulft(btex $x$ etex, .5[z.p1,z.p2]+(0,.12)*u);
label.top(btex $d^{\eps_1}(y)$ etex, point 2.4 of p31);


clip currentpicture to .5[z.p3,z.p4]+(0,-5)*u--.5[z.p3,z.p4]+(0,5)*u--.5[z.p3,z.p4]+(-5,5)*u--.5[z.p3,z.p4]+(-5,-5)*u--cycle;

draw p2;
label.rt(btex $y$ etex, .5[z.p3,z.p4]+(0,-.27)*u);


endfig;





vardef crossprod(expr u,v) =
  xpart u * ypart v - ypart u * xpart v
enddef;


% Counterclockwise circular arc from A to B around C.
vardef ccwarc(expr C,r,A,B) =
  save aa,bb,now,nxt,h,S,E,uS,uE,q;
  numeric aa,bb,now,nxt,h;
  pair S,E,uS,uE;
  path q;

  aa := angle(A-C);
  bb := angle(B-C);

  if aa < 0: aa := aa+360; fi;
  if bb < 0: bb := bb+360; fi;
  if bb < aa: bb := bb+360; fi;

  now := aa;
  S := A;
  q := S;

  forever:
    if bb-now > 90:
      nxt := now+90;
    else:
      nxt := bb;
    fi;

    if nxt = bb:
      E := B;
    else:
      E := C+r*dir(nxt);
    fi;

    h := (4r/3)*sind((nxt-now)/4)/cosd((nxt-now)/4);

    uS := unitvector(S-C);
    uE := unitvector(E-C);

    q := q
      ..controls (S+h*(uS rotated 90))
             and (E-h*(uE rotated 90))
      ..E;

    exitif nxt = bb;

    now := nxt;
    S := E;
  endfor;

  q
enddef;


vardef circlearc(expr C,r,A,B,s) =
  if s > 0:
    ccwarc(C,r,A,B)
  else:
    reverse ccwarc(C,r,B,A)
  fi
enddef;


% Optional controls.
numeric turn[];
numeric circleline_vertex_radius[];

% Default radius.
numeric circleline_radius;
circleline_radius := 5;


% P[0],...,P[n] are the original vertices.
% P[1],...,P[n-1] are replaced by circles.
vardef makecircleline(suffix P)(expr n,r) =
  save c,rr,tin,tout,D,U,T,d,delta,q,k,x,a,b;
  numeric c[],rr[],d,delta,x,a,b;
  pair tin[],tout[],D,U,T;
  path q;


  % Choose the radius at every intermediate vertex.
  for k=1 upto n-1:
    if known circleline_vertex_radius[k]:
      rr[k] := circleline_vertex_radius[k];
    else:
      rr[k] := r;
    fi;
  endfor;


  % Decide which way to turn around each circle.
  for k=1 upto n-1:

    if known turn[k]:

      if turn[k] >= 0:
        c[k] := 1;
      else:
        c[k] := -1;
      fi;

    else:

      x := crossprod(
             unitvector(P[k]-P[k-1]),
             unitvector(P[k+1]-P[k])
           );

      if x > 0:
        c[k] := 1;
      elseif x < 0:
        c[k] := -1;
      else:
        c[k] := 1;
      fi;

    fi;

  endfor;


  % Tangent from P[0] to the first circle.
  D := P[1]-P[0];
  d := abs D;
  U := D/d;

  a := rr[1]/d;
  b := sqrt(1-a*a);

  T := b*U-c[1]*a*(U rotated 90);

  tin[1] :=
    P[1]-c[1]*rr[1]*(T rotated 90);


  % Common tangents between consecutive circles.
  for k=1 upto n-2:

    D := P[k+1]-P[k];
    d := abs D;
    U := D/d;

    delta := c[k]*rr[k] - c[k+1]*rr[k+1];

    a := delta/d;
    b := sqrt(1-a*a);

    T := b*U+a*(U rotated 90);

    tout[k] :=
      P[k]-c[k]*rr[k]*(T rotated 90);

    tin[k+1] :=
      P[k+1]-c[k+1]*rr[k+1]*(T rotated 90);

  endfor;


  % Tangent from the last circle to P[n].
  D := P[n]-P[n-1];
  d := abs D;
  U := D/d;

  a := rr[n-1]/d;
  b := sqrt(1-a*a);

  T := b*U+c[n-1]*a*(U rotated 90);

  tout[n-1] :=
    P[n-1]-c[n-1]*rr[n-1]*(T rotated 90);


  % Assemble the path.
  q := P[0]--tin[1];

  for k=1 upto n-1:

    q := q &
      circlearc(P[k],rr[k],tin[k],tout[k],c[k]);

    if k < n-1:
      q := q & (tout[k]--tin[k+1]);
    fi;

  endfor;

  q := q & (tout[n-1]--P[n]);

  q
enddef;


% Allows:
%   circleline(z.a,z.b,z.c,...,z.m)
vardef circleline(text pts) =
  save Q,n,zz;
  pair Q[],zz;
  numeric n;

  n := 0;

  for zz = pts:
    Q[n] := zz;
    n := n+1;
  endfor;

  makecircleline(Q,n-1,circleline_radius)
enddef;


beginfig(50)
save u,p,n;
u:=1.4cm;
n=3;
path p[];

z.ll=(-10,-1)*u;
z.rr=(10,-2)*u;

z.a0=(0,0)*u;
z.a1=(0,2.4)*u;

z.c0=(2,0)*u;
z.c1=(1.8,1.4)*u;

z.v=(0,1)*u;
z.b0=(z.a0+z.a1+z.c0+z.c1)/4-z.v/2;
z.b1=(z.a0+z.a1+z.c0+z.c1)/4+z.v/2;

draw z.a0--z.a1 dashed evenly scaled .5 withcolor .5;
draw z.b0--z.b1 dashed evenly scaled .5 withcolor .5;
draw z.c0--z.c1 dashed evenly scaled .5 withcolor .5;

circleline_radius := 1.4;

for i=0  upto 2:
draw circleline(z.ll,(i/(2*3))[z.a0,z.a1],(i/(2*3))[z.c0,z.c1],z.rr) cutbefore ((-.5,-5)*u--(-.5,5)*u) cutafter ((2.5,-5)*u--(2.5,5)*u) pensemibold;
endfor

for i=0  upto 3:
draw circleline(z.ll,((3+i)/(2*3))[z.a0,z.a1],((3+i)/(2*3))[z.b0,z.b1],((3+i)/(2*3))[z.c0,z.c1],z.rr) cutbefore ((-.5,-5)*u--(-.5,5)*u) cutafter ((2.5,-5)*u--(2.5,5)*u) pensemibold;
endfor

for i=0  upto 2*n:
dOt (i/(2*n))[z.a0,z.a1],(i/(2*n))[z.b0,z.b1],(i/(2*n))[z.c0,z.c1];
endfor

label.top(btex $p_2$ etex, 1[z.a0,z.a1]);
label.top(btex $p_5$ etex, 1[z.b0,z.b1]+(3,0));
label.top(btex $p_7$ etex, 1[z.c0,z.c1]);

endfig;


beginfig(60);
save u,p;
u := 1.1cm;
path p[];

z.l0 = (0,0)*u;
z.l1 = (1,3)*u;
z.l2 = (.2,4)*u;
z.l3 = (2,4.4)*u;
z.l4 = (2.8,1.4)*u;
z.l5 = z.l4+whatever*(z.l1-z.l0) xscaled -1=(whatever,0);


circleline_radius := 1.4;
p1=circleline(z.l0,z.l1,z.l2,z.l3,z.l4,z.l5);
circleline_radius := 2.8;
p2=circleline(z.l2,z.l1,(x.l1+2.8,-.4*u));
p3=z.l3--(x.l3,-.3*u);

hatchoptions(withcolor .5);
hatchfill p1--point length p1 of p1..point length p3 of p3..point length p2 of p2..point 0 of p1--cycle  withcolor (60, 2mm, -.5bp);
draw p1 pensemibold;
draw p2;
draw p3;

dOt z.l1,z.l2,z.l3,z.l4;

label.lft(btex $p_2(1)$ etex, z.l1+(0,-1));
label.top(btex $p_5(1)$ etex, z.l2+(-6,0));
label.top(btex $p_7(1)$ etex, z.l3);
label.rt(btex $p_6(1)$ etex, z.l4+(0,2));
label.rt(btex $\tilde\ell(1)$ etex, .5[z.l3,z.l4]);
whitelabel.top(btex $L_1$ etex, .8[z.l0,z.l5]);
whitelabel.lft(btex $\sigma_5$ etex, (x.l1+2.8,1*u));
whitelabel.lft(btex $\sigma_7$ etex, (x.l3,1*u));


endfig;


beginfig(70);
save u,p;
u := 1cm;
path p[];


z.l1 = (-1.4,1)*u;
z.l2 = (0,1.8)*u;
z.l3 = (1.1,1.5)*u;
z.l4 = (1,.-.1)*u;
z.l5 = (-1,0)*u;
z.l0=.5[z.l1,z.l5]+unitvector(z.l1-z.l5) zscaled (0,2);

circleline_radius := 1.4;
circleline_vertex_radius[2] := 2.6;

p1= circleline(z.l0,z.l1,z.l2,z.l3,z.l4,z.l2,z.l5,z.l0);

draw p1 pensemibold;

dOt z.l1,z.l2,z.l3,z.l4,z.l5;

label.rt(btex $\ell$ etex, point 8.5 of p1);

endfig;


end
