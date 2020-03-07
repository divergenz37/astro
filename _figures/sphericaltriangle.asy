if(settings.render < 0) settings.render=4;
import graph;
unitsize(5cm);
draw(circle((0,0),1),black);
draw(ellipse((0,0),1,0.5),dashed+black+linewidth(0.5));
draw(rotate(45)*ellipse((0,0),1,0.5),dashed+black+linewidth(0.5));
draw(rotate(-45)*ellipse((0,0),1,0.5),dashed+black+linewidth(0.5));
dot(Label("$O$",align=S),(0,0) );
dot(Label("$A$",align=N),(0,sqrt(0.4)) );
dot(Label("$B$",align=SE),dir(-22.5)*sqrt((20 + 6*sqrt(2))/41) );
dot(Label("$C$",align=SW),dir(-157.5)*sqrt((20 + 6*sqrt(2))/41) );
draw(rotate(45)*yscale(0.5)*arc((0,0),1,90 - degrees(atan(0.5)),90 + degrees(atan(0.5 * tan(radians(67.5))))), L=Label("$b$", position=MidPoint, align=SE),linewidth(2));
draw(rotate(-45)*yscale(0.5)*arc((0,0),1,90 + degrees(atan(0.5)),90 - degrees(atan(0.5 * tan(radians(67.5))))), L=Label("$c$", position=MidPoint, align=SW),linewidth(2));
draw(yscale(0.5)*arc((0,0),1,-90 - degrees(atan(0.5 * tan(radians(67.5)))),-90 + degrees(atan(0.5 * tan(radians(67.5))))), L=Label("$a$", position=MidPoint, align=N),linewidth(2));