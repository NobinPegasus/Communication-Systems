fc=input('Enter the freq of carrier Wave:');
fp=input('Enter the freq of Periodic Binary signal (Message):');
amp=input('Enter the amplitude (For Carrier & Binary Signal (Message):');
t=0:0.001:1; % For setting the sampling interval
c=amp.*sin(2*pi*fc*t);% For Generating Carrier Sine wave
subplot(3,1,1) %Plotting The Carrier wave
plot(t,c,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier Wave')
axis([0, 1, -5, 5])
m=amp/2.*square(2*pi*fp*t)+(amp/2);%For Generating Square wave message
subplot(3,1,2) %Plotting The Square Binary Pulse (Message)
plot(t,m,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
axis([0, 1, -1, 5])
w=c.*m; % The Shift Keyed Wave
subplot(3,1,3) %Plotting The Amplitude Shift Keyed Wave
plot(t,w,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Amplitide Shift Keyed Signal')

%Enter the freq of carrier Wave: 100
%Enter the freq of Periodic Binary signal (Message): 10
%Enter the amplitude (For Carrier & Binary Signal (Message): 4