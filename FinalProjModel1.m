clear all; close all;
 %% Model 1
a = 2; b=1; c = 2; m=2; n=2; p = 1;%parameters of the model
f = @(x,y) -a*x+b*y+c
g = @(x,y) m*x-n*y+p

Tfinal = 30;         %Final time
deltat = 0.01;        %time step
x(1) = 4; y(1) = 2;  %Initial x and y values

%% Euler loop
NFinal = round(Tfinal/deltat);

for i = 2:NFinal
    x(i) = x(i-1) + f(x(i-1),y(i-1))*deltat;
    y(i) = y(i-1) + g(x(i-1),y(i-1))*deltat;
end

%% Output
figure(1) %Phase portrait
plot(x,y)
hold on
plot((c*n+b*p)/(a*n-b*m), (c*m+p*a)/(a*n-b*m) ,'*')
plot(x(1),y(1),'o')

figure(2)
t = 0:deltat:Tfinal - deltat;
plot(t,x)
hold on
plot(t,y)
xlabel("t (Time in Years)")
ylabel("Arms Spending")
title("Arms Spending over Time")
legend("Country 1", "Country 2", location = "best")

%% Model 2
a = 2; b=2; c = 2; m=2; n=1; p = 1;%parameters of the model
f = @(x,y) -a*x+b*y+c
g = @(x,y) m*x-n*y+p

Tfinal = 30;         %Final time
deltat = 0.01;        %time step
x(1) = -3; y(1) = -5;  %Initial x and y values

%% Euler loop
NFinal = round(Tfinal/deltat);

for i = 2:NFinal
    x(i) = x(i-1) + f(x(i-1),y(i-1))*deltat;
    y(i) = y(i-1) + g(x(i-1),y(i-1))*deltat;
end

%% Output
figure(1) %Phase portrait
plot(x,y)
hold on
plot((c*n+b*p)/(a*n-b*m), (c*m+p*a)/(a*n-b*m) ,'*')
plot(x(1),y(1),'o')

figure(2)
t = 0:deltat:Tfinal - deltat;
plot(t,x)
hold on
plot(t,y)
xlabel("t (Time in Years)")
ylabel("Arms Spending")
title("Arms Spending over Time")
legend("Country 1", "Country 2", location = "best")