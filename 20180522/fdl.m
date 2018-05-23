clear;
[sig,fs] = audioread("C:/Users/Davide Nicetto/Desktop/octave/prova octave.wav");
L = length(sig);
sig = sig(:,1);
%sig = sin(2*pi*200*(1:L)'/fs);
dmax = 0.03;
Mmax = ceil(fs*dmax);
sig = [zeros(Mmax,1);sig];
L = length(sig);
A = Mmax/3;
freqv = 2;
s= A*sin(freqv*2*pi*(1:L)'/fs);

for k = (Mmax+1):L-Mmax
  M = floor(s(k));
  alpha = s(k)-M;
  y(k)= alpha*sig(k-M-1)+(1-alpha)*sig(k-M);
  endfor
  
  player = audioplayer (y,fs);
play(player);




