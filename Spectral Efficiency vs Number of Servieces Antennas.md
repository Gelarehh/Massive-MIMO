# Analysis: Spectral Efficiency vs Number of Servieces Antennas at SINR= -6 dB, k = [16  32  64  128]

In figure.10 of the article, total spectral efficiency is plotted as a function of the number of antennas in the transmitter for k = [16  32  64  128]. 

It is assumed that transmitter has perfect CSI. Massive MIMO performance is computed as a capacity lower-bound for conjugate beamforming according to a formula derived in:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C_{sum\,cb}>K\log_2({1+\frac{M\rho_d}{K(1+\rho_d)}})" />

The red X's correspond to the dimensions, M = 4K. The point (M,K)=(64,16) yields a total spectral efficiency of 13.6 bits/s/Hz which is doubled for every simultaneous doubling of (M,K). 

The Point-to-Point MIMO performance is ergodic Shannon capacity according to following equation:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C=\log_2({I_K+\frac{\rho_d}{M}G_d^HG_d})" />
<img src="https://latex.codecogs.com/svg.latex?\small&space;\quad=\log_2({I_M+\frac{\rho_d}{M}G_dG_d^H})" />

# Matlab Codes
```Matlab
%figure 10_Total spectral efficiency versus number of base station antennas for K equal to 16, 32, 64, 128 users operating at a minus 6 dB SINR.
clear all
clc
p=10^(-0.6);
M=0:30:600;
for c=4:7
    k=2^c;
    Csumcb=k*log(1+M*p/(k*(1+p)))/log(2);
    plot(M,Csumcb,'LineWidth',1)
    hold on
end
%Specifying the effect of doubling the number of antennas of base statiions and the number od users simultaneously 
for a=4:7 
    M=2^(a+2);
    k=2^a;
    Csum=k*log(1+M*p/(k*(1+p)))/log(2);
    plot(M,Csum,'ro','LineWidth',5,'MarkerSize',2)
    hold on
end
xlabel('Number of Services Antennas')
ylabel('Total Spectral Efficiency (b/s/Hz)')
title('-6.0 dB SINR')
gtext('16 users')
gtext('32 users')
gtext('64 users')
gtext('128 users')
```
Result of simulations is shown in the diagram below.
![fig 10](https://user-images.githubusercontent.com/66460485/118352038-7c3ae380-b574-11eb-8598-56a7477362f3.jpg)
