function [x,fval,exitflag,output,lambda,grad,hessian] = optimization(x0)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('fmincon');
%% Start point
x0 = [0.1 0.15 60 0.0005];
%% Modify options setting
options = optimoptions(options,'Display', 'off');
[x,fval,exitflag,output,lambda,grad,hessian] = ...
fmincon(@time_100C,x0,[],[],[],[],[],[],@constraints,options);
