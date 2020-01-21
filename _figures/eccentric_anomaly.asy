unitsize(4cm);
draw(circle((0,0),1),linewidth(1pt)+dashed);
draw(ellipse((0,0),1,0.6),linewidth(1pt));
dot((0,0), L=Label("$O$",align=S));
dot((0.8,0), L=Label("$S$",align=S));
dot((-0.8,0), L=Label("$F'$",align=S));
dot((1,0), L=Label("$Q$",align=SE));
dot((0.6,0.48), L=Label("$P$",align=SW));
dot((0.6,0.8), L=Label("$P'$",align=NE));

draw((-1,0) -- (1,0),linewidth(0.5pt));
draw((0.6,0) -- (0.6,0.8) -- (0,0),linewidth(0.5pt));
draw((0.8,0) -- (0.6,0.48),linewidth(0.5pt));

draw(arc((0,0), 0.1, 0, aTan(4/3)), L=Label("$E$", position=MidPoint, align=E));

draw(arc((0.8,0), 0.1, 0, 180 - aTan(2.4)), L=Label("$\nu$", position=MidPoint, align=N));

draw((0.8,0) -- (0.6,0.8),linewidth(0.5pt)+dashed);

draw((0.65,0) -- (0.65,0.05) -- (0.6,0.05));