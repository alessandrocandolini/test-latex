import graph;
size(320,130,IgnoreAspect);

real f(real x) {return log(x);}
pair F(real x) {return (x,f(x));}
real fp(real x) {return log(x+1);}
pair Fp(real x) {return (x,fp(x));}

dotfactor=7;

void subinterval(real a, real b)
{
  path g=box((a,f(a)),(b,0));
  path plot = graph(f,a,b);
  filldraw(box((a,0),(b,f(b))), brown);
  filldraw(graph(f,a,b)--(b,0)--(a,0)--cycle, lightgray);
}

int a=1, b=8;
  
 
 
int n=2;

for(int i=a; i <= b; ++i) {
  if(i < b) subinterval(i,i+1);
  if(i <= n) labelx(i);
  //dot(F(i));
}
draw(graph(f,a,b),deepblue);
draw(graph(fp,a-1,b),olive+dashed);

defaultpen(fontsize(10pt));

int i=n;
labelx("$\ldots$",++i);
labelx("$k$",++i);
//labely("$\log k$",log(i));
ytick("$\log{k}$", log(i));
yequals(log(i), xmin=0,xmax=i, dashed);
labelx("$k+1$",++i);
ytick("$\log{k+1}$", log(i));
yequals(log(i), xmin=0,xmax=i, dashed);
labelx("$\ldots$",++i);


xaxis("$x$",0,b+0.5, Arrow); 
//yaxis(Left,RightTicks); 
yaxis(Left,Arrow); 
arrow("$\log{x}$",F(i-1.5),NE,1.5cm,deepblue,Margin(0,0.5));
arrow("$\log{x+1}$",Fp(i-1.5),WNW,1.5cm,olive,Margin(0,0.5));
