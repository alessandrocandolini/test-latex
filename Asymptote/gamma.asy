import graph;
size(320,200,IgnoreAspect);

bool3 branch(real x)
{
  static int lastsign=0;
  if(x <= 0 && x == floor(x)) return false;
  int sign=sgn(gamma(x));
  bool b=lastsign == 0 || sign == lastsign;
  lastsign=sign;
  return b ? true : default;
}

draw(graph(gamma,-3,5,n=3000,branch),heavyred);
 
scale(false);
//xlimits(-5,5);
ylimits(-15,15);
crop();

xaxis("$x$",BottomTop,LeftTicks);
yaxis("$\Gamma(x)$",LeftRight, RightTicks);

//label("$\Gamma(x)$",(1,2),heavyred);
