t=0:.001:1; % For setting the sampling interval
fc=input('Enter frequency of Carrier Sine wave: ');
fm=input('Enter Message frequency : ');
amp=input('Enter Carrier & Message Amplitude(Assuming Both Equal):');
c=amp.*sin(2*pi*fc*t);% Carrier Signal
subplot(3,1,1)
plot(t,c,'linewidth',2) %Plotting Carrier Signal
xlabel('Time')
ylabel('Amplitude')
title('Carrier')
m=square(2*pi*fm*t);% Data signal
subplot(3,1,2)
plot(t,m,'linewidth',2)
xlabel('time')
ylabel('ampmplitude')
title('Message Signal')
axis([0, 1, -3, 3])
x=c.*m;
subplot(3,1,3) %Plotting PSK (Phase Shift Keyed) signal
plot(t,x,'linewidth',2)
xlabel('t')
ylabel('y')
title('PSK (Phase Shift Keyed) signal')
axis([0, 1, -5, 5])

%Enter the freq of carrier Wave: 65
%Enter the freq of Periodic Binary signal (Message): 10
%Enter the amplitude (For Carrier & Binary Signal (Message): 4
