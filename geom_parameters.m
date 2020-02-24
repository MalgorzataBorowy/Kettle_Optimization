function [H,d,L,l] = geom_parameters(h,D,alfa)

H = 0.5*D*tand(alfa);
L = (0.5*D)/(cosd(alfa));
d = (2*(H-h))/(tand(alfa));
l = (0.5*d)/(cosd(alfa));

end