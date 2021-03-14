import feynman;
import markers;
//import graph;


// set default line width to 0.8bp
//currentpen = linewidth(0.8);

// scale all other defaults of the feynman module appropriately
fmdefaults();

// define vertex and external points

real L = 50;

pair A = (-0.5*L,0);
pair B = (+0.75*L,0);

//pair xu = zl + L*dir(+120);
//pair xl = zl + L*dir(-120);

pair C = B + L*dir(+30);
pair D = B + L*dir(-45);

pair E = B + L*dir(0);


// draw propagators and vertices

drawPhoton(A--B);

drawFermion(B--C);
drawPhoton(B--D);

drawVertex(B);
label(Label("$e^{-}$"), B, N);
label(Label("$\gamma$"), A, W);
label(Label("$\gamma$"), D, SE);
label(Label("$e^{-}$"), C, NE);


// draw momentum arrows and momentum labels

label(Label("$\vec{p}_{\gamma}$",2RightSide), A--B);

//drawMomArrow(B--C, Relative(right));
label(Label("$\vec{p}_{e}'$",2LeftSide), B--C);

label(Label("$\vec{p}_{\gamma}'$",2RightSide), B--D);

draw(B--E, dashed);
markangle(Label("$\varphi$"),E,B,C, ArcArrow);
markangle(Label("$\vartheta$"),E,B,D, radius=-40, ArcArrow);


// draw particle labels

//label("$e^-$", xu, left);
//label("$e^+$", xl, left);

//label("$\mu^+$", yu, right);
//label("$\mu^-$", yl, right);
