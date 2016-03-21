function LL = NormalML(theta,y,x)
%--------------------------------
% PURPOSE: calculate lik fn given unobserved stochastic error term dbed
% as normal db
%--------------------------------
% USAGE: LL : NormalML(theta,y,x)
% where: theta is the parameter vector [beta; sigma]
%        y is an N-by-1 dependent variable
%        x is an N-by-k independent variable
%--------------------------------
% OUTPUT: LL = log-likelihood value
%--------------------------------

%------ (1) Unpack stats --------
N    = length(y);
K    = size(x,2);

Beta = theta(1:K);
sig  = theta(K+1);

u    = y - x*Beta';

%------ (2) Likelihood function
LL   = -(N/2)*log(2*pi)-(N/2)*log(sig^2)-...
        (1/(2*sig^2))*(u'*u);
LL   = -LL;

end