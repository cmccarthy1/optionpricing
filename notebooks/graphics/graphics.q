/ Initialize matplotlib
plt:.p.import`matplotlib.pyplot

/ Subplot number genertor outputs and distributions
subplot:{[x;y;tx;ty;p]
 sub:plt[`:subplots]. 1 2;
 fig:sub[@;0];axs:sub[@;1];
 ax0:axs[@;0];ax1:axs[@;1];
 fig[`:set_figheight;7];
 fig[`:set_figwidth;15];
 ax0[hsym p]. $[`hist~p;(x;64);x];
 ax0[`:set_title]tx;
 ax1[hsym p]. $[`hist~p;(y;64);y];
 ax1[`:set_title]ty;
 plt[`:show][];}

/ Compare prx, rmse or log rmse for BS/MC/QMC prices for Asian/European Markets
prxerrplot:{[r;t]
 sub:plt[`:subplots]. 1 2;
 fig:sub[@;0];axs:sub[@;1];
 ax0:axs[@;0];ax1:axs[@;1];
 fig[`:set_figheight;7];
 fig[`:set_figwidth;15];
 {[r;t;a;m]
  r:select from r where mkt=m;
  if[b:`prx~t;a[`:plot][;;"k--";`label pykw`prx_bs]. r`npaths`prx_bs];
  {[t;a;r;l]a[`:plot][;;`label pykw l]. $[t~`log;log;]r`npaths,l
   }[t;a;r]each $[b;i.p;i.e];
  a[`:set_title]"_"sv(string[m];t:string[t],$[`log~t;"_rmse";()]);
  a[`:legend][`loc pykw"upper right"];
  a[`:set_xlabel]"npaths";
  a[`:set_ylabel]t;
  }[r;t]'[(ax0;ax1);`euro`asia];
 plt[`:show][];}

i.p:`prx_bb_sobol`prx_std_sobol`prx_std_rdm;
i.e:`rmse_bb_sobol`rmse_std_sobol`rmse_std_rdm;

/ Find right command for os - used for Brownian bridge demo
syscmd:$[string[.z.o]like"w*";"cls";"clear"]