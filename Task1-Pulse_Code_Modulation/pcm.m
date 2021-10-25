
%2017331108
%A=2, fm=3, fs=20, n=3
%pcm(A,fm,fs,n)
function f = sinu(A,fm,fs,n)
  %Create Sine wave
  t=0:1/(100*fm):1;
  x = A*sin(2*pi*fm*t);
  
  %sampling
  ts=0:1/fs:1;
  xs=A*sin(2*pi*fm*ts);
  
  
  
  %quantization
  xl=xs+A
  xl=xl/(2*A)
  level = (-1+2^n)
  xq = xl*level
  xq = round(xq)
  
  %encoding
  y=[]
  for i=1:length(xq)
    d=dec2bin(xq(i),n)
    y=[y double(d)-48];
  endfor
  
  
  
  
  figure('Name','Main Signal');
  plot(t,x,'linewidth',2)
  title('Sampling')
  xlabel('Time')
  ylabel('sin(x)')
  hold on;
  stem(ts,xs,'g', 'linewidth', 2)
  hold off
  legend('Signal','Sampled Signal');
  
  
  figure('Name','Quantized Signal');
  stem(ts,xq,'r', 'linewidth',2)
  title('Quantization')
  xlabel('Time')
  ylabel('Levels')
  legend('Quantized Signal')
  grid on;
  
   
  figure('Name','Encoded Signal');
  stairs(y, 'linewidth', 2);
  title('Encoding')
  xlabel('Bits')
  ylabel('Binary Signals')
  
  xticks(0:65)
  legend('Encoded Signal')
  axis([0 length(y) -1 2])
  xlim([0 65]);
  grid on;
  
  figure('Name','All in one');
 
  subplot(2,2,1);
  plot(t,x,'linewidth',2)
  title('Sampling')
  xlabel('Time')
  ylabel('sin(x)')
  hold on;
  stem(ts,xs,'g', 'linewidth', 2)
  hold off
  legend('Signal','Sampled Signal');
  grid on;
  
  

  subplot(2,2,2);
  stem(ts,xq,'r', 'linewidth',2);
  title('Quantization')
  xlabel('Time')
  ylabel('Levels')
  legend('Quantized Signal')
  grid on;  

  subplot(2,2,[3,4]);
  stairs(y, 'linewidth', 2);
  title('Encoding')
  xlabel('Bits')
  ylabel('Binary Signals')
  
  xticks(0:65)
  legend('Encoded Signal')
  axis([0 length(y) -1 2])
  xlim([0 65]);
  
  grid on;
  
  
end