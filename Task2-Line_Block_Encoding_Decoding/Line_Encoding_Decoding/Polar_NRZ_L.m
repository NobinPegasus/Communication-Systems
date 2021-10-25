
data = [1 1 0 0 1];
n = length(data);

a2=[];
b2 = data(1:length(data))

a2(1:length(data)) = b2;
a2(n+1) = a2(n);

xs=0:length(a2)-1


x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(data(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end



subplot(2,2,1);
stairs(xs,a2,'r', 'linewidth', 2);
title('Data')
axis([0 length(y) -1 2])
xticks(0:1:length(a2))
legend("Data")
grid on

subplot(2,2,2);
plot(x,y, 'linewidth', 2);
axis([0,n,-2,2]);
title('Unipolar NRZ');
legend('data', 'Encoded data');
title('Polar NRZ L Encoding')
legend("Encoded Data")
grid on


subplot(2,2,[3,4]);
stairs(xs,a2,'r','linewidth', 2);
hold on;

plot(x,y, 'linewidth', 2)
axis([0,n,-2,2]);
title('polar NRZ L');
legend('Data', 'Encoded data');
hold off  
grid on;


%Decode
d = [];

for i=1:2:length(y)
  disp(i);
  if(y(i)==1)
    d=[d 0];
  else
    d=[d 1];
  end
end  
disp(d);
%d2=[];
%v2 = d(1:length(d))

%d2(1:length(d)) = v2;
%d2(5) = d2(4);
d(length(d)+1) = d(length(d));

%d(1) = d(2); 
xq=0:length(d)-1
figure(2)
stairs(xq,d,'r','linewidth',2)
axis([0, length(d), -1, 3]) 
%disp(data);

  

