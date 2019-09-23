M = 4;
data = randi([0 M-1],1000,1);%generate random number between 0 and 3, for 1000 line 1 row 
txSig = pskmod(data,M,pi/M);

SNR_dB = 20%the bigger,the closer
SNR = 10^(SNR_dB/10)
Ps=1
Pn=Ps/SNR
z=sqrt(Pn/2)*(randn(size(txSig))+1i*randn(size(txSig)));
h=1
y=h*txSig+z

scatterplot(y);
size(txSig)%answer is [1000,1]
randn(size(txSig))%random in Gauss distribution