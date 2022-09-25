exec('/home/baltazar/Documentos/Maestria/Semestre_2/CaosCuantico/RMT/scilab/flib.sci',-1)

N=200

//r=zeros(1,N*N-N);
xx=linspace(0,N*0.8,2*floor(sqrt(N)))


[H,ei]=Goe1(N);                   // matriz goe y eigenvalores
X=N*real(NBAR(floor(ei(N)+1),ei));// Evalua N(E)

k=1;
for i=floor(N*0.1):floor(N*0.9)   // quitamos el 10% de las extremos 
  for j=floor(N*0.1) :i
    if i~=j
      r(k)=X(i)-X(j)              // diferencias 
      k=k+1;
    end
  end
end


[indx,xh]=dsearch(r,xx);          // cuanta la frecuencia de r
                                  // en los intervalos xx

hprom=hprom/p

//plot(xx(2:2*floor(sqrt(N))),xh,'.k' )


