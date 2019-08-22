#include "SobolSeq16384N.h"
#include "mt19937arcok.h"
#include "k.h"

K sobolrand(K x){
 static long i=0;
 if(xt!=-KJ)
  R krr("type");
 K r=ktn(KF,x->j);
 SobolSeq16384N(i++,x->j,kF(r));
 R r;
}

K mtinit(K x){
 if(xt!=-KJ)
  R krr("type");
 init_genrand((unsigned long)x->j);
 R (K)0;
}

K mtrand1(K x){
 if(xt!=-KJ)
  R krr("type");
 K r=ktn(KF,x->j);
 r->n=0;
 for(J j=0;j<x->j;++j){
  F gv=genrand_real1();
  r=ja(&r,&gv);
 }
 R r;
}

K mtrand2(K x){
 if(xt!=-KJ)
  R krr("type");
 K r=ktn(KF,x->j);
 r->n=0;
 for(J j=0;j<x->j;++j){
  F gv=genrand_real2();
  r=ja(&r,&gv);
 }
 R r;
}

K mtrand3(K x){
 if(xt!=-KJ)
  R krr("type");
 K r=ktn(KF,x->j);
 r->n=0;
 for(J j=0;j<x->j;++j){
  F gv=genrand_real3();
  r=ja(&r,&gv);
 }
 R r;
}
