# Simulations Analysis

In figure.10 of the article, total spectral efficiency is plotted as a function of the number of antennas in the transmitter for k = [16  32  64  128]. 

It is assumed that transmitter has perfect CSI. Massive MIMO performance is computed as a capacity lower-bound for conjugate beamforming according to a formula derived in:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C_{sum\,cb}>K\log_2({1+\frac{M\rho_d}{K(1+\rho_d)}})" />

The red X's correspond to the dimensions, M = 4K. The point (M,K)=(64,16) yields a total spectral efficiency of 13.6 bits/s/Hz which is doubled for every simultaneous doubling of (M,K). 

The Point-to-Point MIMO performance is ergodic Shannon capacity according to following equation:

<img src="https://latex.codecogs.com/svg.latex?\small&space;C=\log_2({I_K+\frac{\rho_d}{M}G_d^HG_d})" />
<img src="https://latex.codecogs.com/svg.latex?\small&space;\quad=\log_2({I_M+\frac{\rho_d}{M}G_dG_d^H})" />
