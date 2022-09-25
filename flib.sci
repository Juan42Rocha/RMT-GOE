stacksize('max')

// v1 para crear matrices GOE de tamanio N
// Gaussian ortogonal Ensemble
function [H,ei]=Goe1(N)
  A=grand(N,N,'nor',0,1);
  
  Ht=tril(A,-1);
  H=Ht+Ht'+ A.*eye(N,N)*sqrt(2);
  ei=spec(H);
endfunction

// v2 para crear matrices GOE de tamanio N
// Gaussian ortogonal Ensemble
function [H,ei]=Goe2(N)
  A=grand(N,N,'nor',0,1);
  H=(A+A')/sqrt(2);
  ei=spec(H);
endfunction

// v3 para crear matrices GOE de tamanio N
// Gaussian ortogonal Ensemble
function [H,ei]=Goe3(N)
  H=grand(N,N,'nor',0,1);

  for i=1:N
    H(i,i)=H(i,i)*sqrt(2);
    for j=1:i 
      H(i,j)=H(j,i);
    end
  end 
  ei=spec(H);
endfunction


// funcion para evaluar acomulado
// de energias
function Nbar=NBAR(a,E)
  EE=E/a;
  Nbar=(asin(EE)+EE.*sqrt(1-EE.^2) +0.5*%pi)/%pi
endfunction

