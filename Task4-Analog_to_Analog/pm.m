t = 0:0.01:1;                  
fm=1;
fc = 5;                        % carrier frequency
acm=1.5

%main signal
m = acm*sin(2*pi*fm*t);

%phase deviation constant
kp  = pi/2;                 

carrier = acm*cos(2*pi*fc*t);
modulated = acm*cos(2*pi*fc*t + kp*m);


% Plotting the signals
subplot(3,1,1)
plot(t,m,'b')
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title("Main Signal");
axis([0 1 -1.5 1.5]);
legend('Message');


subplot(3,1,2)
plot(t,carrier,'r')
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title("Carrier Signal");
axis([0 1 -1.5 1.5]);
legend('Carrier');


subplot(3,1,3)
plot(t,modulated,'k--')
axis([0 1 -1.5 1.5]);
xlabel('Time(seconds)');
ylabel('Amplitude(volt)');
title('Phase Modulated Signal');
legend('Modulated');

