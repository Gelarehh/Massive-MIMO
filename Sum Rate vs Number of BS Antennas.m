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


