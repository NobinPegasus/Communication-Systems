%2017331108
%pkg load signal

%Binary Frequency Shift Keying

fc1=input('Enter the freq of 1st Sine Wave carrier:');
fc2=input('Enter the freq of 2nd Sine Wave carrier:');
fp=input('Enter the freq of Periodic Binary pulse (Message):');
amp=input('Enter the amplitude (For Both Carrier & Binary Pulse Message):');
amp=amp/2;
t=0:0.001:1; %Sampling interval
c1=amp.*sin(2*pi*fc1*t);%1st Carrier Sine wave
c2=amp.*sin(2*pi*fc2*t);%2nd Carrier Sine wave
subplot(4,1,1);
plot(t,c1,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 1 Wave')
subplot(4,1,2)
plot(t,c2,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 2 Wave')
m=amp.*square(2*pi*fp*t)+amp;%Generating Square wave message
subplot(4,1,3) 
plot(t,m,'linewidth',2) %Plotting The Square Binary Pulse (Message)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
axis([0, 1, -1, 5])

%Generating the modulated wave
for i=0:1000 
    if m(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end

%Plotting the modulated wave
subplot(4,1,4) 
plot(t,mm,'linewidth',2)
xlabel('Time')
ylabel('Amplitude')
title('Binary Frequency Shift Keying')

%Enter the freq of 1st carrier Wave: 10
%Enter the freq of 2nd carrier Wave: 40
%Enter the freq of Periodic Binary signal (Message): 5
%Enter the amplitude (For Carrier & Binary Signal (Message): 4
