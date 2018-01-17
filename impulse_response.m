function [ h,t ] = impulse_response( x, y, fs )
%impulse_response returns the impulse response of the system given the
%system input, x, and system output, y.
%   inputs: x, measured input signal
%           y, measured output signal
%           fs, sampling frequency of measurements
%   outputs:    h, calculated impulse response

[X,f] = fdomain(x,fs);
[Y,f] = fdomain(y,fs);
% fixed by Jingnan Shi, Jan. 19, 2018
H = Y./X;   % the calculated frequency response
[h,t] = tdomain(H,fs);
plot(t,h)
end

