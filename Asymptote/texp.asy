import graph;
size(320,120, IgnoreAspect);

real f(real t, int n) {return (t**n) * exp(-t);}
real g(real t, int n) {return  f(n,n) * exp ( - ((t-n) ** 2)  / (2* n));}


typedef real realfcn(real);
realfcn F(int n) {
  return new real (real t) { 
    return f(t,n);
  };
};

typedef real realfcn(real);
realfcn Fapprox(int n) {
  return new real (real t) { 
    return g(t,n); 
  };
};

int n = 3;
real xmax = 4*n;

draw(graph(F(n),0,xmax),brown, "$t^{n}\exp{-t}$");
draw(graph(Fapprox(n),-n,xmax),deepblue+dashed, \
    "$\cramped{n^{n} \exp{-n} \exp{-\frac{(t-n)^{2}}{2n}}}$");

xaxis("$t$", Arrow);
yaxis(Arrow);
xequals(n, ymin=0,ymax=f(n,n), dashed);
xtick("$n+\sqrt{n}$", n+sqrt(n));
xtick("$n-\sqrt{n}$", n-sqrt(n));
labelx("$n$", n);
ytick("$n^{n} \exp{-\frac{3}{2}n}$", g(0,n));
ytick("$n^{n} \exp{-n}$", f(n,n));
//arrow("$t^{n} \mathrm{e}^{-t} $",(n+sqrt(n), f(n+sqrt(n),n)),\
//  NE,1.5cm,brown,Margin(0,0.5));
//arrow("$n^{n} \mathrm{e}^{-n} \mathrm{e}^{-\frac{(t-n)^{2}}{2n}}$",\
//    (2*n, g(2*n,n)),ENE,1.5cm,deepblue,Margin(0,0.5));


attach(legend(linelength=20, p=invisible), N, 20ENE+120E); 
