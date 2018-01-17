
% test the function
x = linspace(0,1,100);
y = sin(x);
fs = 100;

[h, t] = impulse_response(x,y,fs);
