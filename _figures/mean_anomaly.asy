unitsize(4cm);
draw(ellipse((0,0),1,0.6),linewidth(1pt));
dot((0.8,0), L=Label("$S$",align=S));
dot((-0.8,0), L=Label("$F'$",align=S));
dot((1,0), L=Label("$Q$",align=SE));
dot((0.6,0.48), L=Label("$P$",align=SW));

draw((-1,0) -- (1.8,0),linewidth(0.5pt));
draw((0.8,0) -- (0.6,0.48),linewidth(0.5pt));

draw(arc((0.8,0), 0.1, 0, 180 - aTan(2.4)), L=Label("$\nu$", position=MidPoint, align=N));

draw(circle((0.8,0),1),linewidth(1pt));

real angle = aTan(4/3) - 180/pi * 0.8 * 0.8;

pair R = (0.8 + Cos(angle), 0 + Sin(angle));

draw((0.8,0) -- R, linewidth(0.5pt)+dashed);

dot(R, L=Label("$R$", position=EndPoint, align=E));

dot((1.8, 0), L=Label("$Q'$", position=EndPoint, align=E));

draw(arc((0.8,0), 0.4, 0, angle), L=Label("$M$", position=MidPoint, align=E));