buckling_load = 3.59245*(10^2); %Newtons
member_length = 0.3; %Metres 
t = 0.0032;
youngs_mod_member = 2.37*(10^9); %Pa
I_min = buckling_load*(member_length^2)/((pi^2)*youngs_mod_member)

syms x;
eqn = I_min == 1/12*((t*2 + x)^4 - x^4);
solx = solve(eqn, x, 'Real', true);
vpa(solx)




