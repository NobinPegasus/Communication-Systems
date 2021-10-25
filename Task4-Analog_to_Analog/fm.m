%2017331108
Fs=1000 %Sampling Frequency
t = 0:1/Fs:1; 
amp_m = input('Enter Amplitude (Message) = ');
amp_c = input('Enter Amplitude (Carrier) = ');
freq_M = input('Enter Message frequency = ');
freq_c = input('Enter Carrier frequency = ');
m = input('Enter Modulation Index = ');

msg = amp_m*sin(2*pi*freq_M*t);
subplot(3,1,1); 
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('Message ');

carrier = amp_c*sin(2*pi*freq_c*t);

%plotting carrier signal
subplot(3,1,2); 
plot(t,carrier);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

y = amp_c*sin(2*pi*freq_c*t+m.*cos(2*pi*freq_M*t));

%FM (Frequency Modulated) signal
subplot(3,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('FM Signal');

%Enter Amplitude (Message) = 5
%Enter Amplitude (Carrier) = 5
%Enter Message frequency = 10
%Enter Carrier frequency = 100
%Enter Modulation Index = 12