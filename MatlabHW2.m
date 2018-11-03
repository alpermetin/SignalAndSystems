clc
clear all
close all
% 1.Soru (a&b) %
fs = 10000;
t = 0:1/fs:1.5;
x1 = 2*sawtooth(2*pi*50*t);
x2 = square(2*pi*50*t);
subplot(1,2,1)
plot(t,x1)
axis([0 0.2 -1.2 2.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Sawtooth Periodic Wave')
subplot(1,2,2)
plot(t,x2)
axis([0 0.2 1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
fs=100
f=1
t=0:1/fs:5
x=cos(2*pi*f*t)
plot(t,x)
grid on
hold on
% 1.Soru(c&d) %
f = 1
fs = 1000000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
x2 = rectpuls(t,10e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
% 1.Soru(e&f) %
fs = 200E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 2/fs : 7500/fs;        % signal evaluation time
w = 2e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ;     0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
subplot(2,1,1)
plot(t*1e9,yp);
axis([0 15 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
subplot(2,1,2)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%3.Soru %
clc
clear all
close all
fs=100
f=2 
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on
hold on
n=-100:1:10
y=sin(2*pi*n/20)
stem(n,y)
% 4. Soru Even/Odd %
clc
clear all
close all
t=0:001:1;
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
plot(t,g_odd)
grid on
hold on
% 5.Soru %
clc
clear all
close all
n=-100:100
y=(3.^abs(n)).*cos(2*pi*n/36)
sum(abs(y.^2))
% 6.Soru %
clc
clear all
close all
fs=200000 
f=1
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs1=50
t_samp1=0:1/10:5
y2=sin(2*pi*f*t_samp1)
subplot(2,1,2)
stem(t_samp1,y2)
% 7.Soru Araþtýrma Sorusu %
clc
clear all
close all
n = 0:2:10;
x = 4+cos(2*pi*n/24);
x0 = downsample(x,2,0);
x1 = downsample(x,2,1);
y0 = upsample(x0,2,0);
y1 = upsample(x1,2,1);
subplot(3,1,1)
stem(x,'Marker','none')
ylim([0.5 3.5])
title('Discrete Time Graphic')
hold on