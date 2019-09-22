M = 4;
data = randi([0 M-1],1000,1);%generate random number between 0 and 3, for 1000 line 1 row 
txSig = pskmod(data,M,pi/M);
rxSig = awgn(txSig,20);
scatterplot(rxSig)
