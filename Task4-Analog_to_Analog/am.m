%2017331108
amp_c=2; %carrier amplitude
freq_c=0.5; %carrier frequency
amp_m=.5; 
freq_m=.05; 
Fs=100; %Sampling Frequency

ka=1;%Amplitude Sensitivity

t=[0:1/Fs:50];
ct=amp_c*cos(2*pi*freq_c*t);
mt=amp_m*cos(2*pi*freq_m*t); 
AM=ct.*(1+ka*mt);

subplot(3,1,1);
plot(mt);
ylabel('Message signal');

subplot(3,1,2); 
plot(ct);
ylabel('Carrier Signal');

subplot(3,1,3); 
plot(AM);
ylabel('AM signal');

