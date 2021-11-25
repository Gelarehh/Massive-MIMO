# Sum Rate vs Number of BS Antennas 
## at SINR=0 dB, K=16

Figure.11 shows sum rate of K = 16 users as a function of number of base station antennas for 0 dB SINR using linear precoding in Massive MIMO.

The other curve again shows the sum rate but by using dirty-paper coding.

By comparing the two curves, it is received that the linear precoding used in Massive MIMO is highly competitive with the dirty-paper coding mandated by Shannon theory. 

A lower bound for linear precoding can be as the following:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C_{sum\,zf}>K\log_2({1+\frac{(M-K)\rho_d}{K}})" />

The Shannon limit is computed according to:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C_{sum\,down}=\sup_a\{\log_2{\det{(I_M+\rho_dG_dD_aG_d^H)}}\}," />
<img src="https://latex.codecogs.com/svg.latex?\small&space;a\geq0,I^Ta=1" />


# Matlab Codes
```matlab
%figure 11_Total spectral efficiency versus number of base station antennas for K ¼ 16 users and 0.0 dB SINR.
clear all
clc
K=16;
P=1;
j=0;
M=20:2:100;
A=K*log(1+(M-K)*P/K)/log(2);
plot(M,A)
hold on
for M=20:100;
        for i=1:M
            H=exprnd(0.25);
            j=j+H^2;
        end
    SumRate=K*log(1+(P./M)*j)/log(2);
    plot(M,SumRate,'r.','LineWidth',2,'MarkerSize',4)
    hold on
end
title('0 dB SINR,K=16')
xlabel('Number of BS antennas (M)')
ylabel('Sum Rate (bits/s/Hz)')
gtext('Lower Bound(ZF/CB)')
gtext('Shannon Limit(DPC)')
```
## Diagram
Result of simulations is shown in the diagram below.
![fig 11](https://user-images.githubusercontent.com/66460485/118352284-e2743600-b575-11eb-9ee8-3825ff5cd239.jpg)
