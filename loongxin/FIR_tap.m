%%
clear;
NUM=[ 0.0013    0.0017   -0.0025   -0.0040    0.0063    0.0095   -0.0138   -0.0196    0.0274    0.0384   -0.0549 -0.0830    0.1455    0.4477    0.4477    0.1455   -0.0830   -0.0549    0.0384    0.0274   -0.0196   -0.0138 0.0095    0.0063   -0.0040   -0.0025    0.0017    0.0013 ];
Fs=8000;%信号频率
N=length(NUM);
T=1/Fs;Tp=N*T;%采样时间
t=(0:N-1)/Fs;%t=0-2s

N_fft = 8000; % 频率点的数量，通常选择2的幂次方以利用FFT的效率  
% 计算频率向量（归一化）  
f = (0:N_fft-1)*(Fs/N_fft);  
% f=0:Fs/N:Fs*(N-1)/N;%步长f1/N
NUM1 = NUM*10000 ;
disp(NUM1);
% 使用 freqz 计算频率响应  
[H3, w3] = freqz(NUM, 1, N_fft, Fs);  

% w=2*pi*f/Fs;%归一化频  
plot(w3, 20*log10(abs(H3)));
title('实际滤波器幅频响应');
xlabel('频率/MHz');
ylabel('幅频/dB');

% load("Num.mat");
file_name="./FIR_CAU.dat" ;
fid =fopen(file_name,'w');
for i= 1: 27
    fprintf(fid ,'%d\n',NUM1(i));
end
fclose(fid);