%2017331108
data = [0 0 0 0 1 1 1 1 0 0 0 0]
data1 = data
%disp(length(data))
if(mod(length(data),4)==0)
  proc=1;
else
  b=mod(length(data),4)
  b=4-b
  for i=1:b
    data=[0 data]
  end
  %disp(b)
end

%disp(data);

k=[];

%Block Coding
for i=1:4:length(data)-3
  kai=data(i:i+3)

  disp(kai)

  if(kai==0000)
    k=[k 1 1 1 1 0];
  elseif(kai==0010)
    k=[k 1 0 1 0 0];
  elseif(kai==0011)
    k=[k 1 0 1 0 1];
  elseif(kai==0100)
    k=[k 0 1 0 1 0];
  elseif(kai==0101)
    k=[k 0 1 0 1 1];
  elseif(kai==0110)
    k=[k 0 1 1 1 0];
  elseif(kai==0111)
    k=[k 0 1 1 1 1];
  elseif(kai==1000)
    k=[k 1 0 0 1 0];
  elseif(kai==1001)
    k=[k 1 0 0 1 1];
  elseif(kai==1010)
    k=[k 1 0 1 1 0];
  elseif(kai==1011)
    k=[k 1 0 1 1 1];
  elseif(kai==1100)
    k=[k 1 1 0 1 0];
  elseif(kai==1101)
    k=[k 1 1 0 1 1];
  elseif(kai==1110)
    k=[k 1 1 1 0 0];
  elseif(kai=1111)
    k=[k 1 1 1 0 1];
  elseif(kai==0001)
    k=[k 0 1 0 0 1];
  end
  
end



%NRZ_I Line Coding
a2=[];
b2 = k(1:length(k))
n = length(k);

a2(1:length(k)) = b2;
a2(n+1) = a2(n);

xs=0:length(a2)-1


x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(k(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end


n2= length(data1);

an2=[];
bn2 = data1(1:length(data1))

an2(1:length(data1)) = bn2;
an2(n2+1) = an2(n2);

xns=0:length(an2)-1






subplot(2,2,1);
stairs(xns,an2,'g', 'linewidth', 2);
title('Data')
axis([0 length(y) -1 2])
xticks(0:1:length(a2))
legend("Data")
grid on


subplot(2,2,2);
stairs(xs,a2,'r', 'linewidth', 2);
title('Block Coding')
axis([0 length(y) -1 2])
xticks(0:1:length(a2))
legend("Block Enoding")
grid on



subplot(2,2,3);
plot(x,y, 'linewidth', 2);
axis([0,n,-2,2]);
title('Unipolar NRZ');
legend('data', 'Encoded data');
title('Polar NRZ L Encoding')
legend("Encoded Data")
grid on

plot(x,y, 'linewidth', 2)
axis([0,n,-2,2]);
title('polar NRZ L');
legend('Data', 'Encoded data');
hold off  
grid on;



%NRZ_I Decoding
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

d(length(d)+1) = d(length(d));


xq=0:length(d)-1

figure(2)
subplot(2,1,1);
stairs(xq,d,'r','linewidth',2)
axis([0, length(d), -1, 3]) 
grid on



k=[];

d3=d(1:15);

%Block DeCoding

for i=1:5:length(d3)-4
  kai3=d3(i:i+4)

  disp(kai3)
  
  if(kai==11110)
    k=[k 0 0 0 0];
  elseif(kai3 ==11110)
    disp("One")
    k=[k 0 0 0 0];  
  elseif(kai3==10101)
    k=[k 0 0 1 1];
    disp("One")
  elseif(kai3==01010)
    k=[k 0 1 0 0];
    disp("One")
  elseif(kai3==01011)
    k=[k 0 1 0 1];
    disp("One")
  elseif(kai3==01110)
    k=[k 0 1 1 0];
    disp("One")
  elseif(kai3==01111)
    k=[k 0 1 1 1];
    disp("One")
  elseif(kai3==10010)
    k=[k 1 0 0 0];
    disp("One")
  elseif(kai3==10011)
    k=[k 1 0 0 1];
    disp("One")
  elseif(kai3==10110)
    k=[k 1 0 1 0];
    disp("One")
  elseif(kai3==10111)
    k=[k 1 0 1 1];
    disp("One")
  elseif(kai3==11010)
    k=[k 1 1 0 0];
    disp("One")
  elseif(kai3==11011)
    k=[k 1 1 0 1];
    disp("One")
  elseif(kai3==11100)
    k=[k 1 1 1 0];
    disp("One")
  elseif(kai3==11101)
    k=[k 1 1 1 1];
    disp("One")
  elseif(kai3==01001)
    k=[k 0 0 0 1];
    disp("One")
  end
  %disp(k3)
  
end
%disp(k3)


n2= length(data1);

an2=[];
bn2 = data1(1:length(data1))

an2(1:length(data1)) = bn2;
an2(n2+1) = an2(n2);

xns=0:length(an2)-1



subplot(2,1,2);
stairs(xns,an2,'g', 'linewidth', 2);
title('Data')
axis([0 length(y) -1 2])
xticks(0:1:length(a2))
legend("Data")
grid on





