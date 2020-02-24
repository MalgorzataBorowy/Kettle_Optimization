function dTdt = energy_balance(t,T,flag,m,S,w)

global efficiency alfa_1 alfa_2 lambda T_ext U I cp

dTdt = (efficiency*U*I - S*(1/(1/alfa_1+w/lambda+1/alfa_2))*(T-T_ext))/(cp*m);


end