if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

import graph;
import latin1;
unitsize(0.5cm);
limits((-25,-25),(25,25));
real L0(real t) {
  real tau = t/1000;
  return 280.4664567 + tau* (360007.6982779 + tau* (0.03032028 + tau* (1/49931 - tau* (1/15300 - tau/2000000))));
}
real epsilon0(real t) {
  real centuries = t/100;
  return ( 84381.448 + centuries * (-46.8150 + centuries* (-0.00059 + centuries * 0.001813) ) )/3600;
}
real deltaPsi(real Omega, real L, real L1) {
  return (-17.20 * sin(radians(Omega)) - 1.32 * sin(radians(2*L)) - 0.23 * sin(radians(2*L1)) + 0.21 * sin(radians(2*Omega)))/3600;
}
real deltaEpsilon(real Omega, real L, real L1) {
  return (9.20 * cos(radians(Omega)) + 0.57 * cos(radians(2*L)) + 0.10 * cos(radians(2*L1)) - 0.09 * cos(radians(2*Omega)))/3600;
}
real eot(real epsilon, real L0, real ecc, real M) {
  
  real y = (tan(radians(epsilon/2)))^2;

  real E = y * sin(radians(2*L0)) - 2 * ecc * sin(radians(M)) + 4 * ecc * y * sin(radians(M)) * cos(radians(2*L0)) - 0.5 * y * y * sin(radians(4*L0)) - 5/4 * ecc * ecc * sin(radians(2*M));
  
  return degrees(E)*4;
}
real decl(real longitude, real epsilon) {
  return degrees(asin( sin(radians(epsilon)) * sin(radians(longitude)) ));
}
pair analemma(real t){
  real centuries = t/100;
  real L0 = L0(t);
  real L1 = 218.3165 + 481267.8813 * centuries;
  real Omega = 125.04452 + centuries * (-1934.136261 + centuries*(0.0020708 + centuries/450000));
  real epsilon = epsilon0(t) + deltaEpsilon(Omega, L0, L1);
  real ecc = 0.016708634 - 0.000042037 * centuries - 0.0000001267*centuries*centuries;
  real M = 357.52911 + 35999.05029 * centuries - 0.0001537*centuries*centuries;

  real C = (1.914602 - 0.004817 * centuries - 0.000014 * centuries * centuries) * sin(radians(M)) + (0.019993 - 0.000101 * centuries) * sin(radians(2*M)) + 0.000289 * sin(radians(3*M));
  real longitude = L0 + C;

  real E = eot(epsilon, L0, ecc, M);

  return (E / 4, decl(longitude, epsilon));
}
draw(graph(analemma,0,1,1462),black);
string degreeSign(real x) {
return "$" + format(x) + "°$";
}
xaxis("$H/°$",BottomTop,LeftTicks());
yaxis("$\delta/°$",LeftRight,RightTicks());
