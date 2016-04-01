function [d, deq] = FlowConstraint(CK, T, K1, Theta, Alpha)
%----------------------------------------------------------
% PURPOSE: sets up the system of constraints k_{t+1}=\theta
% (k_t-c_t)^\alpha
%----------------------------------------------------------
% INPUTS: CK     : Tx2 matrix of C and K values
%                  at each t
%          T     : scalar time
%          K1    : stock of K at start of t = 1
%          Theta : CD parameter
%          Alpha : CD parameter
%----------------------------------------------------------
% OUTPUT:    d   : ineq constraint vector
%            deq : eq constraint vector
%----------------------------------------------------------

cap = CK(:, 2);
c   = CK(:, 1);
k   = [K1; cap];

for t = 1:T
    deq(t) = k(t+1) - Theta*(k(t) - c(t))^Alpha;
end
d   = [];

end